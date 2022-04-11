import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

import '../utils/Colors.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
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
    return SafeArea(
      child: Scaffold(
        appBar: NewGradientAppBar(
          title: Text(
            'Task',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: Icon(
            Icons.sort,
            color: AppColors.white,
          ),
          centerTitle: true,
          actions: [
            Icon(
              Icons.search,
              color: AppColors.white,
              size: 35,
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80',
              ),
            ),
            SizedBox(width: width / 15)
          ],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff318AC4),
              Color(0xff4CA37C),
            ],
          ),
        ),
        backgroundColor: Color(0xffFAF9F9),
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
                    boxShadow: [
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
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                        width: 10.0,
                        color: Color(0xff3756CF),
                      ),
                    ),
                    tabs: [
                      Container(
                        height: height * 0.07,
                        width: width * 0.4,
                        child: Center(
                          child: Text(
                            'Points',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xffE37A29),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: height * 0.07,
                        width: width * 0.4,
                        child: Center(
                          child: Text(
                            'Stamps',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff1E130B),
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
              Container(
                height: height,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    //Points Page
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: height * 0.02),
                        Center(
                          child: DefaultTabController(
                            length: 2,
                            child: Column(
                              children: <Widget>[
                                Center(
                                  child: Container(
                                    color: Color(0xffFAF9F9),
                                    width: width,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ButtonsTabBar(
                                            decoration: BoxDecoration(
                                              color: Color(0xffFAF9F9),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                    255,
                                                    213,
                                                    214,
                                                    218,
                                                  ),
                                                  spreadRadius: 0,
                                                  blurRadius: 5,
                                                  offset: Offset(3, 5),
                                                ),
                                              ],
                                            ),
                                            unselectedBackgroundColor:
                                                Color(0xffF2F3FB),
                                            unselectedLabelStyle:
                                                TextStyle(color: Colors.grey),
                                            labelStyle: TextStyle(
                                              color: Color(0xff338CBC),
                                              fontWeight: FontWeight.bold,
                                            ),
                                            tabs: [
                                              Tab(
                                                text: "Points from follow",
                                              ),
                                              Tab(
                                                text: "Points from task",
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: height * 0.6,
                                  child: TabBarView(
                                    children: <Widget>[
                                      Center(
                                        child: Column(
                                          children: [
                                            SizedBox(height: height * 0.04),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: width / 20,
                                              ),
                                              height: height * 0.1,
                                              width: width * 0.8,
                                              decoration: BoxDecoration(
                                                color: Color(0xffEFF1FF),
                                                borderRadius:
                                                    BorderRadius.circular(23),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Lorem ipsum dummy text for the\noffer region and enable options',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  Icon(Icons.arrow_drop_down)
                                                ],
                                              ),
                                            ),

                                            //Facebook
                                            SizedBox(height: height * 0.03),
                                            Container(
                                              height: height * 0.1,
                                              width: width * 0.8,
                                              decoration: BoxDecoration(
                                                color: Color(0xffEFF1FF),
                                                borderRadius:
                                                    BorderRadius.circular(23),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/fb.png',
                                                  ),
                                                  Column(
                                                    children: [
                                                      SizedBox(
                                                        height: height * 0.03,
                                                      ),
                                                      Text(
                                                        'Review this item for',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            '10 ',
                                                            style: TextStyle(
                                                              color: AppColors
                                                                  .orange,
                                                              fontSize: 18,
                                                            ),
                                                          ),
                                                          Text(
                                                            'points !',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Twitter
                                            SizedBox(height: height * 0.03),
                                            Container(
                                              height: height * 0.1,
                                              width: width * 0.8,
                                              decoration: BoxDecoration(
                                                color: Color(0xffEFF1FF),
                                                borderRadius:
                                                    BorderRadius.circular(23),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/twitter.png',
                                                  ),
                                                  Column(
                                                    children: [
                                                      SizedBox(
                                                        height: height * 0.03,
                                                      ),
                                                      Text(
                                                        'Review this item for',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            '10 ',
                                                            style: TextStyle(
                                                              color: AppColors
                                                                  .orange,
                                                              fontSize: 18,
                                                            ),
                                                          ),
                                                          Text(
                                                            'points !',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            //Instagram
                                            SizedBox(height: height * 0.03),
                                            Container(
                                              height: height * 0.1,
                                              width: width * 0.8,
                                              decoration: BoxDecoration(
                                                color: Color(0xffEFF1FF),
                                                borderRadius:
                                                    BorderRadius.circular(23),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/insta.png',
                                                  ),
                                                  Column(
                                                    children: [
                                                      SizedBox(
                                                        height: height * 0.03,
                                                      ),
                                                      Text(
                                                        'Review this item for',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            '10 ',
                                                            style: TextStyle(
                                                              color: AppColors
                                                                  .orange,
                                                              fontSize: 18,
                                                            ),
                                                          ),
                                                          Text(
                                                            'points !',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Center(
                                        child: Column(
                                          children: [
                                            SizedBox(height: height * 0.04),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: width / 20,
                                              ),
                                              height: height * 0.1,
                                              width: width * 0.8,
                                              decoration: BoxDecoration(
                                                color: Color(0xffEFF1FF),
                                                borderRadius:
                                                    BorderRadius.circular(23),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: width * 0.02,
                                                    top: height * 0.03,
                                                    child: Text(
                                                      'Lorem ipsum dummy text for the offer\nregion and enable options',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: width * 0.55,
                                                    top: height * 0.055,
                                                    child: Container(
                                                      height: height * 0.03,
                                                      width: width * 0.15,
                                                      child: TextButton(
                                                        onPressed: () {},
                                                        style: TextButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              Color(
                                                            0xff4B99C4,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          'Edit',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 10,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
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
                      ],
                    ),

                    //Stamp page
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: height * 0.02),
                        Center(
                          child: DefaultTabController(
                            length: 2,
                            child: Column(
                              children: <Widget>[
                                Center(
                                  child: Container(
                                    color: Color(0xffFAF9F9),
                                    width: width,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ButtonsTabBar(
                                            decoration: BoxDecoration(
                                              color: Color(0xffFAF9F9),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                    255,
                                                    213,
                                                    214,
                                                    218,
                                                  ),
                                                  spreadRadius: 0,
                                                  blurRadius: 5,
                                                  offset: Offset(3, 5),
                                                ),
                                              ],
                                            ),
                                            unselectedBackgroundColor:
                                                Color(0xffF2F3FB),
                                            unselectedLabelStyle:
                                                TextStyle(color: Colors.grey),
                                            labelStyle: TextStyle(
                                              color: Color(0xff338CBC),
                                              fontWeight: FontWeight.bold,
                                            ),
                                            tabs: [
                                              Tab(
                                                text: "Set stamps offer",
                                              ),
                                              Tab(
                                                text: "Stamp level",
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: height * 0.6,
                                  child: TabBarView(
                                    children: <Widget>[
                                      Center(
                                        child: Column(
                                          children: [
                                            SizedBox(height: height * 0.04),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: width / 20,
                                              ),
                                              height: height * 0.1,
                                              width: width * 0.8,
                                              decoration: BoxDecoration(
                                                color: Color(0xffEFF1FF),
                                                borderRadius:
                                                    BorderRadius.circular(23),
                                              ),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Need ',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .check_box_outline_blank_outlined,
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(Icons
                                                          .arrow_drop_up_outlined),
                                                      Icon(
                                                        Icons.arrow_drop_down,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(width: width * 0.05),
                                                  Text(
                                                    'Points for this offer',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: height * 0.03),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: width / 20,
                                              ),
                                              height: height * 0.25,
                                              width: width * 0.6,
                                              decoration: BoxDecoration(
                                                color: Color(0xffEFF1FF),
                                                borderRadius:
                                                    BorderRadius.circular(23),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Lorem ispum\noffer for the points\nand stamps ',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Center(
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              SizedBox(height: height * 0.04),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: width / 20,
                                                ),
                                                height: height * 0.18,
                                                width: width * 0.8,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffEFF1FF),
                                                  borderRadius:
                                                      BorderRadius.circular(23),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      left: width * 0.02,
                                                      top: height * 0.03,
                                                      child: Text(
                                                        'Stamp level 1',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color:
                                                              Color(0xff004165),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: width * 0.02,
                                                      top: height * 0.06,
                                                      child: Text(
                                                        'lorem ispus offer for points and stamps \nbeing on the level of 1 since its not yet \nto be secured by the merchant',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: width * 0.55,
                                                      top: height * 0.13,
                                                      child: Container(
                                                        height: height * 0.03,
                                                        width: width * 0.15,
                                                        child: TextButton(
                                                          onPressed: () {},
                                                          style: TextButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                Color(
                                                              0xff4B99C4,
                                                            ),
                                                          ),
                                                          child: Text(
                                                            'Edit',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 10,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: height * 0.03),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: width / 20,
                                                ),
                                                height: height * 0.18,
                                                width: width * 0.8,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffEFF1FF),
                                                  borderRadius:
                                                      BorderRadius.circular(23),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      left: width * 0.02,
                                                      top: height * 0.03,
                                                      child: Text(
                                                        'Stamp level 1',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color:
                                                              Color(0xff004165),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: width * 0.02,
                                                      top: height * 0.06,
                                                      child: Text(
                                                        'lorem ispus offer for points and stamps \nbeing on the level of 1 since its not yet \nto be secured by the merchant',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: width * 0.55,
                                                      top: height * 0.13,
                                                      child: Container(
                                                        height: height * 0.03,
                                                        width: width * 0.15,
                                                        child: TextButton(
                                                          onPressed: () {},
                                                          style: TextButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                Color(
                                                              0xff4B99C4,
                                                            ),
                                                          ),
                                                          child: Text(
                                                            'Edit',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 10,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: height * 0.03),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: width / 20,
                                                ),
                                                height: height * 0.18,
                                                width: width * 0.8,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffEFF1FF),
                                                  borderRadius:
                                                      BorderRadius.circular(23),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      left: width * 0.02,
                                                      top: height * 0.03,
                                                      child: Text(
                                                        'Stamp level 1',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color:
                                                              Color(0xff004165),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: width * 0.02,
                                                      top: height * 0.06,
                                                      child: Text(
                                                        'lorem ispus offer for points and stamps \nbeing on the level of 1 since its not yet \nto be secured by the merchant',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: width * 0.55,
                                                      top: height * 0.13,
                                                      child: Container(
                                                        height: height * 0.03,
                                                        width: width * 0.15,
                                                        child: TextButton(
                                                          onPressed: () {},
                                                          style: TextButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                Color(
                                                              0xff4B99C4,
                                                            ),
                                                          ),
                                                          child: Text(
                                                            'Edit',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 10,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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


/**
 * Stack(
                          children: [
                            SvgPicture.asset('assets/images/rectangle101.svg'),
                            Positioned(
                              top: -height * 0.007,
                              left: -width * 0.01,
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/white_rec.svg',
                                  ),
                                  Positioned(
                                    top: height * 0.023,
                                    left: width * 0.05,
                                    child: Text(
                                      'Points from follow',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff338CBC),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: height * 0.017,
                              left: width * 0.47,
                              child: Text(
                                'Points from task',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffCDCFE0),
                                ),
                              ),
                            ),
                          ],
                        ),
 */

/***
 *        SizedBox(height: height * 0.03),
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
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 213, 214, 218),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: Offset(5, 5),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width / 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Points',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffE37A29),
                              ),
                            ),
                            Text(
                              'Stamps',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff1E130B),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //Half bar
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.075),
                      child: Container(
                        height: height * 0.015,
                        width: width * 0.45,
                        decoration: BoxDecoration(
                          color: Color(0xff3756CF),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                            topLeft: Radius.circular(6),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
 */
