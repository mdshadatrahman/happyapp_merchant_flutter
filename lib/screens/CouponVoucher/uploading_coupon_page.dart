import 'package:codecell_marchant_happ_app/screens/CouponVoucher/on_done_click.dart';
import 'package:codecell_marchant_happ_app/utils/drawer.dart';
import 'package:codecell_marchant_happ_app/widgets/custom_ticket.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../utils/Colors.dart';
import '../../widgets/custom_bottom_navigation.dart';

class UploadingCouponPage extends StatefulWidget {
  const UploadingCouponPage({Key? key}) : super(key: key);

  @override
  State<UploadingCouponPage> createState() => _UploadingCouponPageState();
}

class _UploadingCouponPageState extends State<UploadingCouponPage>
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
        backgroundColor: const Color(0xffFAF9F9),
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
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 10.0,
                    color: Color(0xff3756CF),
                  ),
                ),
                tabs: [
                  SizedBox(
                    height: height * 0.08,
                    width: width * 0.4,
                    child: const Center(
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
                  SizedBox(
                    height: height * 0.07,
                    width: width * 0.4,
                    child: const Center(
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
            SizedBox(
              height: height * 0.6,
              child: TabBarView(
                controller: _tabController,
                children: [
                  SingleChildScrollView(
                    child: GestureDetector(
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTicket(width: width, height: height),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.1),
                            child: const Text(
                              'Uploading...',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Padding(
                            padding: EdgeInsets.only(
                              left: width * 0.08,
                              top: height * 0.02,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: LinearPercentIndicator(
                                width: width * 0.8,
                                lineHeight: height * 0.02,
                                percent: 0.76,
                                progressColor: const Color(0xff4260B4),
                                backgroundColor: const Color(0xff2B0808),
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.005),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.1),
                            child: const Text(
                              '76% complete',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const OnDoneClick());
                            },
                            child: Center(
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.done,
                                    color: Color(0xff3D59C6),
                                    size: 70,
                                  ),
                                  SizedBox(height: height * 0.005),
                                  const Text(
                                    'Done !',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  //Uploded voucher
                  const Center(
                    child: Text('Uploaded Voucher'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
