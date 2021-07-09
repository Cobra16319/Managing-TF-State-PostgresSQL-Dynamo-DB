version: '3.1'

services:

  db:
    image: postgres:13.1-alpine
    restart: always
    ports:
      - 5432:5432
    environment:
      POSTGRES_PASSWORD: tfbackend123
      POSTGRES_DB: terraform_backend
