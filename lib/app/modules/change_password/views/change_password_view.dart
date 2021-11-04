
import 'package:dirbbox/app/modules/settings/views/settings_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/change_password_controller.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsView()),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF22215B),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25),
          children: [
            SizedBox(height: 30),
            Text(
              "Change Password",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            Text(
              "Current Password",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF1B1D28),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              cursorColor: Color(0xFFEEF2FE),
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Color(0xFFFFFFFF),
                border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                filled: true,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "New Password",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF1B1D28),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              cursorColor: Color(0xFFEEF2FE),
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Color(0xFFFFFFFF),
                border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                filled: true,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Confirm new password",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF1B1D28),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              cursorColor: Color(0xFFEEF2FE),
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Color(0xFFFFFFFF),
                border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                filled: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
