
CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(500) NULL,
  priority INTEGER NOT NULL DEFAULT '1',
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES
('Clean car', 'Lorem clean car...', '1', '2017-08-27 04:05:06', NULL),
('Do laundry', 'Lorem do laundry...', '1', '2017-08-28 02:01:23', NULL),
('Clean room', 'Lorem clean room...', '3', '2017-08-27 14:06:11', NULL),
('Mow lawn', 'Lorem mow lawn...', '4', '2017-08-28 09:13:02', NULL),
('Get groceries', 'Lorem get groceries...', '5', '2017-08-27 06:25:43', '2017-08-28 10:23:54')
;

SELECT * FROM todos WHERE completed_at IS NULL;

SELECT * FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = '2017-08-28 12:00:00' WHERE id = 3;

DELETE FROM todos WHERE completed_at IS NOT NULL;
