--When someone updates the end_date of a loan in the Loans table...
--The trigger checks whether the new end_date is in the past (i.e., NEW.end_date < NOW()).
--If it is, the loan's status is automatically set to Completed.

CREATE OR REPLACE FUNCTION check_loan_status()
RETURNS TRIGGER 
LANGUAGE plpgsql	
AS $$
BEGIN
    IF NEW.end_date < NOW() THEN
        NEW.status := 'Completed';  -- ✅ Correct: directly change the value being updated
    END IF;
    RETURN NEW;
END;
$$ ;

CREATE TRIGGER update_loan_status
BEFORE UPDATE OF end_date ON Loans
FOR EACH ROW
EXECUTE PROCEDURE check_loan_status();
