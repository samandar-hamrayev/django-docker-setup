# Django Docker Setup

A production-ready Django project template with **Docker**, **PostgreSQL**, and **Nginx** configured out of the box.

## What's Included

- Django application in a structured `app/` directory
- PostgreSQL database container
- Nginx reverse proxy (static files + request forwarding)
- Entrypoint script that auto-runs migrations on startup
- `docker-compose` for one-command startup

## Quick Start

### 1. Clone

```bash
git clone https://github.com/samandar-hamrayev/django-docker-setup.git
cd django-docker-setup
```

### 2. Configure environment

```env
SECRET_KEY=your-secret-key
DEBUG=False
POSTGRES_DB=app_db
POSTGRES_USER=app_user
POSTGRES_PASSWORD=your-password
```

### 3. Build and start

```bash
docker-compose up --build
```

Django is served at `http://localhost` via Nginx.

### 4. Create superuser

```bash
docker-compose exec app python manage.py createsuperuser
```

## Project Structure

```
django-docker-setup/
├── app/               # Django project
├── nginx/             # Nginx config
├── Dockerfile         # Python app image
├── docker-compose.yml
├── entrypoint.sh      # Runs migrations + starts Gunicorn
└── requirements.txt
```

## Tech Stack

- Python 3.x · Django 4+
- PostgreSQL
- Nginx
- Docker + docker-compose

## License

MIT — [Samandar Hamrayev](https://github.com/samandar-hamrayev)
