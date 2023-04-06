// Importing important packages require to connect
// Flutter and Dart
import 'package:flutter/material.dart';
import 'package:credit_saison_project/constants.dart';

// Main Function
void main() {
// Giving command to runApp() to run the app.

/* The purpose of the runApp() function is to attach
the given widget to the screen. */
runApp(const MyApp());
}

// Widget is used to create UI in flutter framework.

/* StatelessWidget is a widget, which does not maintain
any state of the widget. */

/* MyApp extends StatelessWidget and overrides its
build method. */
class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
@override
Widget build(BuildContext context) {
  
	return MaterialApp(
    
	// title of the application
   debugShowCheckedModeBanner: false,
	title: 'Hello World Demo Application',
	// theme of the widget
	theme: ThemeData(
    
	//	primarySwatch: Colors.lightGreen,
	),
	// Inner UI of the application
	home: const MyHomePage(title: ''),
	);
}
}

/* This class is similar to MyApp instead it
returns Scaffold Widget */
class MyHomePage extends StatelessWidget {
const MyHomePage({Key? key, required this.title}) : super(key: key);
final String title;

@override
Widget build(BuildContext context) {
  
	return Scaffold(
    backgroundColor: kBackgroundDarkColor,
	appBar: AppBar(
  backgroundColor: Colors.transparent,
   elevation: 0,
		title: Text(title),
	),
	// Sets the content to the
	// center of the application page
	body:Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: 
      [
        kBackgroundDarkColor,
        kBackgroundMidColor,
        kBackgroundLightColor,
      ],
      stops: [0.01,0.07,1,],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      )
    ),
  )
	);
}
}
