// TODO 4 — Laboratorio 4 (copia de la celda del notebook)
MATCH (p:Persona {nombre: $nombre})-[:PARTICIPA_EN]->(a:Acta)-[:CONTIENE]->(f:Fragmento)
WHERE toLower(f.texto) CONTAINS toLower($palabra)
RETURN a.id AS acta, f.id AS fragmento
ORDER BY acta, f.indice
