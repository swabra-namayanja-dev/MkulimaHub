import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/loan_application_screen.dart';
import 'screens/marketplace_screen.dart';
import 'screens/price_alert_screen.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mkulima Hub',
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/marketplace': (context) => MarketplaceScreen(),
        '/loan': (context) => LoanApplicationScreen(),
        '/alerts': (context) => PriceAlertScreen(),
      },
    );
  }
}
