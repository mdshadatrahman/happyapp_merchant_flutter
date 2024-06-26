import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:codecell_marchant_happ_app/utils/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

import '../utils/Colors.dart';
import '../widgets/custom_bottom_navigation.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

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
        key: _key,
        drawer: CustomDrawer(width: width, height: height),
        appBar: NewGradientAppBar(
          title: Text(
            'Task',
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
            child: Icon(
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
                            'Points',
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
              SizedBox(
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
                                    color: const Color(0xffFAF9F9),
                                    width: width,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ButtonsTabBar(
                                            decoration: BoxDecoration(
                                              color: const Color(0xffFAF9F9),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: const [
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
                                                const Color(0xffF2F3FB),
                                            unselectedLabelStyle:
                                                const TextStyle(
                                                    color: Colors.grey),
                                            labelStyle: const TextStyle(
                                              color: Color(0xff338CBC),
                                              fontWeight: FontWeight.bold,
                                            ),
                                            tabs: const [
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
                                SizedBox(
                                  height: height * 0.6,
                                  child: TabBarView(
                                    children: <Widget>[
                                      Center(
                                        child: Column(
                                          children: [
                                            SizedBox(height: height * 0.04),

                                            //Facebook
                                            Container(
                                              height: height * 0.1,
                                              width: width * 0.8,
                                              decoration: BoxDecoration(
                                                color: const Color(0xffEFF1FF),
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
                                                      const Text(
                                                        'Review this item for',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: const [
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
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: height * 0.05,
                                                      left: width * 0.07,
                                                    ),
                                                    child: Container(
                                                      color: AppColors.orange,
                                                      child: Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          horizontal:
                                                              width * 0.01,
                                                          vertical:
                                                              height * 0.002,
                                                        ),
                                                        child: const Text(
                                                          'Ongoing',
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),

                                            //Twitter
                                            SizedBox(height: height * 0.03),
                                            Container(
                                              height: height * 0.1,
                                              width: width * 0.8,
                                              decoration: BoxDecoration(
                                                color: const Color(0xffEFF1FF),
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
                                                      const Text(
                                                        'Review this item for',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: const [
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
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: height * 0.05,
                                                      left: width * 0.07,
                                                    ),
                                                    child: Container(
                                                      width: width * 0.15,
                                                      color: AppColors.red,
                                                      child: Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          horizontal:
                                                              width * 0.01,
                                                          vertical:
                                                              height * 0.002,
                                                        ),
                                                        child: const Text(
                                                          'Draft',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            //Instagram
                                            SizedBox(height: height * 0.03),
                                            Container(
                                              height: height * 0.1,
                                              width: width * 0.8,
                                              decoration: BoxDecoration(
                                                color: const Color(0xffEFF1FF),
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
                                                      const Text(
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
                                                          const Text(
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
                                                color: const Color(0xffEFF1FF),
                                                borderRadius:
                                                    BorderRadius.circular(23),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  SizedBox(width: width * 0.25),
                                                  const Text(
                                                    'Create an offer',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  SizedBox(width: width * 0.1),
                                                  const Icon(
                                                    Icons.arrow_drop_down,
                                                  )
                                                ],
                                              ),
                                            ),

                                            //Facebook
                                            SizedBox(height: height * 0.03),
                                            Container(
                                              height: height * 0.1,
                                              width: width * 0.8,
                                              decoration: BoxDecoration(
                                                color: const Color(0xffEFF1FF),
                                                borderRadius:
                                                    BorderRadius.circular(23),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/blue.png',
                                                  ),
                                                  Column(
                                                    children: [
                                                      SizedBox(
                                                        height: height * 0.03,
                                                      ),
                                                      const Text(
                                                        'Offer text for random calls',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                          height:
                                                              height * 0.01),
                                                      Container(
                                                        color: AppColors.orange,
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                            horizontal:
                                                                width * 0.01,
                                                            vertical:
                                                                height * 0.002,
                                                          ),
                                                          child: const Text(
                                                            'Show Details',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ),
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
                                                color: const Color(0xffEFF1FF),
                                                borderRadius:
                                                    BorderRadius.circular(23),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/red.png',
                                                  ),
                                                  Column(
                                                    children: [
                                                      SizedBox(
                                                        height: height * 0.03,
                                                      ),
                                                      const Text(
                                                        'Offer text for random calls',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                          height:
                                                              height * 0.01),
                                                      Container(
                                                        color: AppColors.orange,
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                            horizontal:
                                                                width * 0.01,
                                                            vertical:
                                                                height * 0.002,
                                                          ),
                                                          child: const Text(
                                                            'Show Details',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ),
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
                                                color: const Color(0xffEFF1FF),
                                                borderRadius:
                                                    BorderRadius.circular(23),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/green.png',
                                                  ),
                                                  Column(
                                                    children: [
                                                      SizedBox(
                                                        height: height * 0.03,
                                                      ),
                                                      const Text(
                                                        'Offer text for random calls',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                          height:
                                                              height * 0.01),
                                                      Container(
                                                        color: AppColors.orange,
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                            horizontal:
                                                                width * 0.01,
                                                            vertical:
                                                                height * 0.002,
                                                          ),
                                                          child: const Text(
                                                            'Show Details',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ),
                                                      )
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
                                    color: const Color(0xffFAF9F9),
                                    width: width,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ButtonsTabBar(
                                            decoration: BoxDecoration(
                                              color: const Color(0xffFAF9F9),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: const [
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
                                                const Color(0xffF2F3FB),
                                            unselectedLabelStyle:
                                                const TextStyle(
                                                    color: Colors.grey),
                                            labelStyle: const TextStyle(
                                              color: Color(0xff338CBC),
                                              fontWeight: FontWeight.bold,
                                            ),
                                            tabs: const [
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
                                SizedBox(
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
                                                color: const Color(0xffEFF1FF),
                                                borderRadius:
                                                    BorderRadius.circular(23),
                                              ),
                                              child: Row(
                                                children: [
                                                  const Text(
                                                    'Need ',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  const Icon(
                                                    Icons
                                                        .check_box_outline_blank_outlined,
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: const [
                                                      Icon(Icons
                                                          .arrow_drop_up_outlined),
                                                      Icon(
                                                        Icons.arrow_drop_down,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(width: width * 0.05),
                                                  const Text(
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
                                                color: const Color(0xffEFF1FF),
                                                borderRadius:
                                                    BorderRadius.circular(23),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
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
                                                  color:
                                                      const Color(0xffEFF1FF),
                                                  borderRadius:
                                                      BorderRadius.circular(23),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      left: width * 0.02,
                                                      top: height * 0.03,
                                                      child: const Text(
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
                                                      child: const Text(
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
                                                      child: SizedBox(
                                                        height: height * 0.03,
                                                        width: width * 0.15,
                                                        child: TextButton(
                                                          onPressed: () {},
                                                          style: TextButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                const Color(
                                                              0xff4B99C4,
                                                            ),
                                                          ),
                                                          child: const Text(
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
                                                  color:
                                                      const Color(0xffEFF1FF),
                                                  borderRadius:
                                                      BorderRadius.circular(23),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      left: width * 0.02,
                                                      top: height * 0.03,
                                                      child: const Text(
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
                                                      child: const Text(
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
                                                      child: SizedBox(
                                                        height: height * 0.03,
                                                        width: width * 0.15,
                                                        child: TextButton(
                                                          onPressed: () {},
                                                          style: TextButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                const Color(
                                                              0xff4B99C4,
                                                            ),
                                                          ),
                                                          child: const Text(
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
                                                  color:
                                                      const Color(0xffEFF1FF),
                                                  borderRadius:
                                                      BorderRadius.circular(23),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      left: width * 0.02,
                                                      top: height * 0.03,
                                                      child: const Text(
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
                                                      child: const Text(
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
                                                      child: SizedBox(
                                                        height: height * 0.03,
                                                        width: width * 0.15,
                                                        child: TextButton(
                                                          onPressed: () {},
                                                          style: TextButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                const Color(
                                                              0xff4B99C4,
                                                            ),
                                                          ),
                                                          child: const Text(
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
      ),
    );
  }
}
