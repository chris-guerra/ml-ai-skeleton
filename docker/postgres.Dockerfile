# In docker-compose.yml
services:
    postgres:
      image: postgres:13
      environment:
        POSTGRES_USER: your_username
        POSTGRES_PASSWORD: your_password
        POSTGRES_DB: your_dbname
      volumes:
        - postgres_data:/var/lib/postgresql/data
      ports:
        - "5432:5432"
  