import 'package:codecell_marchant_happ_app/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../widgets/custom_bottom_navigation.dart';

class Restaurants extends StatefulWidget {
  const Restaurants({Key? key}) : super(key: key);

  @override
  State<Restaurants> createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFAF9F9),
        body: Column(
          children: [
            //!TODO: need to add custom design in appbar
            Container(
              height: AppBar().preferredSize.height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff318AC4),
                    Color(0xff4CA37C),
                  ],
                ),
              ),

              //Appbar Icons
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width / 15),
                child: Row(
                  children: [
                    Icon(
                      Icons.sort,
                      color: AppColors.white,
                    ),
                    SizedBox(width: width * 0.24),
                    Text(
                      'Restaurants',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: width * 0.1),
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: AppColors.white,
                          size: 35,
                        ),
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: height * 0.03),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width / 15,
              ),
              child: Stack(
                children: [
                  Container(
                    width: width * 1,
                    height: height * 0.09,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 213, 214, 218),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(5, 5),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Notifications',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Card Start
            SizedBox(height: height * 0.03),
            Padding(
              padding: EdgeInsets.only(right: width / 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: width * 0.08,
                    width: width * 0.12,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Enable',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff118286),
                        padding: const EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: width * 0.08,
                    width: width * 0.12,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Disable',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff878A92),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xffC4C4C4),
                        padding: const EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //!Scroll is not working
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  EarnPointsWidget(width: width, height: height),
                  EarnPointsWidget(width: width, height: height),
                  EarnPointsWidget(width: width, height: height),
                  EarnPointsWidget(width: width, height: height),
                ],
              ),
            ),
            //Card End
          ],
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}

class EarnPointsWidget extends StatelessWidget {
  const EarnPointsWidget({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => CustomDialog1(height: height, width: width),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(
          left: width / 15,
          right: width / 15,
          top: height * 0.03,
        ),
        child: Container(
          width: width * 1,
          height: height * 0.09,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffEFF1FF).withOpacity(0.75),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 174, 226, 241),
                spreadRadius: 0,
                blurRadius: 10,
                offset: Offset(5, 5),
              ),
            ],
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Image.asset('assets/images/foodpanda.png'),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Review this item for',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          '10 ',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffE37A29),
                          ),
                        ),
                        Text(
                          'points !',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDialog1 extends StatelessWidget {
  const CustomDialog1({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: SizedBox(
        height: height * 0.3,
        width: width * 0.8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Review ',
                  style: TextStyle(
                    color: Color(0xffCC002A),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'this site for',
                  style: TextStyle(
                    color: AppColors.blackH1,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '100 ',
                  style: TextStyle(
                    color: Color(0xffF7931A),
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'points !',
                  style: TextStyle(
                    color: AppColors.blackH1,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Container(
              width: width * 0.4,
              padding: EdgeInsets.only(top: height * 0.06),
              child: ElevatedButton(
                onPressed: () {
                  Get.back();
                  showDialog(
                    context: context,
                    builder: (context) =>
                        CustomDialog2(height: height, width: width),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xffEFF1FF).withOpacity(0.8),
                ),
                child: const Text(
                  'Go to site',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDialog2 extends StatelessWidget {
  const CustomDialog2({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Stack(
        children: [
          Lottie.network(
            'https://assets9.lottiefiles.com/packages/lf20_prpslttf.json',
            height: height * 0.35,
            width: width * 0.8,
          ),
          SizedBox(
            height: height * 0.35,
            width: width * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    'Congratulations !!! ',
                    style: TextStyle(
                      color: Color(0xffCC002A),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      shadows: [
                        Shadow(
                          color: Color.fromARGB(255, 9, 46, 77),
                          offset: Offset(0, 2),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'You have received',
                      style: TextStyle(
                        color: AppColors.blackH1,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '100 ',
                      style: TextStyle(
                        color: Color(0xffF7931A),
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'points!',
                      style: TextStyle(
                        color: AppColors.blackH1,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: width * 0.4,
                  padding: EdgeInsets.only(top: height * 0.06),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffEFF1FF).withOpacity(0.8),
                    ),
                    child: const Text(
                      'Done',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
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
