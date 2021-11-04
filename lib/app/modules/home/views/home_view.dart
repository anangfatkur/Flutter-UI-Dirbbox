import 'package:dirbbox/app/modules/side_menu/views/side_menu_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          'Your Dribbbox',
          style: TextStyle(
            fontSize: 25,
            color: Color(0xFF22215B),
            fontWeight: FontWeight.bold,
          ),
        ),

        //NOTE : JIKA MEMAKAI Button
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(
        //       Icons.menu,
        //       color: Color(0xFF22215B),
        //     ),
        //   ),
        // ],
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 20),
              width: 20,
              height: 20,
              child: Image.asset(
                "assets/icons/titikempat.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
      drawer: SideMenuView(),
      body: ListView(
        children: [
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  size: 25,
                  color: Color(0xFF22215B),
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'Search Folder',
                labelStyle: TextStyle(
                  color: Color(0xFF22215B),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Recent",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF22215B),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Color(0xFF22215B),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Color(0xFF22215B),
                        ),
                      ),
                      Image.asset("assets/icons/kotakkecil.png"),

                      // IconButton(
                      //   onPressed: () {},
                      //   icon: Icon(
                      //     Icons.crop_square_outlined,
                      //     color: Color(0xFF22215B),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  image: Image.asset("assets/icons/folder415EB6.png"),
                  icon: Icon(
                    Icons.more_vert,
                    color: Color(0xFF415EB6),
                  ),
                  title: "Mobile Apps",
                  date: "December 20.2020",
                  color: Color(0xFF415EB6),
                ),
                CardFolder(
                  image: Image.asset("assets/icons/folderFFB110.png"),
                  icon: Icon(
                    Icons.more_vert,
                    color: Color(0xFFFFB110),
                  ),
                  title: "SVG Icons",
                  date: "December 14.2020",
                  color: Color(0xFFFFB110),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  image: Image.asset("assets/icons/folderAC4040.png"),
                  icon: Icon(
                    Icons.more_vert,
                    color: Color(0xFFAC4040),
                  ),
                  title: "Prototypes",
                  date: "November 22.2020",
                  color: Color(0xFFAC4040),
                ),
                CardFolder(
                  image: Image.asset("assets/icons/folder23B0B0.png"),
                  icon: Icon(
                    Icons.more_vert,
                    color: Color(0xFF23B0B0),
                  ),
                  title: "Avatars",
                  date: "November 10.2020",
                  color: Color(0xFF23B0B0),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  image: Image.asset("assets/icons/folder415EB6.png"),
                  icon: Icon(
                    Icons.more_vert,
                    color: Color(0xFF415EB6),
                  ),
                  title: "Design",
                  date: "December 20.2020",
                  color: Color(0xFF415EB6),
                ),
                CardFolder(
                  image: Image.asset("assets/icons/folderFFB110.png"),
                  icon: Icon(
                    Icons.more_vert,
                    color: Color(0xFFFFB110),
                  ),
                  title: "Portfolio",
                  date: "December 14.2020",
                  color: Color(0xFFFFB110),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  image: Image.asset("assets/icons/folderAC4040.png"),
                  icon: Icon(
                    Icons.more_vert,
                    color: Color(0xFFAC4040),
                  ),
                  title: "References",
                  date: "November 22.2020",
                  color: Color(0xFFAC4040),
                ),
                CardFolder(
                  image: Image.asset("assets/icons/folder23B0B0.png"),
                  icon: Icon(
                    Icons.more_vert,
                    color: Color(0xFF23B0B0),
                  ),
                  title: "Clients",
                  date: "November 10.2020",
                  color: Color(0xFF23B0B0),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  image: Image.asset("assets/icons/folderAC4040.png"),
                  icon: Icon(
                    Icons.more_vert,
                  ),
                  title: "References",
                  date: "November 22.2020",
                  color: Color(0xFFAC4040),
                ),
                CardFolder(
                  image: Image.asset("assets/icons/folder23B0B0.png"),
                  icon: Icon(
                    Icons.more_vert,
                  ),
                  title: "Clients",
                  date: "November 10.2020",
                  color: Color(0xFF23B0B0),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF22215B),
        onPressed: () {
          final snackBar = SnackBar(
            content: Text(
              'this item successfully!',
            ),
            backgroundColor: Color(0xFF22215B),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        tooltip: 'Increment',
        child: const Icon(
          Icons.add,
          size: 20,
        ),
      ),
    );
  }
}

class CardFolder extends StatelessWidget {
  CardFolder({
    Key? key,
    required this.title,
    required this.date,
    required this.color,
    required this.image,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String date;
  final Color color;
  final Image image;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: Get.width * 0.4,
      height: 120,
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      //Import Image
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              image,
              IconButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text(
                      'this item successfully!',
                    ),
                    backgroundColor: color,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                icon: Icon(
                  Icons.more_vert,
                  color: color,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
          SizedBox(height: 3),
          Text(
            date,
            style: TextStyle(
              fontSize: 10,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
