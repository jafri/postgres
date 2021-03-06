--
-- CREATE_TRANSFORM
--

-- Create a dummy transform
-- The function FROM SQL should have internal as single argument as well
-- as return type. The function TO SQL should have as single argument
-- internal and as return argument the datatype of the transform done.
-- pl/plpgsql does not authorize the use of internal as data type.
CREATE TRANSFORM FOR int LANGUAGE SQL (
    FROM SQL WITH FUNCTION varchar_transform(internal),
    TO SQL WITH FUNCTION int4recv(internal));

DROP TRANSFORM FOR int LANGUAGE SQL;
