// TODO 5 — Laboratorio 4 (copia de la celda del notebook)
MATCH (a:Acta)-[:CONTIENE]->(node)
WHERE size($ids) = 0 OR a.id IN $ids
OPTIONAL MATCH (node)-[:SIGUE]->(sig:Fragmento)
OPTIONAL MATCH (p:Persona)-[r:PARTICIPA_EN]->(a)
WITH node, score, a, sig,
     collect({nombre: p.nombre, rol: r.rol, cargo: r.cargo}) AS participantes
RETURN node.id AS fragmento, node.texto AS texto, sig.texto AS siguiente,
       a.id AS acta, a.tipo AS tipo, a.fecha AS fecha, a.url AS url,
       score, participantes
ORDER BY score DESC
LIMIT $k
