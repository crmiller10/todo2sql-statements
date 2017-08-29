CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details TEXT NULL,
  priority INTEGER NOT NULL DEFAULT '1',
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES
('Clean car', 'Lorem clean car...', '1', '2017-08-27 04:05:06', NULL),
('Do laundry', 'Lorem do laundry...', '1', '2017-08-28 02:01:23', NULL),
('Clean room', 'Lorem clean room...', '3', '2017-08-27 14:06:11', NULL),
('Mow lawn', 'Lorem mow lawn...', '4', '2017-08-28 09:13:02', NULL),
('Get groceries', 'Lorem get groceries...', '5', '2017-08-27 06:25:43', '2017-08-28 10:23:54'),

('Take out trash', 'Lorem take out trash...', '3', '2017-08-28 09:13:02', NULL),
('Study', 'Lorem study...', '7', '2017-08-28 02:01:23', NULL),
('Wash car', 'Lorem wash car...', '9', '2017-08-27 14:06:11', NULL),
('Pay cell phone bill', 'Lorem pay cell phone bill...', '1', '2017-08-27 06:33:09', NULL),
('Pay electric bill', 'Lorem pay electric bill...', '8', '2017-08-27 04:05:06', '2017-08-28 11:20:44'),

('Item 11', 'Lorem item 10...', '3', '2017-08-27 06:25:43', '2017-08-28 10:23:54'),
('Item 12', 'Lorem item 12...', '5', '2017-08-28 02:01:23', NULL),
('Item 13', 'Lorem item 13...', '3', '2017-08-27 14:06:11', NULL),
('Item 14', 'Lorem item 14...', '2', '2017-08-28 09:13:02', NULL),
('Item 15', 'Lorem item 15...', '9', '2017-08-27 06:25:43', '2017-08-28 10:23:54'),

('Item 16', 'Lorem item 16...', '4', '2017-08-27 04:05:06', NULL),
('Item 17', 'Lorem item 17...', '10', '2017-08-28 02:01:23', '2017-08-28 10:23:54'),
('Item 18', 'Lorem item 18...', '11', '2017-08-27 14:06:11', NULL),
('Item 19', 'Lorem item 19...', '7', '2017-08-28 09:13:02', NULL),
('Item 20', 'Lorem item 20...', '6', '2017-08-27 06:25:43', '2017-08-28 10:23:54')
;
--
SELECT * FROM todos WHERE completed_at IS NULL AND priority = 3;
--
SELECT * FROM todos WHERE completed_at IS NULL ORDER BY priority;


SELECT * FROM todos WHERE completed_at IS NOT NULL;

SELECT * FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = '2017-08-28 12:00:00' WHERE id = 3;

DELETE FROM todos WHERE completed_at IS NOT NULL;
