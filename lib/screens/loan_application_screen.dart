import 'package:flutter/material.dart';

class LoanApplicationScreen extends StatelessWidget {
  final TextEditingController amountController = TextEditingController();
  final TextEditingController reasonController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Loan Application")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Loan Amount'),
            ),
            TextField(
              controller: reasonController,
              decoration: InputDecoration(labelText: 'Reason'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Apply'),
              onPressed: () {
                // Call API here
              },
            ),
          ],
        ),
      ),
    );
  }
}
