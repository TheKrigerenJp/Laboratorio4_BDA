// TODO 3 — Laboratorio 4 (copia de la celda del notebook)
MATCH (a:Acta)-[:CONTIENE]->(f:Fragmento)
RETURN a.id AS acta, a.tipo AS tipo, a.fecha AS fecha, count(f) AS fragmentos
ORDER BY acta
