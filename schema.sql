CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    join_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Posts (
    post_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(user_id),
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Likes (
    like_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(user_id),
    post_id INT REFERENCES Posts(post_id),
    liked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Comments (
    comment_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(user_id),
    post_id INT REFERENCES Posts(post_id),
    comment_text TEXT NOT NULL,
    commented_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Followers (
    follower_id INT REFERENCES Users(user_id),
    following_id INT REFERENCES Users(user_id),
    followed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Users (username, email)
VALUES
('Bidyadhar','bdj@gmail.com'),
('bob','bob@gmail.com'),
('charlie','charlie@gmail.com');

SELECT * FROM Users;

INSERT INTO Posts (user_id, content)
VALUES
(1, 'Learning PostgreSQL!'),
(2, 'My first social media backend project'),
(3, 'SQL is fun');

SELECT * FROM Posts;

INSERT INTO Likes (user_id, post_id)
VALUES
(2,1),
(3,1),
(1,2);

SELECT * FROM Likes;

INSERT INTO Comments (user_id, post_id, comment_text)
VALUES
(2,1,'Great post!'),
(3,1,'Very useful'),
(1,2,'Nice work');

SELECT * FROM Comments;

INSERT INTO Followers (follower_id, following_id)
VALUES
(2,1),
(3,1),
(1,2);

SELECT * FROM Followers;

SELECT u.username,
       COUNT(p.post_id) AS total_posts
FROM Users u
LEFT JOIN Posts p
ON u.user_id = p.user_id
GROUP BY u.username;
