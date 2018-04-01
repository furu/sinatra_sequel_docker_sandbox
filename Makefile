help:
	@cat Makefile

db_create:
	@mysqladmin -h $(DB_HOST) -u $(DB_USER) create $(DB_NAME)

db_drop:
	@mysqladmin -h $(DB_HOST) -u $(DB_USER) drop $(DB_NAME)

db_migrate:
	@bin/kamimai -path=./db -env=development up

db_rollback:
	@bin/kamimai -path=./db -env=development down

db_create_migration:
	@bin/kamimai -path=./db -env=development create $(NAME)
