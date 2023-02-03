Order.destroy_all
Model.destroy_all
Brand.destroy_all
OrderProgress.destroy_all
User.destroy_all

brands = Brand.create!([{
	name: "Aprilia"
},
{
	name: "Ducati"
},
{
	name: "Yamaha"
},
{
	name: "Kawasaki"
},
{
	name: "Suzuki"
}])
p "Seeded #{Brand.count} Brands"

brands[0].models.create!([
	{ name: "RS 50", last_supported_year: 1994, service_1: 85.00, service_2: 23.00, service_3: 18.00, service_4: 44.00 },
	{ name: "Tuono", last_supported_year: 1995, service_1: 77.00, service_2: 20.00, service_3: 24.00, service_4: 42.00 },
	{ name: "RSV4 1100", last_supported_year: 1991, service_1: 80.00, service_2: 42.00, service_3: 17.00, service_4: 23.00 },
	{ name: "RSV4 125", last_supported_year: 1996, service_1: 58.00, service_2: 32.00, service_3: 22.00, service_4: 38.00 },
	{ name: "RS 125", last_supported_year: 1992, service_1: 56.00, service_2: 22.00, service_3: 30.00, service_4: 32.00 },
	{ name: "SR 50", last_supported_year: 1995, service_1: 83.00, service_2: 28.00, service_3: 20.00, service_4: 39.00 },
	{ name: "SR 125", last_supported_year: 1994, service_1: 82.00, service_2: 23.00, service_3: 25.00, service_4: 28.00 }
])
brands[1].models.create!([
	{ name: "Panigale V4", last_supported_year: 1996, service_1: 71.00, service_2: 30.00, service_3: 26.00, service_4: 45.00 },
	{ name: "Scrambler 800", last_supported_year: 1991, service_1: 93.00, service_2: 44.00, service_3: 23.00, service_4: 41.00 },
	{ name: "Diavel", last_supported_year: 1991, service_1: 70.00, service_2: 22.00, service_3: 29.00, service_4: 35.00 },
	{ name: "Monster", last_supported_year: 1991, service_1: 86.00, service_2: 26.00, service_3: 17.00, service_4: 25.00 },
	{ name: "Panigale V2", last_supported_year: 1991, service_1: 91.00, service_2: 32.00, service_3: 15.00, service_4: 23.00 },
	{ name: "Hypermotard", last_supported_year: 1991, service_1: 68.00, service_2: 39.00, service_3: 20.00, service_4: 39.00 },
	{ name: "Streetfighter", last_supported_year: 1996, service_1: 91.00, service_2: 23.00, service_3: 28.00, service_4: 38.00 }
])
brands[2].models.create!([
	{ name: "MT-03", last_supported_year: 1995, service_1: 75.00, service_2: 36.00, service_3: 29.00, service_4: 34.00 },
	{ name: "MT-07", last_supported_year: 1991, service_1: 50.00, service_2: 43.00, service_3: 27.00, service_4: 43.00 },
	{ name: "MT-09", last_supported_year: 1994, service_1: 92.00, service_2: 26.00, service_3: 20.00, service_4: 40.00 },
	{ name: "R1", last_supported_year: 1993, service_1: 48.00, service_2: 38.00, service_3: 25.00, service_4: 40.00 },
	{ name: "R6", last_supported_year: 1995, service_1: 74.00, service_2: 29.00, service_3: 27.00, service_4: 38.00 },
	{ name: "R7", last_supported_year: 1991, service_1: 87.00, service_2: 45.00, service_3: 28.00, service_4: 22.00 },
	{ name: "R125", last_supported_year: 1991, service_1: 52.00, service_2: 44.00, service_3: 24.00, service_4: 28.00 }
])
brands[3].models.create!([
	{ name: "Ninja H2", last_supported_year: 1995, service_1: 48.00, service_2: 37.00, service_3: 28.00, service_4: 26.00 },
	{ name: "Ninja 300", last_supported_year: 1992, service_1: 44.00, service_2: 38.00, service_3: 23.00, service_4: 26.00 },
	{ name: "Ninja 650", last_supported_year: 1991, service_1: 69.00, service_2: 33.00, service_3: 27.00, service_4: 29.00 },
	{ name: "Ninja ZX-10R", last_supported_year: 1993, service_1: 50.00, service_2: 34.00, service_3: 24.00, service_4: 38.00 },
	{ name: "Z750", last_supported_year: 1993, service_1: 82.00, service_2: 30.00, service_3: 19.00, service_4: 27.00 },
	{ name: "Z900", last_supported_year: 1995, service_1: 89.00, service_2: 37.00, service_3: 26.00, service_4: 43.00 }
])
brands[4].models.create!([
	{ name: "Hayabusa", last_supported_year: 1994, service_1: 44.00, service_2: 36.00, service_3: 24.00, service_4: 28.00 },
	{ name: "Burgman 400", last_supported_year: 1992, service_1: 58.00, service_2: 41.00, service_3: 15.00, service_4: 30.00 },
	{ name: "GSX 600R", last_supported_year: 1992, service_1: 95.00, service_2: 42.00, service_3: 30.00, service_4: 43.00 },
	{ name: "GSX 1000R", last_supported_year: 1994, service_1: 80.00, service_2: 43.00, service_3: 24.00, service_4: 24.00 },
	{ name: "GSX 750R", last_supported_year: 1996, service_1: 79.00, service_2: 36.00, service_3: 22.00, service_4: 25.00 },
	{ name: "GSX 750S", last_supported_year: 1995, service_1: 49.00, service_2: 45.00, service_3: 15.00, service_4: 22.00 },
	{ name: "GSX 1000S", last_supported_year: 1995, service_1: 100.00, service_2: 41.00, service_3: 17.00, service_4: 30.00 },
	{ name: "GSR 600", last_supported_year: 1995, service_1: 99.00, service_2: 42.00, service_3: 17.00, service_4: 43.00 },
	{ name: "GSR 750", last_supported_year: 1993, service_1: 57.00, service_2: 30.00, service_3: 19.00, service_4: 36.00 },
	{ name: "GSR 1000", last_supported_year: 1993, service_1: 72.00, service_2: 41.00, service_3: 29.00, service_4: 31.00 }
])
p "Seeded #{Model.count} Models"

OrderProgress.create!([{
	name: "Active"
},
{
	name: "Cancelled"
},
{
	name: "Completed"
}])
p "Seeded #{OrderProgress.count} OrderProgresses"

User.create!([{
	email: "pero.peric@gmail.com",
	first_name: "Pero",
	last_name: "Peric"
},
{
	email:"nikola.tesla@hotmail.com"
}])
p "Seeded #{User.count} Users"

