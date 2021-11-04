import 'package:dirbbox/app/modules/home/views/home_view.dart';
// import 'package:dirbbox/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Stack(
        children: [
          //BACKGROUND
          Container(
            width: Get.width,
            child: Image.asset(
              "assets/images/bg.png",
              fit: BoxFit.cover,
            ),
          ),
          //LAYER BODY
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100),
                Container(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    "assets/images/pic1.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Welcome to",
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  "Dirbbox",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 200,
                  child: Text(
                    "Best cloud storage platform for all business and individuals to manage there data\n\n Join For Free.",
                    style: TextStyle(fontSize: 11),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        final snackBar = SnackBar(
                          content: Text(
                            'this Smart Id successfully!',
                          ),
                          backgroundColor: Color(0xFF567DF4),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/fingerprint.png"),
                          SizedBox(width: 5),
                          Text(
                            "Smart Id",
                            style: TextStyle(
                              color: Color(0xFF567DF4),
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFfEEF7FE).withOpacity(0.4),
                        fixedSize: Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    ElevatedButton(

                      // Note: Jika pakai GET
                      // onPressed: () => Get.offAllNamed(Routes.HOME),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeView(),
                        ));
                        final snackBar = SnackBar(
                          content: Text(
                            'this Sign in successfully!',
                          ),
                          backgroundColor: Color(0xFF567DF4),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sign in",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 5),
                          Image.asset("assets/icons/panah.png"),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFf567DF4),
                        fixedSize: Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "Use Social Login",
                    style: TextStyle(
                      color: Color(0xFF1B1D28),
                      fontSize: 11,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/instagram.png"),
                    SizedBox(width: 50),
                    Image.asset("assets/icons/twitter.png"),
                    SizedBox(width: 50),
                    Image.asset("assets/icons/facebook.png"),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "Create an account",
                    style: TextStyle(
                      color: Color(0xFF1B1D28),
                      fontSize: 11,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
