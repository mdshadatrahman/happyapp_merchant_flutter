
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/Colors.dart';
import '../widgets/custom_bottom_navigation.dart';
import 'coupon_payment_complete.dart';

class BuyCouponsDetails extends StatefulWidget {
  const BuyCouponsDetails({Key? key}) : super(key: key);

  @override
  State<BuyCouponsDetails> createState() => _BuyCouponsDetailsState();
}

class _BuyCouponsDetailsState extends State<BuyCouponsDetails> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFAF9F9),
        body: Column(
          children: [
            //!TODO: need to add custom design in appbar
            Container(
              height: AppBar().preferredSize.height,
              decoration: BoxDecoration(
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
                        CircleAvatar(
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
                    onTap: () {},
                    child: Container(
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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
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
                            Text(
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

            SizedBox(height: height * 0.03),
            Padding(
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
                            color: Color(0xffFBFBFB),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 213, 214, 218),
                                spreadRadius: 0,
                                blurRadius: 2,
                                offset: Offset(3, 5),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width / 15),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: width * 0.175),
                                RotatedBox(
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
                                SvgPicture.asset(
                                    'assets/images/vertical_dots.svg'),
                                SizedBox(width: width * 0.04),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/images/kfc.svg'),
                                        SizedBox(width: width * 0.03),
                                        Text(
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
                                      children: [
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
                        // Container(
                        //   margin: EdgeInsets.only(left: width * 0.575),
                        //   width: width * 0.17,
                        //   height: height * 0.03,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(2),
                        //     color: Color(0xff4B99C4),
                        //   ),
                        //   child: Center(
                        //     child: Text(
                        //       'Best Seller',
                        //       style: TextStyle(
                        //         fontSize: 12,
                        //         fontWeight: FontWeight.w500,
                        //         color: Colors.white,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.02),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Subtotal',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Service Charge',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Ticket',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: width * 0.2),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '\$120',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '\$120',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '\$120',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              height: 0.2,
              width: width * 0.9,
              color: Colors.black,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: width * 0.18),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Total',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: width * 0.44),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '\$120',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),

            SizedBox(height: height * 0.04),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Payment Options',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'see all',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width / 15,
                vertical: height * 0.02,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: height * 0.1,
                    width: width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffAFDFFA),
                    ),
                    child: Center(
                      child: Text(
                        'From Points',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackH1,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.1,
                    width: width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff3756CF),
                    ),
                    child: Center(
                      child: Text(
                        'Visa card',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.off(() => BuyCouponsPaymentComplete());
                  },
                  child: Text('Complete'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff462DAB),
                  ),
                ),
              ],
            )
          ],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
