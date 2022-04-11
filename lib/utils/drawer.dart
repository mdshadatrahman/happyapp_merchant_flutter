import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff318AC4),
                  Color(0xff4CA37C),
                ],
              ),
            ),
            child: ListView(
              padding: EdgeInsets.only(right: 50),
              children: [
                SizedBox(
                  height: height / 30,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Demo Hub",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (_) => home(),
                    //   ),
                    // );
                  },
                  horizontalTitleGap: .1,
                  title: Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (_) => profile_settigns(),
                    //   ),
                    // );
                  },
                  horizontalTitleGap: .1,
                  title: Text(
                    "Feed",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (_) => SteppeScreen(),
                    //   ),
                    // );
                  },
                  horizontalTitleGap: .1,
                  title: Text(
                    "Notice",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                ListTile(
                  horizontalTitleGap: .1,
                  title: Text(
                    "Points",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                ListTile(
                  horizontalTitleGap: .1,
                  title: Text(
                    "Offer",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                ListTile(
                  horizontalTitleGap: .1,
                  title: Text(
                    "Statistics",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                ListTile(
                  horizontalTitleGap: .1,
                  title: Text(
                    "More",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: height * 0.4,
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: Colors.blue,
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xff152548).withOpacity(0.6),
                    Color(0xff4200FF).withOpacity(0.6),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
