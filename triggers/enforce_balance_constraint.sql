CREATE OR REPLACE FUNCTION raise_exception()
RETURNS TRIGGER 
LANGUAGE plpgsql
AS $$
BEGIN
    RAISE EXCEPTION 'Account balance cannot be negative';
    RETURN NULL;  -- Return NULL to indicate that the operation should not proceed
END;
$$;


CREATE TRIGGER enforce_balance_constraint
BEFORE UPDATE ON Accounts
FOR EACH ROW
WHEN (NEW.balance < 0)
EXECUTE PROCEDURE raise_exception();

--e.g. UPDATE Accounts SET balance = -50 WHERE account_id = 101;
-- ERROR: Account balance cannot be negative

--Running it does two things in your PostgreSQL database:
--Creates a function (raise_exception) in the database - It stops the operation and gives an error message
--Creates a trigger (enforce_balance_constraint) that uses this function.

