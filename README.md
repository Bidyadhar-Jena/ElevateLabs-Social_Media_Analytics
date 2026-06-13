## Social Media Analytics Backend

## Overview

This project is a PostgreSQL-based Social Media Analytics Backend designed to simulate the core functionalities of a social media platform. It demonstrates database design, SQL querying, analytics, and optimization techniques using PostgreSQL.

The project manages users, posts, likes, comments, and followers while providing analytical insights into user engagement and platform activity.

---

## Features

- User Management
- Post Creation and Tracking
- Like System
- Comment System
- Follower Relationships
- Engagement Analytics
- SQL JOIN Operations
- Aggregate Queries using GROUP BY
- Views for reporting
- Triggers for data validation
- Indexes for query optimization
- Window Functions for rankings

---

## Database Tables

## Users

Stores user information.

- user_id
- username
- email
- join_date

## Posts

Stores posts created by users.

- post_id
- user_id
- content
- created_at

## Likes

Tracks likes on posts.

- like_id
- user_id
- post_id
- liked_at

## Comments

Stores comments on posts.

- comment_id
- user_id
- post_id
- comment_text
- commented_at

## Followers

Manages follower-following relationships.

- follower_id
- following_id
- followed_at

---

## Technologies Used

- PostgreSQL
- SQL
- pgAdmin / Online PostgreSQL Compiler
- GitHub

---

## Analytics Implemented

- Total posts per user
- Likes per post
- Comments per post
- Followers count
- Most active users
- User engagement score
- Top posts ranking using Window Functions
- User ranking based on followers

---

## How to Run

1. Open PostgreSQL using pgAdmin or an online PostgreSQL compiler.

2. Create a database named:
   
   social_media_analytics

3. Execute the SQL code from the "schema.sql" file.

4. Verify that all tables are created successfully.

5. Run the INSERT statements to populate sample data.

6. Execute the SELECT queries to view analytical results.

---

## Project Structure

Social-Media-Analytics-Backend/
│
├── schema.sql
└── README.md

---

## Learning Outcomes

Through this project, I gained hands-on experience in:

- Relational Database Design
- Creating and Managing Tables
- Using Primary and Foreign Keys
- Writing SQL Queries
- Performing JOIN Operations
- Using Aggregate Functions
- Implementing Views and Triggers
- Query Optimization with Indexes
- Applying Window Functions for Analytics

---

## Future Enhancements

- Hashtag Support
- Notifications System
- Saved Posts Feature
- Story Management
- REST API Integration
- Frontend Dashboard Development

---

## Author

Bidyadhar Jena
