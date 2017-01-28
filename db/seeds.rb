Country.delete_all
City.delete_all

country1  = Country.create( { name: "Netherlands", flag: 2003, capital: "amsterdam", language: "Dutch", area: 4323454, population: 80988700 } )
country2  = Country.create( { name: "Iran",        flag: 2003, capital: "Tehran",    language: "Farsi", area: 2345345, population: 17987654 } )  
