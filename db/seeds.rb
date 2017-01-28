City.delete_all
Country.delete_all


country1  = Country.create( { name: "Netherlands", flag: "http://bit.ly/2jI0idq", capital: "amsterdam", language: "Dutch", area: 4323454, population: 80988700 } )
country2  = Country.create( { name: "Iran",        flag: "http://bit.ly/2ke41TR", capital: "Tehran",    language: "Farsi", area: 2345345, population: 17987654 } )

city1 = City.create({ name: "Amsterdam", photo: "http://bit.ly/1FQUUhX", population: 1000700 } )
city2 = City.create({ name: "Rotterdam", photo: "http://bit.ly/2jAA3Z0", population: 1100700 } )
city3 = City.create({ name: "Amsterdam", photo: "http://bit.ly/1FQUUhX", population: 1000700 } )
city4 = City.create({ name: "Rotterdam", photo: "http://bit.ly/2jAA3Z0", population: 1100700 } )

country1.cities << [city1, city2]
country1.save

country2.cities << [city3, city4]
country2.save
