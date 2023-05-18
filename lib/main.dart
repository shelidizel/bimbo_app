import 'package:bimbo_app/network/listings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Bimbo App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Center(
        child: RentalListingWidget()
        ),
      
    );
  }
}

class RentalListingWidget extends StatelessWidget {
   RentalListingWidget({
    super.key, 
    this.noOfBedrms, 
    this.noOfHospitals,
    this.noOfSchools,
    this.rentalPrice,
    this.typeOfHouse});
   int? noOfBedrms;
   int? noOfHospitals;
   int? noOfSchools;
   String? typeOfHouse;
   int? rentalPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(rentalListings[0].image!)),
            ),
             
    
          ),
          SizedBox(height: 10,),
          Container(
            height: 86,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(.35),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                  Text(rentalListings[0]
                  .rentalPrice.toString(),
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),),
                
                  Row(
                    children: [
                      Text(rentalListings[0]
                      .houseType ?? '',
                      style: TextStyle(
                        fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w400
                
                      ),),
                
                      SizedBox(
                        width: 20,
                      ),
                
                      Text(rentalListings[0].noOfBedRms.toString(),
                       style: TextStyle(
                        fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w400
                
                      ),),
                
                      SizedBox(
                        width: 20,
                      ),
                      Text(rentalListings[0].noOfSchoolsNearBy.toString(),
                       style: TextStyle(
                        fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w400
                
                      ),),
                      SizedBox(
                        width: 20,
                      ),
                      Text(rentalListings[0].noOfHospitalsNearBy.toString(),
                       style: TextStyle(
                        fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w400
                
                      ),),
                      SizedBox(
                        width: 20,
                      ),
                      
                
                    ],
                  )
                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
