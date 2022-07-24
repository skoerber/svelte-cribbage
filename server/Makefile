start:
	npx foreman start

up:
	docker compose up -d

stop:
	docker compose stop

down:
	docker compose down

psql:
	psql ${DATABASE_URL}

create:
	psql ${ROOT_DATABASE_URL} < create.sql

init:
	npx graphile-migrate init

watch:
	npm run watch
