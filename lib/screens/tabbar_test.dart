import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../utils/Colors.dart';
import '../widgets/custom_bottom_navigation.dart';
import 'buy_coupons_details.dart';

class BuyCouponsTest extends StatefulWidget {
  const BuyCouponsTest({Key? key}) : super(key: key);

  @override
  State<BuyCouponsTest> createState() => _BuyCouponsState();
}

class _BuyCouponsState extends State<BuyCouponsTest> {
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
                    SizedBox(width: width * 0.17),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Buy',
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
                    SizedBox(width: width * 0.043),
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
            DefaultTabController(
              length: 2,
              child: TabBar(
                indicator: BoxDecoration(
                    color: Colors.green[300],
                    borderRadius: BorderRadius.circular(25.0)),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: const [
                  Tab(
                    text: 'Chats',
                  ),
                  Tab(
                    text: 'Status',
                  ),
                ],
              ),
            ),
            const Expanded(
                child: TabBarView(
              children: [
                Center(
                  child: Text("Chats Pages"),
                ),
                Center(
                  child: Text("Status Pages"),
                ),
              ],
            )),

            SizedBox(height: height * 0.03),
            Column(
              children: [
                CouponsTile(width: width, height: height),
                CouponsTile(width: width, height: height),
                CouponsTile(width: width, height: height, isBestSeller: true),
                CouponsTile(width: width, height: height),
              ],
            )
          ],
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}

class CouponsTile extends StatelessWidget {
  const CouponsTile({
    Key? key,
    required this.width,
    required this.height,
    this.isBestSeller = false,
  }) : super(key: key);

  final double width;
  final double height;
  final bool isBestSeller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const BuyCouponsDetails());
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: height * 0.03),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: width / 15),
              child: Stack(
                children: [
                  Container(
                    width: width * 1,
                    height: height * 0.13,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 213, 214, 218),
                          spreadRadius: 0,
                          blurRadius: 2,
                          offset: Offset(3, 5),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width / 15),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: width * 0.175),
                          const RotatedBox(
                            quarterTurns: 1,
                            child: Text(
                              'No cash value',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(width: width * 0.05),
                          SvgPicture.asset('assets/images/vertical_dots.svg'),
                          SizedBox(width: width * 0.04),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset('assets/images/kfc.svg'),
                                  SizedBox(width: width * 0.03),
                                  const Text(
                                    '25% OFF\nKFC',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: width * 0.02),
                              Row(
                                children: const [
                                  Text(
                                    '•  Expire date :**-**-***',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: isBestSeller ? 1 : 0,
                    child: Container(
                      margin: EdgeInsets.only(left: width * 0.575),
                      width: width * 0.17,
                      height: height * 0.03,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: const Color(0xff4B99C4),
                      ),
                      child: const Center(
                        child: Text(
                          'Best Seller',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
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
