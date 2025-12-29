-- execute CRUD operations (create, read, update, delete)
-- make sure demo_schema is the schema in use
USE demo_schema;

-- check rows in user table
SELECT * FROM user;

-- insert a new user (create)
INSERT INTO user (user_id, username, email, password_hash)
VALUES (4, 'raj_chawanda', 'raj_chawanda@outlook.com', 'hashed_password_4');

-- insert a new user_profile (create)
INSERT INTO user_profile (profile_id, user_id, first_name, last_name, address)
VALUES (4, 4, 'Raj', 'Chawanda', '3042 Lower Fortnum Way, Salt Lake City, UT 84105');

-- retrieve all users and their corresponding user profiles (read)
SELECT user.*, user_profile.*
FROM user
JOIN user_profile ON user.user_id = user_profile.user_id;

-- update the email of a user (update)
UPDATE user
SET email = ' raj_chawanda@hotmail.com '
WHERE user_id = 4;

-- update the address of a user profile (update)
UPDATE user_profile
SET address = '1524 West 3700 South, Salt Lake City, UT 84105'
WHERE user_id = 4;

-- delete a user profile (delete)
DELETE FROM user_profile
WHERE user_id = 4;

-- delete a user (delete)
DELETE FROM user
WHERE user_id = 4;
