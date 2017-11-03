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

[QueryItem="CheapFoodDrink"]
PREFIX : <http://www.semanticweb.org/asus-a451lb/ontologies/2017/9/untitled-ontology-5#>
SELECT DISTINCT ?food_name ?drink_name ?total_price WHERE {

   ?food a :Food.
   ?food :name ?food_name.
   ?food :price ?food_price.

   ?drink a :Drink.
   ?drink :name ?drink_name.
   ?drink :price ?drink_price.

   BIND((?drink_price + 0 + ?food_price) AS ?total_price).
   FILTER (?total_price <= 20000).

} ORDER  BY ?total_price
