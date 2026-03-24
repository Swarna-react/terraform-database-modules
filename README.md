# Terraform Database Modules

Reusable, production-grade Terraform modules for provisioning
database infrastructure on AWS.

## Modules
| Module | Description |
|--------|-------------|
| `rds-postgres` | AWS RDS PostgreSQL with Multi-AZ |
| `aurora-cluster` | Aurora Serverless v2 cluster |
| `rds-security` | Security groups and IAM roles |

## Usage
```hcl
module "postgres_db" {
  source = "./modules/rds-postgres"
  
  db_name     = "myapp_prod"
  environment = "production"
  multi_az    = true
}
```

## Requirements
- Terraform >= 1.3
- AWS Provider >= 4.0
