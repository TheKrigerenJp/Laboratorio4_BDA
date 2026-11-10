# TI-4601 — Laboratorio 4 (copia reducida del Makefile del curso)
# En Windows sin `make`, use los comandos `docker compose` equivalentes del README.

.PHONY: help lab4-up lab4-down lab4-down-v lab4-ejecutar

COMPOSE := docker compose

help:
	@echo "Lab 4: make lab4-up | lab4-ejecutar | lab4-down | lab4-down-v"
	@echo "       notebook http://127.0.0.1:8888/lab?token=ti4601 · labs/lab4-neo4j/README.md"

lab4-up:
	$(COMPOSE) --profile lab4 up -d --build neo4j lab4-notebook

lab4-ejecutar:
	$(COMPOSE) --profile lab4 exec -T lab4-notebook \
		jupyter nbconvert --execute --to notebook \
		--ExecutePreprocessor.timeout=900 \
		--output Lab4.ejecutado --output-dir /tmp \
		labs/lab4-neo4j/Lab4.ipynb

lab4-down:
	$(COMPOSE) --profile lab4 down

lab4-down-v:
	$(COMPOSE) --profile lab4 down -v
