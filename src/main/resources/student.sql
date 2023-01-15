-- Create a Database
CREATE DATABASE student;

-- Use the database
\c student;

-- Type
CREATE TYPE gender AS ENUM('FEMALE', 'MALE','OTHER');

-- Create a Student Table
Create Table student(
  id BIGINT NOT NULL,
  name varchar(30) NOT NULL,
  dob DATE NOT NULL,
  gender GENDER NOT NULL,
  email varchar(255),
  address varchar(512),
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL
);

-- Dummy Entries
INSERT INTO student (id, name, dob, gender, email, address, created_at, updated_at)
VALUES
    (1, 'John Doe', '2000-01-01', 'MALE', 'johndoe@example.com', '123 Main St', now(), now()),
    (2, 'Jane Smith', '1995-05-01', 'FEMALE', 'janesmith@example.com', '456 Park Ave', now(), now()),
    (3, 'Jack Johnson', '1992-07-01', 'MALE', 'jackjohnson@example.com', '789 Elm St', now(), now()),
    (4, 'Jasmine Lee', '1989-02-01', 'FEMALE', 'jasminelee@example.com', '321 Oak St', now(), now()),
    (5, 'Jacob Brown', '1994-03-01', 'MALE', 'jacobbrown@example.com', '654 Pine St', now(), now()),
    (6, 'Emily Davis', '1997-06-01', 'FEMALE', 'emilydavis@example.com', '987 Cedar St', now(), now()),
    (7, 'Michael Garcia', '1990-09-01', 'MALE', 'michaelgarcia@example.com', '246 Birch St', now(), now()),
    (8, 'Samantha Martinez', '1993-12-01', 'FEMALE', 'samanthamartinez@example.com', '369 Maple St', now(), now()),
    (9, 'Matthew Rodriguez', '1998-01-01', 'MALE', 'matthewrodriguez@example.com', '159 Willow St', now(), now()),
    (10, 'Jessica Wilson', '1991-11-01', 'FEMALE', 'jessicawilson@example.com', '753 Sycamore St', now(), now());

