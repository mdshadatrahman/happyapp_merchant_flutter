import 'package:codecell_marchant_happ_app/utils/drawer.dart';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

import '../utils/Colors.dart';
import '../widgets/custom_bottom_navigation.dart';

class OurOfferPage extends StatefulWidget {
  const OurOfferPage({Key? key}) : super(key: key);

  @override
  State<OurOfferPage> createState() => _OurOfferPageState();
}

class _OurOfferPageState extends State<OurOfferPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 7);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CustomBottomNavigationBar(),
          ),
        );
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          key: _key,
          drawer: CustomDrawer(width: width, height: height),
          appBar: NewGradientAppBar(
            title: const Text(
              'Offer',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            leading: GestureDetector(
              onTap: () {
                _key.currentState!.openDrawer();
              },
              child: const Icon(
                Icons.sort,
                color: AppColors.white,
              ),
            ),
            centerTitle: true,
            actions: [
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
              SizedBox(width: width / 15)
            ],
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff318AC4),
                Color(0xff4CA37C),
              ],
            ),
          ),
          backgroundColor: const Color(0xffFAF9F9),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width / 15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 213, 214, 218),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: Offset(3, 5),
                        ),
                      ],
                    ),
                    child: TabBar(
                      controller: _tabController,
                      isScrollable: true,
                      indicator: const UnderlineTabIndicator(
                        borderSide: BorderSide(
                          width: 10.0,
                          color: Color(0xff3756CF),
                        ),
                      ),
                      tabs: [
                        SizedBox(
                          height: height * 0.07,
                          width: width * 0.4,
                          child: const Center(
                            child: Text(
                              'General Offer',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffE37A29),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.07,
                          width: width * 0.4,
                          child: const Center(
                            child: Text(
                              'Scheduled Offer',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffE37A29),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.07,
                          width: width * 0.4,
                          child: const Center(
                            child: Text(
                              'OTP Offer',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffE37A29),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.07,
                          width: width * 0.4,
                          child: const Center(
                            child: Text(
                              'Visit Offer',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffE37A29),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.07,
                          width: width * 0.4,
                          child: const Center(
                            child: Text(
                              'Birthday Offer',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffE37A29),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.07,
                          width: width * 0.4,
                          child: const Center(
                            child: Text(
                              'Reminder Offer',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffE37A29),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.07,
                          width: width * 0.4,
                          child: const Center(
                            child: Text(
                              'Sharing coupon',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffE37A29),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //Main Body
                SizedBox(
                  height: height,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                            EarnPointsWidget(height: height, width: width),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
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
