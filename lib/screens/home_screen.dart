import 'package:flutter/material.dart';
// import 'package:mkulima_fintech_app/assets/logo.jpg';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: Text('Mkulima Hub'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset(
              'assets/logo.jpg',
              height: 100,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome, Farmer!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton.icon(
              icon: Icon(Icons.shopping_bag),
              label: Text('Go to Marketplace'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/marketplace');
              },
            ),
            SizedBox(height: 15),
            ElevatedButton.icon(
              icon: Icon(Icons.monetization_on),
              label: Text('Apply for Loan'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/loan');
              },
            ),
            SizedBox(height: 15),
            ElevatedButton.icon(
              icon: Icon(Icons.notifications),
              label: Text('Crop Price Alerts'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/alerts');
              },
            ),
          ],
        ),
      ),
    );
  }
}
