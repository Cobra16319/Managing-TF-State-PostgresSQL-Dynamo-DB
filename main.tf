terraform {
  backend "pg" {
    conn_str = "postgres://postgres:tfbackend123@localhost/terraform_backend?sslmode=disable"
  }
}
