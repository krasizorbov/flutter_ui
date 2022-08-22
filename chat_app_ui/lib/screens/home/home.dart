import 'package:chat_app/constants/colors.dart';
import 'package:chat_app/screens/home/widgets/messages.dart';
import 'package:chat_app/screens/home/widgets/recent_contacts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Chat with\nyour friends',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ),
            RecentContacts(),
            Messages()
          ],
        ),
      ),
    );
  }
}
