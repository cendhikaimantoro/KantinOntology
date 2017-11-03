[QueryItem="CheapProduct"]
PREFIX : <http://www.semanticweb.org/asus-a451lb/ontologies/2017/9/untitled-ontology-5#>
SELECT DISTINCT * WHERE {
   ?x a :Product; :name ?name; :price ?price; FILTER(?price <= 15000) .
}

[QueryItem="MSGFood"]
PREFIX : <http://www.semanticweb.org/asus-a451lb/ontologies/2017/9/untitled-ontology-5#>
SELECT DISTINCT * WHERE {
   ?x a :MSGFood; :food_name ?food_name .
}
