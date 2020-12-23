postgres:
	docker run --name postgres -p 5432:5432 -e POSTGRES_PASSWORD=testpass -d postgres:11

load:
	docker run --rm -it -v $(PWD):/pagila --network=host -e PGPASSWORD=testpass -e PGUSER=postgres -e PGHOST=localhost postgres:11 psql -f /pagila/pagila-schema.sql
	docker run --rm -it -v $(PWD):/pagila --network=host -e PGPASSWORD=testpass -e PGUSER=postgres -e PGHOST=localhost postgres:11 psql -f /pagila/pagila-data.sql

connect:
	docker run --rm -it -v $(PWD):/pagila --network=host -e PGPASSWORD=testpass -e PGUSER=postgres -e PGHOST=localhost postgres:11 /bin/bash

clean:
	docker kill postgres && docker rm postgres