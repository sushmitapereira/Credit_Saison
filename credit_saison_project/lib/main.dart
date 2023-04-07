// main.dart
import 'dart:ui';

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
        backgroundBlendMode: BlendMode.color,
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
                   SizedBox(height: 70),
                 Center(
                    
                    child: PieChart(dataMap: dataMap,
                    colorList:colorList,
                    chartRadius: MediaQuery.of(context).size.width/2,
                    ringStrokeWidth: 24,
                    animationDuration: const Duration(seconds: 3),
                    chartType: ChartType.ring,
                    
                    ),
                        
                  ),
                   SizedBox(height: 70),
                 DecoratedBox(
    decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
             kWithdrawDarkColor,
             kWithdrawLightColor
              //add more colors
            ]),
          borderRadius: BorderRadius.circular(30),
         
      ),
    child:ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          disabledBackgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          //make color or elevated button transparent
      ),
      
      onPressed: (){
        
      }, 
      child: Padding(
        padding:EdgeInsets.only(
          top: 18,
          bottom: 18,
          left: 20,
          right: 20,
        ),
        child:Text("Withdraw More",style:TextStyle(fontSize: 20),),
      )
    )  
),

SizedBox(height: 50),
Center(
  child: Text('All Withdrawals:',style: TextStyle(color: Colors.white),),
),
Row(  
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
          children:<Widget>[  
            Container(  
              margin: EdgeInsets.all(15.0),  
              padding: EdgeInsets.all(15.0),  
              decoration:BoxDecoration(  
                  borderRadius:BorderRadius.circular(8),  
                  color:kOngoingLightColor
              ),  
              child: Text("Ongoing",style: TextStyle(color:kOngoingGreyTextColor,fontSize:15),),  
            ),  
            Container(  
              margin: EdgeInsets.all(15.0),  
              padding: EdgeInsets.all(15.0),  
              decoration:BoxDecoration(  
                  
                  borderRadius:BorderRadius.circular(8),  
                  color: kPastLightColor,
              ),  
              child: Text("Past",style: TextStyle(color:kOngoingGreyTextColor,fontSize:15),),  
            ),  
           
          ]  
      ),  
      SizedBox(height: 50),
Center(
  child: Text('Downloads documents:',style: TextStyle(color: Colors.white),),
),
Row(  
         
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
          children:<Widget>[  
            Container(  
             child: ElevatedButton.icon(
  onPressed: () {},
  icon: Icon( // <-- Icon
    MyFlutterApp.download,
    size: 24.0,
  ),
  label: Text('Sanction Letter'), // <-- Text
),
            ),  
            Container(  
             
             child: ElevatedButton.icon(
              
  onPressed: () {},
  icon: Icon( // <-- Icon
    MyFlutterApp.download,
    size: 24.0,
  ),
  
  label: Text('Agreement Letter'), // <-- Text
),
            ),  
           
          ]  
      ),  
                   

              ],
              
              ),
          
            ),
             
          ),
    );
  }
}