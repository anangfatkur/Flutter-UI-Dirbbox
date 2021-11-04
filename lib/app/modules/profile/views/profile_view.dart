import 'package:dirbbox/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFE5E5E5),
        leading: IconButton(
          // onPressed: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => HomeView()),
          //   );

          // },
          onPressed: () => Get.offAllNamed(Routes.HOME),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF22215B),
          ),
        ),
        title: Text(
          'My Profile',
          style: TextStyle(
            color: Color(0xFF22215B),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Color(0xFF22215B),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: 75,
                      height: 75,
                      child: Image.asset("assets/images/profile.png",
                          fit: BoxFit.cover),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Neelesh Chaudhary",
                      style: TextStyle(
                        color: Color(0xFF22215B),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "UI / UX Designer",
                      style: TextStyle(
                        color: Color(0xFF22215B),
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF22215B).withOpacity(0.6),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 40,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF317B),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: Text(
                            "Pro",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          onTap: () => Get.offAllNamed(Routes.PROFIL_BLACK),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Folders",
                  style: TextStyle(
                    color: Color(0xFF22215B),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/icons/add.png"),
                      Image.asset("assets/icons/settings.png"),
                      Image.asset("assets/icons/vector.png"),
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
                Text(
                  "Recent Uploads",
                  style: TextStyle(
                    color: Color(0xFF22215B),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset("assets/icons/sort.png"),
              ],
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              child: Image.asset("assets/icons/word.png", fit: BoxFit.cover),
            ),
            title: Text(
              "Projects.docx",
              style: TextStyle(
                color: Color(0xFF22215B),
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "November 22.2020",
              style: TextStyle(
                color: Color(0xFF22215B).withOpacity(0.6),
              ),
            ),
            trailing: Text(
              "300kb",
              style: TextStyle(
                color: Color(0xFF22215B).withOpacity(0.6),
              ),
            ),
          ),
        ],
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
        borderRadius: BorderRadius.circular(15),
      ),
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
