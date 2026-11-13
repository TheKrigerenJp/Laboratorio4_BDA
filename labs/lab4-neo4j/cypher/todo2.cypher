// TODO 2 — Laboratorio 4 (copia de la celda del notebook)
MATCH (a:Acta {id: $acta})
MERGE (f:Fragmento {id: $id})
SET f.indice = $indice, f.texto = $texto, f.embedding = $embedding
MERGE (a)-[:CONTIENE]->(f)
