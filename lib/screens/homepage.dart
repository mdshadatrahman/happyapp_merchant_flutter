import 'package:codecell_marchant_happ_app/screens/points_page.dart';
import 'package:codecell_marchant_happ_app/screens/received_coupons.dart';
import 'package:codecell_marchant_happ_app/screens/tasks_page.dart';
import 'package:codecell_marchant_happ_app/utils/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../utils/Colors.dart';
import 'add_voucher_coupon.dart';
import 'history_page_pointsstamps.dart';
import 'restaurants_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  TabController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: CustomDrawer(height: height, width: width),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  //Top Background
                  Stack(
                    children: [
                      Container(
                        height: height / 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xff318AC4),
                              Color(0xff4CA37C),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: height / 6),
                        child: ClipPath(
                          clipper: WaveClipperOne(
                            flip: true,
                            reverse: true,
                          ),
                          child: Container(
                            height: height / 6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0x4200FF66),
                                  Color(0x15254864),
                                  // Colors.red,
                                  // Colors.green,
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: width / 15,
                      right: width / 15,
                      top: height / 35,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                _key.currentState!.openDrawer();
                                print('tapped');
                              },
                              child: Icon(
                                Icons.sort,
                                color: Colors.white,
                                size: 36,
                              ),
                            ),
                            Text(
                              'Total Points 100',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: height / 15),
                        //Search bar

                        Container(
                          height: height / 17,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: height * 0.001,
                                  left: width * 0.05,
                                ),
                                height: height / 13,
                                width: width / 1.6,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search',
                                    hintStyle: TextStyle(
                                      color: Color(0x456C8B80),
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.05),
                              Icon(
                                Icons.search,
                                size: 30,
                                color: AppColors.blackH1,
                              ),
                              SizedBox(width: width * 0.01),
                              Icon(
                                Icons.tune,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  //Three Boxes
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: height / 3.75,
                      ),
                      child: Stack(
                        children: [
                          //Box1
                          GestureDetector(
                            onTap: () {
                              Get.to(() => TasksPage());
                            },
                            child: Container(
                              height: height * 0.115,
                              width: width * 0.3,
                              decoration: BoxDecoration(
                                color: Color(0xffF7931A),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: height * 0.05,
                                    width: height * 0.05,
                                    margin: EdgeInsets.only(
                                      bottom: 10,
                                      right: width * 0.025,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xff3A260D).withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(13),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(width * 0.03),
                                      child: SvgPicture.asset(
                                          'assets/images/uparrow.svg'),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      // bottom: 10,
                                      right: width * 0.025,
                                    ),
                                    child: Text(
                                      'Tasks',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //Box 2
                          GestureDetector(
                            onTap: () {
                              Get.to(() => PointsPage());
                            },
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: width * 0.22,
                              ),
                              child: Container(
                                height: height * 0.115,
                                width: width * 0.3,
                                decoration: BoxDecoration(
                                  color: Color(0xff1F65AB),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: height * 0.05,
                                      width: height * 0.05,
                                      margin: EdgeInsets.only(
                                        bottom: 10,
                                        right: width * 0.025,
                                      ),
                                      decoration: BoxDecoration(
                                        color:
                                            Color(0xffFFFFFF).withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(width * 0.03),
                                        child: SvgPicture.asset(
                                            'assets/images/uparrow.svg'),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        // bottom: 10,
                                        right: width * 0.025,
                                      ),
                                      child: Text(
                                        'Points',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          //Box3
                          GestureDetector(
                            onTap: () {
                              Get.to(() => HistoryPage());
                            },
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: width * 0.44,
                              ),
                              child: Container(
                                height: height * 0.115,
                                width: width * 0.3,
                                decoration: BoxDecoration(
                                  color: Color(0xff462DAB),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: height * 0.05,
                                      width: height * 0.05,
                                      margin: EdgeInsets.only(
                                        bottom: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        color:
                                            Color(0xffFFFFFF).withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(width * 0.03),
                                        child: SvgPicture.asset(
                                          'assets/images/uparrow.svg',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'History',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: height * 0.05),
              Container(
                padding: EdgeInsets.only(
                  left: width / 15,
                  right: width / 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => AddVoucherCoupon());
                          },
                          child: Container(
                            width: width * 0.4,
                            height: height * 0.12,
                            decoration: BoxDecoration(
                              color: Color(0xffE5E8EE),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Add',
                                      style: TextStyle(
                                        color: Color(0xff0E8A4C),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      ' voucher',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'coupon',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          width: width * 0.3,
                          color: Color(0xffF7931A),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() =>
                                ReceivedCoupons()); //! Changed from buyCoupons
                          },
                          child: Container(
                            width: width * 0.4,
                            height: height * 0.12,
                            decoration: BoxDecoration(
                              color: Color(0xffE5E8EE),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Buy',
                                      style: TextStyle(
                                        color: Color(0xff25ADF9),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      ' voucher',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'coupon',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          width: width * 0.3,
                          color: Color(0xffEE85FF),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.04),
              //Our offers
              Padding(
                padding: EdgeInsets.only(
                  left: width / 15,
                ),
                child: Text(
                  'Our offers',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.blackH1,
                  ),
                ),
              ),
              SizedBox(height: height * 0.035),

              //Discount field
              Padding(
                padding: EdgeInsets.only(
                  left: width / 15,
                  right: width / 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: height * 0.15,
                      width: width * 0.77,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color(0xff577399),
                            Color(0xffBDD5EA),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05,
                          vertical: height * 0.01,
                        ),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    Icons.more_horiz,
                                    size: 40,
                                    color: AppColors.blackH1,
                                  ),
                                ),
                              ],
                            ),
                            Center(
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/randomlogo.svg',
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.025),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: height * 0.03),
                                        Text(
                                          '50% flat discount',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: AppColors.blackH1,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                            vertical: 6,
                                          ),
                                          width: width * 0.48,
                                          height: height * 0.01,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                            child: LinearProgressIndicator(
                                              value: 0.5,
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                Color(0xff577399),
                                              ),
                                              backgroundColor:
                                                  Color(0xffEAF1F9),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Get voucher NOW !',
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.blackH2,
                                              ),
                                            ),
                                            SizedBox(width: width * 0.05),
                                            Row(
                                              children: [
                                                Text(
                                                  'See Details',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.blackH3,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward_outlined,
                                                  color: AppColors.blackH3,
                                                  size: 20,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
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
                    Icon(
                      Icons.arrow_circle_right_outlined,
                      color: AppColors.blackH3,
                    )
                  ],
                ),
              ),

              SizedBox(height: height * 0.035),
              Padding(
                padding: EdgeInsets.only(
                  left: width / 15,
                ),
                child: Text(
                  'Categories For You',
                  style: TextStyle(
                    color: AppColors.blackH1,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: height * 0.015),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width / 15, bottom: width / 15),
                  child: Row(
                    children: [
                      //Restaurants
                      GestureDetector(
                        onTap: () {
                          Get.to(() => Restaurants());
                        },
                        child: Padding(
                          padding: EdgeInsets.only(top: height * 0.02),
                          child: Container(
                            height: width * 0.3,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 146, 146, 146),
                                  blurRadius: 5.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(
                                    0.0,
                                    0.0,
                                  ), // shadow direction: bottom right
                                )
                              ],
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  //TODO: how to refine the gradient property
                                  Color.fromARGB(255, 247, 164, 145),
                                  Color(0xffF5F5F5),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: width * 0.15,
                                    width: width * 0.15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Color(0xffE5EDFF),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/2927/2927347.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: height * 0.01),
                                  Text(
                                    'Restaurants',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 241, 92, 75),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: width / 15),
                      //Groceries
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.02),
                        child: Container(
                          height: width * 0.3,
                          width: width * 0.3,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 146, 146, 146),
                                blurRadius: 5.0,
                                spreadRadius: 0.0,
                                offset: Offset(
                                  1.0,
                                  1.0,
                                ), // shadow direction: bottom right
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                //TODO: how to refine the gradient property
                                Color.fromARGB(255, 218, 231, 164),
                                Color(0xffF5F5F5),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: width * 0.15,
                                  width: width * 0.15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xffE5EDFF),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/2927/2927347.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: height * 0.01),
                                Text(
                                  'Groceries',
                                  style: TextStyle(
                                    color: Color(0xff80A100),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: width / 15),
                      //Food Delivery
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.02),
                        child: Container(
                          height: width * 0.3,
                          width: width * 0.3,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 146, 146, 146),
                                blurRadius: 5.0,
                                spreadRadius: 0.0,
                                offset: Offset(
                                  1.0,
                                  1.0,
                                ), // shadow direction: bottom right
                              )
                            ],
                            // color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                //TODO: how to refine the gradient property
                                Color.fromARGB(255, 245, 230, 190),
                                Color(0xffF5F5F5),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: width * 0.15,
                                  width: width * 0.15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xffE5EDFF),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/2927/2927347.png',
                                    ),
                                  ),
                                ),
                                SizedBox(height: height * 0.01),
                                Text(
                                  'Restaurants',
                                  style: TextStyle(
                                    color: Color(0xffF7CA49),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: width / 15),
                    ],
                  ),
                ),
              ),

              //Nearby Merchants
              Padding(
                padding: EdgeInsets.only(left: width / 15),
                child: Text(
                  'Nearby Merchants',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: height * 0.015),
              //!Nearby Merchants tile
              NearbyMerchantsTile(width: width, height: height),
              NearbyMerchantsTile(width: width, height: height),
              SizedBox(height: height * 0.015),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/Vector.svg'),
              label: 'Overview',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/calendar.svg'),
              label: 'This Month',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/ticket.svg'),
              label: 'Offers',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/settings.svg'),
              label: 'Settings',
            ),
          ],
          currentIndex: 1,
          selectedItemColor: Color(0xff6347EB),
          // onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class NearbyMerchantsTile extends StatelessWidget {
  const NearbyMerchantsTile({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width / 15,
        vertical: height * 0.015,
      ),
      child: Stack(
        children: [
          Container(
            height: height * 0.15,
            width: width * 0.9,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/images/uberEats.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //? 35 happy points
          //TODO: Needs to fix the vector
          Padding(
            padding: EdgeInsets.only(top: height * 0.03),
            child: Container(
              height: height * 0.025,
              width: width * 0.6,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff2C3659),
                    Color(0xff33A4BB),
                    Color(0xffEE786B),
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: width * 0.02),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '3% Happi Points | Upto 20 points',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
