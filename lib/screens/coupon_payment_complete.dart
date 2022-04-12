import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/Colors.dart';
import '../widgets/custom_bottom_navigation.dart';
import '../widgets/custom_ticket.dart';

class BuyCouponsPaymentComplete extends StatefulWidget {
  const BuyCouponsPaymentComplete({Key? key}) : super(key: key);

  @override
  State<BuyCouponsPaymentComplete> createState() =>
      _BuyCouponsPaymentCompleteState();
}

class _BuyCouponsPaymentCompleteState extends State<BuyCouponsPaymentComplete> {
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
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width / 15),
                  child: Text(
                    'DONE !',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff201308),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.01),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width / 15),
                  child: Text(
                    'Your payment has been completed. \nThank you for your purchase !',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff201308),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.03),
            CustomTicket(width: width, height: height)
          ],
        ),
        floatingActionButton: Transform.scale(
          scale: 0.7,
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.east,
              size: 35,
            ),
            backgroundColor: Color(0xff462DAB),
            elevation: 0,
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
