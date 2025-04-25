import 'package:flutter/material.dart';

class PriceAlertScreen extends StatelessWidget {
  final List<Map<String, String>> prices = [
    {"crop": "Maize", "price": "UGX 1,500/kg"},
    {"crop": "Beans", "price": "UGX 2,200/kg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Crop Price Alerts")),
      body: ListView.builder(
        itemCount: prices.length,
        itemBuilder: (ctx, i) => ListTile(
          title: Text(prices[i]['crop']!),
          trailing: Text(prices[i]['price']!),
        ),
      ),
    );
  }
}
