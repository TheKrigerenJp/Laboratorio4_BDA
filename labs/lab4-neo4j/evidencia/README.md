# Evidencia — Laboratorio 4

Esta carpeta guarda la evidencia de la ejecución, con marca de tiempo en el nombre
(formato `AAAAMMDD-HHMM`), como pide la política de entregas del curso.

| Archivo | Qué es | Cómo se obtiene |
| --- | --- | --- |
| `captura-neo4j-6.3-AAAAMMDD-HHMM.png` | Grafo del paso 6.3 con el panel de propiedades de `PARTICIPA_EN` abierto (se ve el `cargo`) | Navegador de Neo4j, consulta del paso 6.3 |
| `captura-esquema-AAAAMMDD-HHMM.png` | Resultado de `CALL db.schema.visualization()` | Navegador de Neo4j |
| `Lab4-ejecutado-20261109-1907.html` | Notebook completo con todas las salidas, exportado a HTML | `jupyter nbconvert --to html` |
| `salidas-20261109-1907.txt` | Solo las salidas de texto de cada celda de código, para copiarlas al informe | extraídas del notebook ejecutado |

Además, el propio `labs/lab4-neo4j/Lab4.ipynb` se sube **con sus salidas**: el resumen final
debe mostrar `TODO 1` a `TODO 5` en `OK`.

## Consultas para las capturas (navegador de Neo4j, http://127.0.0.1:7474)

```cypher
MATCH camino = (p:Persona)-[:PARTICIPA_EN]->(a:Acta {id: '61-2026'})-[:CONTIENE]->(f:Fragmento)
WHERE p.nombre STARTS WITH 'Gilberth'
RETURN camino
```

Haga clic en la flecha `PARTICIPA_EN` para que el panel derecho muestre `rol` y `cargo`, y tome la captura.

```cypher
CALL db.schema.visualization()
```
