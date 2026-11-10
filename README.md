# Laboratorio 4 — Actas municipales en un grafo (TI-4601 BDA)

**Curso:** TI-4601 Bases de Datos Avanzadas · **Valor:** 2,5 %
**Entrega:** miércoles 11 de noviembre de 2026, 11:00 pm (informe PDF en TEC Digital + enlace a este repo)

## Integrantes

| Nombre | Carné | Usuario GitHub |
| --- | --- | --- |
| Jose Pablo Guerrero Duarte |2022099311|TheKrigerenJp |
| Yerik Chaves Serrano |2022437493 |Yerik1 |
| Emmanuel Esquivel Chavarria |2022312336 |LelitoCh |

## Estructura

```text
.
├── docker-compose.yml        # perfil lab4: Neo4j 5 Community + notebook
├── Makefile                  # make lab4-up | lab4-ejecutar | lab4-down | lab4-down-v
└── labs/lab4-neo4j/
    ├── Lab4.ipynb            # notebook del laboratorio (TODO 1–5)
    ├── README.md             # enunciado original
    ├── Dockerfile / requirements.txt
    ├── cypher/               # consultas de los TODO, sueltas (para el informe)
    ├── evidencia/            # capturas y salidas con marca de tiempo
    └── informe/              # informe del laboratorio (md + pdf)
```

## Cómo levantarlo

Con `make`:

```bash
make lab4-up
```

En Windows sin `make` (PowerShell o Git Bash), desde la raíz del repo:

```bash
docker compose --profile lab4 up -d --build neo4j lab4-notebook
```

| Qué | Dónde |
| --- | --- |
| Notebook | http://127.0.0.1:8888/lab?token=ti4601 |
| Navegador de Neo4j | http://127.0.0.1:7474 (usuario `neo4j`, clave `ti4601-grafos`) |

Abrir `labs/lab4-neo4j/Lab4.ipynb` y ejecutar las celdas en orden. Para apagar:

```bash
docker compose --profile lab4 down
```
