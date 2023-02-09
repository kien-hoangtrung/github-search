.PHONY: seed
seed:
	go run cmd/seed.go

.PHONY: run
run:
	go run cmd/main.go

.PHONY: refresh
refresh:
	rm logs.log
	rm -rf tmp && mkdir tmp
	make docker-refresh

.PHONY: docker-refresh
docker-refresh:
	docker-compose down -v
	docker-compose up -d
