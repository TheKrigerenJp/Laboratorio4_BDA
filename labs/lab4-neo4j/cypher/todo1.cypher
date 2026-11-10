// TODO 1 — Laboratorio 4 (copia de la celda del notebook)
MATCH (a:Acta {id: $id})
MERGE (p:Persona {nombre: $nombre})
MERGE (p)-[r:PARTICIPA_EN]->(a)
SET r.rol = $rol, r.cargo = $cargo
