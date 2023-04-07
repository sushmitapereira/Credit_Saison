// main.dart
import 'package:flutter/material.dart';
import 'package:credit_saison_project/constants.dart';
import 'package:credit_saison_project/my_flutter_app_icons.dart';
import 'package:pie_chart/pie_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Map<String, double> dataMap = {
   "Utilised_Limit":25,
   "Available_Limit":75,
  };
    List<Color> colorList = [
     const Color(0xff3EE094),
    Color.fromARGB(255, 255, 255, 255),
  
   
  ];
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
             
              colors: [kBackgroundDarkColor,kBackgroundMidColor, kBackgroundLightColor],
                stops: [0.01,0.08,1,],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      )),
      child: Scaffold(
          // By defaut, Scaffold background is white
          // Set its value to transparent
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
           leading: IconButton(onPressed: (){

           }, icon: Icon(MyFlutterApp.menu)),
           actions: [IconButton(onPressed: (){

           }, icon:Icon(MyFlutterApp.notify))],
          ),
          body:SingleChildScrollView(
              
              child: Column(
               
                children: <Widget>[
                 
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Container(
                    
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(60),
                          
                          ),
                          color: kTopProcessFeeColor,
                          
                          ),
                  child: Center(
                     
                        child:Row(children: <Widget>[
                          
                          Icon(MyFlutterApp.offer,color: Colors.white,),
                          Text('  0% Processing Fee',style: TextStyle(fontSize: 15,color: Colors.white),)
                        ],),
                        
                      ),
                      height: 80,
                      width: 300,
                    
                    ),
                    
                  ),
                 Center(
                    
                    child: PieChart(dataMap: dataMap,
                    colorList:colorList,
                    chartRadius: MediaQuery.of(context).size.width/2,
                    ringStrokeWidth: 24,
                    animationDuration: const Duration(seconds: 3),
                    chartType: ChartType.ring,
                    
                    ),
                        
                  ),
              ],
              ),
            ),
             
          ),
    );
  }
}