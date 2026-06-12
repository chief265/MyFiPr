# CHIEF Blog

A small news/blog project with static HTML pages, an Express API, and MySQL storage.

## Setup

1. Install dependencies:

```bash
npm install
```

2. Create a `.env` file from `.env.example` and update the database password and JWT secret.

   If you use XAMPP/WAMP and your MySQL `root` user has no password, leave this line empty:

```bash
DB_PASSWORD=
```

   If your MySQL `root` user has a password, put the real password after `=`.

3. Create the database tables by running `database.sql` in MySQL.

4. Start the server:

```bash
npm start
```

Open `http://localhost:5000` in your browser. The server loads `ndex.html` as the home page.

## API

- `POST /api/auth/register`
- `POST /api/auth/login`
- `GET /api/posts`
- `GET /api/posts/:id`
- `GET /health`
