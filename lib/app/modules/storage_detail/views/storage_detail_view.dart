import 'package:dirbbox/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/storage_detail_controller.dart';

class StorageDetailView extends GetView<StorageDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFE5E5E5),
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
        title: Text(
          'Storage Details',
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
          SizedBox(height: 30),
          Container(
            width: 100,
            height: 100,
            child: Image.asset(
              "assets/images/storage.png",
            ),
          ),
          SizedBox(height: 30),
          Column(
            children: [
              Text(
                "Available",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF22215B),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "43.36 GB",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF22215B),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Total 128 GB",
                style: TextStyle(
                  fontSize: 19,
                  color: Color(0xFF22215B),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
          SizedBox(height: 30),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildDetails(
                      image: Image.asset("assets/images/titik22215B.png"),
                      title: "Design Files",
                      kapasitas: "38.66 GB",
                      color: Color(0xFF22215B),
                    ),
                    _buildDetails(
                      image: Image.asset("assets/images/garis22215B.png"),
                      title: "",
                      kapasitas: "",
                      color: Color(0xFFFFFFFF),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDetails(
                  image: Image.asset("assets/images/titikFFC700.png"),
                  title: "Images        ",
                  kapasitas: "24.80 GB",
                  color: Color(0xFFFFC700),
                ),
                _buildDetails(
                  image: Image.asset("assets/images/garisFFC700.png"),
                  title: "",
                  kapasitas: "",
                  color: Color(0xFFFFFFFF),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDetails(
                  image: Image.asset("assets/images/titik4CE364.png"),
                  title: "Video          ",
                  kapasitas: "12.60 GB",
                  color: Color(0xFF4CE364),
                ),
                _buildDetails(
                  image: Image.asset("assets/images/garis4CE364.png"),
                  title: "",
                  kapasitas: "",
                  color: Color(0xFFFFFFFF),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDetails(
                  image: Image.asset("assets/images/titik567DF4.png"),
                  title: "Documents",
                  kapasitas: "12.60 GB",
                  color: Color(0xFF567DF4),
                ),
                _buildDetails(
                  image: Image.asset("assets/images/garis567DF4.png"),
                  title: "",
                  kapasitas: "",
                  color: Color(0xFFFFFFFF),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDetails(
                  image: Image.asset("assets/images/titikFF842B.png"),
                  title: "Others        ",
                  kapasitas: "2.01  GB",
                  color: Color(0xFFFF842B),
                ),
                _buildDetails(
                  image: Image.asset("assets/images/garisFF842B.png"),
                  title: "",
                  kapasitas: "",
                  color: Color(0xFFFFFFFF),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: Text(
              "Export Details",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF22215B),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _buildDetails extends StatelessWidget {
  _buildDetails({
    Key? key,
    required this.title,
    required this.kapasitas,
    required this.color,
    required this.image,
  }) : super(key: key);
  final String title;
  final String kapasitas;
  final Color color;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.4,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image,
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                kapasitas,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
