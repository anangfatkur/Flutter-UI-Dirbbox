import 'package:dirbbox/app/modules/home/views/home_view.dart';
import 'package:dirbbox/app/modules/login/views/login_view.dart';
import 'package:dirbbox/app/modules/profile/views/profile_view.dart';
import 'package:dirbbox/app/modules/settings/views/settings_view.dart';
import 'package:dirbbox/app/modules/storage_detail/views/storage_detail_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/side_menu_controller.dart';

class SideMenuView extends GetView<SideMenuController> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFFE5E5E5),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: Get.width * 0.5,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 10),
                        Image.asset("assets/images/profile.png"),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Neelesh",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF1B1D28),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Seattle,Washington",
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF7B7F9E).withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: Text(
                      "Home",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1B1D28)),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => HomeView(),
                      ));
                    },
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    child: Text(
                      "Profile",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1B1D28)),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => ProfileView(),
                      ));
                    },
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    child: Text(
                      "Storage",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1B1D28)),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => StorageDetailView(),
                      ));
                    },
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    child: Text(
                      "Shared",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1B1D28)),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => HomeView(),
                      ));
                    },
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    child: Text(
                      "Stats",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1B1D28)),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => HomeView(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    child: Text(
                      "Settings",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1B1D28)),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => SettingsView(),
                      ));
                    },
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    child: Text(
                      "Help",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1B1D28)),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => HomeView(),
                      ));
                    },
                  ),
                  SizedBox(height: 60),
                  GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/icons/logout.png"),
                        SizedBox(width: 5),
                        Text(
                          "Logout",
                          style: TextStyle(
                              height: 1,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1B1D28)),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => LoginView(),
                      ));
                    },
                  ),
                  SizedBox(height: 60),
                  Text(
                    "Version 2.0.1",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF3A4276),
                    ),
                  ),
                  SizedBox(height: 30),
                ],

                //NOTE MEMAKAI ELEVATEDBUTTON
                // children: [
                //   ElevatedButton(
                //     onPressed: () => Get.offAllNamed(Routes.SETTINGS),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         Text(
                //           "Home",
                //           style: TextStyle(
                //             color: Color(0xFF1B1D28),
                //           ),
                //         ),
                //       ],
                //     ),
                //     style: ElevatedButton.styleFrom(
                //       primary: Color(0xFFFFFFFF),
                //     ),
                //   ),
                // ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// void SelectPage(BuildContext context, int index) {
//   switch (index) {
//     case 0:
//       Navigator.of(context).push(MaterialPageRoute(
//         builder: (context) => SettingsView(),
//       ));
//       break;
//     default:
//   }
// }

// class _buildMenuDrawer extends StatelessWidget {
//   const _buildMenuDrawer({
//     Key? key,
//     required this.title,
//     required this.color,
//     VoidCallback? onClicked,
//   }) : super(key: key);

//   final String title;

//   final Color color;

//   @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     child: GestureDetector(
  //       onTap: () {
  //         print('onTap');
  //         Feedback.forTap(context);
  //       },
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Text(
  //             "title",
  //             style: TextStyle(
  //               fontSize: 16,
  //               fontWeight: FontWeight.bold,
  //               color: Colors.amber,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

