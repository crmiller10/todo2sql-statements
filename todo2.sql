CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(500) NULL,
  priority INTEGER NOT NULL DEFAULT '1',
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);

-- 1. Write INSERT statements to insert 20 todos into the todos table, with a combination of priorities, created times, and completed times, with not all having a completed time.
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

-- 2. Write a SELECT statement to find all incomplete todos with priority 3.
-- Done
SELECT * FROM todos WHERE completed_at IS NULL AND priority = 3;

-- 3. Write a SELECT statement to find the number of incomplete todos by priority.
-- Done
SELECT * FROM todos WHERE completed_at IS NULL ORDER BY priority asc;

-- 4. Write a SELECT statement to find the number of todos by priority created in the last 30 (60) days.
-- *Note: I updated the 30 day interval to 60 days in order to account for the amount of time that has lapesed from when I initially created these todos and now.
SELECT * FROM todos WHERE created_at > CURRENT_DATE - INTERVAL 60 DAY ORDER BY priority asc;

-- 5. Write a SELECT statement to find the next todo you should work on. This is the todo with the highest priority that was created first.
SELECT * FROM todos ORDER BY priority desc, created_at asc LIMIT 1;

