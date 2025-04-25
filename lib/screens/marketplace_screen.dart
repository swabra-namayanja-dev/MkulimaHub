import 'package:flutter/material.dart';

class MarketplaceScreen extends StatelessWidget {
  final List<Map<String, String>> items = [
    {"name": "Maize Seeds", "price": "UGX 20,000"},
    {"name": "Fertilizer", "price": "UGX 35,000"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Marketplace")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (ctx, i) => Card(
          margin: EdgeInsets.all(10),
          child: ListTile(
            title: Text(items[i]['name']!),
            subtitle: Text("Price: ${items[i]['price']}"),
            trailing: Icon(Icons.shopping_cart),
          ),
        ),
      ),
    );
  }
}
