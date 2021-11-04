import 'package:dirbbox/app/modules/change_password/views/change_password_view.dart';
import 'package:dirbbox/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
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
              MaterialPageRoute(builder: (context) => HomeView()),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF22215B),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              "Settings",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              child: Text(
                "Add Account",
                style: TextStyle(fontSize: 18, color: Color(0xFF1B1D28)),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeView(),
                  ),
                );
              },
            ),
            SizedBox(height: 25),
            GestureDetector(
              child: Text(
                "Change Password",
                style: TextStyle(fontSize: 18, color: Color(0xFF1B1D28)),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => ChangePasswordView(),
                  ),
                );
              },
            ),
            SizedBox(height: 25),
            GestureDetector(
              child: Text(
                "Change Language",
                style: TextStyle(fontSize: 18, color: Color(0xFF1B1D28)),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeView(),
                  ),
                );
              },
            ),
            SizedBox(height: 25),
            GestureDetector(
              child: Text(
                "Upgrade Plan",
                style: TextStyle(fontSize: 18, color: Color(0xFF1B1D28)),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeView(),
                  ),
                );
              },
            ),
            SizedBox(height: 25),
            GestureDetector(
              child: Text(
                "Multiple Account",
                style: TextStyle(fontSize: 18, color: Color(0xFF1B1D28)),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeView(),
                  ),
                );
              },
            ),
            SizedBox(height: 60),
            Text(
              "Enable Sync",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25),
            Text(
              "Enable 2 Step Verification",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
