import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/Colors.dart';
import '../widgets/custom_bottom_navigation.dart';
import 'history_page_pointsstamps.dart';

class HistoryPagePurchase extends StatefulWidget {
  const HistoryPagePurchase({Key? key}) : super(key: key);

  @override
  State<HistoryPagePurchase> createState() => _HistoryPagePurchaseState();
}

class _HistoryPagePurchaseState extends State<HistoryPagePurchase> {
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
                    SizedBox(width: width * 0.29),
                    Text(
                      'History',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: width * 0.155),
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

            //Points, Stamps

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
                    child: GestureDetector(
                      onTap: () {
                        Get.off(
                          () => const HistoryPage(),
                          transition: Transition.noTransition,
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width / 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Points & Stapm',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff1E130B),
                              ),
                            ),
                            Text(
                              'Purchase',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffE37A29),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //Half bar
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * 0.416,
                      top: height * 0.075,
                    ),
                    child: Container(
                      height: height * 0.015,
                      width: width * 0.45,
                      decoration: const BoxDecoration(
                        color: Color(0xff118286),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          topLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                          topRight: Radius.circular(6),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Card Start
            //!Scroll is not working
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  EarnPointsWidget(width: width, height: height),
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
    return Padding(
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
    );
  }
}
