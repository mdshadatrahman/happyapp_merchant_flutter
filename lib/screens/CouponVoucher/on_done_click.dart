import 'package:codecell_marchant_happ_app/screens/uploaded_vouchers.dart';
import 'package:codecell_marchant_happ_app/utils/drawer.dart';
import 'package:codecell_marchant_happ_app/widgets/custom_ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../utils/Colors.dart';
import '../../widgets/custom_bottom_navigation.dart';

class OnDoneClick extends StatefulWidget {
  const OnDoneClick({Key? key}) : super(key: key);

  @override
  State<OnDoneClick> createState() => _OnDoneClickState();
}

class _OnDoneClickState extends State<OnDoneClick>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
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
        key: _key,
        drawer: CustomDrawer(height: height, width: width),
        backgroundColor: Color(0xffFAF9F9),
        appBar: NewGradientAppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Add',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Voucher/Coupons',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          leading: GestureDetector(
            onTap: () {
              _key.currentState!.openDrawer();
              print('tapped');
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
        body: Column(
          children: [
            //Body
            SizedBox(height: height * 0.03),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width / 15,
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
                    height: height * 0.08,
                    width: width * 0.4,
                    child: Center(
                      child: Text(
                        'Receive points\nfrom uploads',
                        textAlign: TextAlign.center,
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
                        'Uploaded\nvouchers',
                        textAlign: TextAlign.center,
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
            SizedBox(
              height: height * 0.09,
            ),
            //Tabbar view
            Container(
              height: height * 0.6,
              child: TabBarView(
                controller: _tabController,
                children: [
                  SingleChildScrollView(
                    child: Container(
                      child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomTicket(width: width, height: height),
                            Text(
                              'Total Value X',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: height * 0.01),
                            Text(
                              'Total Points given Y',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: height * 0.01),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Post Offer'),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff4B99C4),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  //Uploded voucher
                  Center(
                    child: Container(
                      child: Text('Uploaded Voucher'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}