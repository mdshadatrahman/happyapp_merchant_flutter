import 'package:codecell_marchant_happ_app/screens/received_coupons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../utils/Colors.dart';
import '../widgets/custom_bottom_navigation.dart';
import 'buy_coupons_details.dart';

class BuyCoupons extends StatefulWidget {
  const BuyCoupons({Key? key}) : super(key: key);

  @override
  State<BuyCoupons> createState() => _BuyCouponsState();
}

class _BuyCouponsState extends State<BuyCoupons> {
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width / 15,
              ),
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.off(
                        () => const ReceivedCoupons(),
                        transition: Transition.noTransition,
                      );
                    },
                    child: Container(
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
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width / 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Buy Coupons',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffE37A29),
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              'Received Coupons',
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
                  ),

                  //Half bar
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.075),
                    child: Container(
                      height: height * 0.015,
                      width: width * 0.37,
                      decoration: const BoxDecoration(
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
