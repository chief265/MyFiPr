CREATE DATABASE IF NOT EXISTS chief_blog;
USE chief_blog;

CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS posts (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  category VARCHAR(100) NOT NULL,
  excerpt TEXT,
  image_url VARCHAR(500),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO posts (title, category, excerpt, image_url) VALUES
('Concert for Bangladeshi Photos From the First-Ever Rock and Roll Benefit Show', 'Entertainment', 'A look back at a landmark benefit concert and the photos that captured its energy.', 'https://i.pinimg.com/1200x/f4/d8/0f/f4d80f99e0e3b242b40b200c2022699b.jpg'),
('The Intersection of Smartphone Technology and Music Appreciation', 'Technology', 'How mobile devices changed how listeners discover, collect, and enjoy music.', 'https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?w=600'),
('Empowering Healthcare Industry: How Virtual Reality Drives Business Progress', 'Business', 'Virtual reality is becoming a practical tool for training, planning, and patient care.', 'https://images.unsplash.com/photo-1556761175-5973dc0f32e7?w=600');
