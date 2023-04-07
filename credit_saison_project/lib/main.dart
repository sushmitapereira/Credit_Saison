// main.dart

import 'package:flutter/material.dart';
import 'package:credit_saison_project/constants.dart';
import 'package:credit_saison_project/my_flutter_app_icons.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:credit_saison_project/paint.dart';

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
      "Utilised_Limit": 25,
      "Available_Limit": 75,
    };
    List<Color> colorList = [
      kGreenWheelcolor,
      Color.fromARGB(255, 255, 255, 255),
    ];
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [kBackgroundDarkColor, kBackgroundLightColor],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(onPressed: () {}, icon: Icon(MyFlutterApp.menu)),
          actions: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Image.asset(
                'assets/notification.PNG',
                width: 25,
                height: 25,
              ),
            )
          ],
        ),
        body: Stack(children: [
          Positioned(
            top: -20,
            right: -450,
            child: Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kBackgroundDarkColor,
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: -450,
            child: Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kBackgroundDarkColor,
              ),
            ),
          ),
          SingleChildScrollView(
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
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                left: 20, right: 10, top: 15, bottom: 15),
                            child: Image.asset(
                              'assets/offer.PNG',
                              width: 25,
                              height: 25,
                            ),
                            //Icon(MyFlutterApp.offer,color: Colors.white,),
                          ),
                          Text(
                            ' 0% processing fee',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    height: 80,
                    width: 300,
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Center(
                      child: PieChart(
                        dataMap: dataMap,
                        colorList: colorList,
                        chartRadius: MediaQuery.of(context).size.width / 2,
                        ringStrokeWidth: 18,
                        animationDuration: const Duration(seconds: 3),
                        chartType: ChartType.ring,
                        baseChartColor: Colors.white,
                        centerText: '25 % utilised',
                        legendOptions: LegendOptions(showLegends: false),
                        centerTextStyle: TextStyle(
                          backgroundColor: kBackgroundLightColor,
                        ),
                        initialAngleInDegree: 270,
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Total limit',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '₹ 2,00,000',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 50),
                          Text(
                            'Utilised limit',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '₹ 50,000',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 50),
                          Text(
                            'Available limit',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '₹ 1,50,000',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 50),
                DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            kWithdrawDarkColor,
                            kWithdrawLightColor
                            //add more colors
                          ]),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          disabledBackgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          //make color or elevated button transparent
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                            left: 20,
                            right: 20,
                          ),
                          child: Text(
                            "Withdraw more",
                            style: TextStyle(
                                fontSize: 17, color: kBackgroundDarkColor),
                          ),
                        ))),
                SizedBox(height: 50),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'All withdrawals:',
                        style: TextStyle(
                            color: kBackgroundDarkColor, fontSize: 15),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            
                            Container(
          //                      Positioned(
          //   top: 70,
          //   left: -450,
          //   child: Container(
          //     width: 500,
          //     height: 500,
          //     decoration: BoxDecoration(
          //       shape: BoxShape.circle,
          //       color: kBackgroundDarkColor,
          //     ),
          //   ),
          // ),
                              height: 80,
                              width: 150,
                              margin: EdgeInsets.all(15.0),
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                              
                                  borderRadius: BorderRadius.circular(8),
                                  color: kOngoingLightColor),
                              child: Column(
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                       Positioned(
            top: -30,
            left: 90,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kBackgroundDarkColor,
              ),
            ),
          ),
           Positioned(
            top: -20,
            left: 100,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kOngoingLightColor,
              ),
            ),
          ),
                                      Container(
                                        
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "Ongoing",
                                                style: TextStyle(
                                                  color: kOngoingGreyTextColor,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ]),
                                        //    Text("Ongoing",style: TextStyle(color:kOngoingGreyTextColor,fontSize:15,),)
                                      ),
                                      SizedBox(height: 40),
                                      Container(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: <Widget>[
                                              Text('1',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 35,
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ]),
                                        //  Text('1',style: TextStyle(color:kOngoingGreyTextColor,fontSize:15,fontWeight: FontWeight.bold))
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 80,
                              width: 150,
                              margin: EdgeInsets.all(15.0),
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: kPastLightColor),
                              child: Column(
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                         Positioned(
            bottom: -30,
            right: 90,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kPastDarkColor,
              ),
            ),
          ),
           Positioned(
            bottom: -20,
            right: 100,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kPastLightColor,
              ),
            ),
          ),
                                      Container(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "Past",
                                                style: TextStyle(
                                                  color: kOngoingGreyTextColor,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ]),
                                        //    Text("Ongoing",style: TextStyle(color:kOngoingGreyTextColor,fontSize:15,),)
                                      ),
                                      SizedBox(height: 40),
                                      Container(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: <Widget>[
                                              Text('2',
                                                  style: TextStyle(
                                                      color:
                                                          kPastNumberTwoGreyColor,
                                                      fontSize: 35,
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ]),
                                        //  Text('1',style: TextStyle(color:kOngoingGreyTextColor,fontSize:15,fontWeight: FontWeight.bold))
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ]),
                      SizedBox(height: 30),
                      Center(
                        child: Text(
                          'Downloads documents:',
                          style: TextStyle(
                              color: kBackgroundDarkColor, fontSize: 15),
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              child: ElevatedButton.icon(
                                onPressed: () {},

                                icon: Icon(
                                  // <-- Icon
                                  MyFlutterApp.download,
                                  size: 24.0,
                                  color: kBackgroundDarkColor,
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            side: BorderSide(
                                                color: kBackgroundDarkColor)))),
                                label: Text(
                                  'Sanction letter',
                                  style: TextStyle(color: kBackgroundDarkColor),
                                ), // <-- Text
                              ),
                            ),
                            Container(
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  // <-- Icon
                                  MyFlutterApp.download,
                                  size: 24.0,
                                  color: kBackgroundDarkColor,
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            side: BorderSide(
                                                color: kBackgroundDarkColor)))),
                                label: Text(
                                  'Agreement Letter',
                                  style: TextStyle(color: kBackgroundDarkColor),
                                ), // <-- Text
                              ),
                            ),
                          ]),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
