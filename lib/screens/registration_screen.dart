import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController phonenumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Join Network")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: fullnameController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: ' Full Name'),
            ),
            TextField(
              controller: phonenumberController,
              decoration: InputDecoration(labelText: 'Phone Number'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Register'),
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
