[QueryItem="CheapProduct"]
PREFIX : <http://www.semanticweb.org/asus-a451lb/ontologies/2017/9/untitled-ontology-5#>
SELECT DISTINCT * WHERE {
   ?x a :Product; :name ?name; :price ?price; FILTER(?price <= 15000) .
}

[QueryItem="MSGFood"]
PREFIX : <http://www.semanticweb.org/asus-a451lb/ontologies/2017/9/untitled-ontology-5#>
SELECT DISTINCT * WHERE {
   ?x a :MSGFood; :name ?food_name .
}

[QueryItem="WhosYourCashier"]
PREFIX : <http://www.semanticweb.org/asus-a451lb/ontologies/2017/9/untitled-ontology-5#>
SELECT DISTINCT * WHERE {
   ?x a :Karyawan; :karyawan_name ?nama ; :divisi ?divisi ; 
      FILTER(?divisi = 'kasir') .
}

[QueryItem="VegetarianFood"]
PREFIX : <http://www.semanticweb.org/asus-a451lb/ontologies/2017/9/untitled-ontology-5#>
SELECT DISTINCT * WHERE {
   ?x a :VegetarianFood; :name ?food_name .
}

[QueryItem="ListCustomer"]
PREFIX : <http://www.semanticweb.org/asus-a451lb/ontologies/2017/9/untitled-ontology-5#>
SELECT DISTINCT * WHERE {
   ?x a :Pelanggan; :people_name ?nama .
}
