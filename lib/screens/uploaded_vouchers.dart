import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../utils/Colors.dart';
import 'add_voucher_coupon.dart';

class UploadedVoucher extends StatefulWidget {
  const UploadedVoucher({Key? key}) : super(key: key);

  @override
  State<UploadedVoucher> createState() => _UploadedVoucherState();
}

class _UploadedVoucherState extends State<UploadedVoucher> {
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
                    // SizedBox(width: width * 0.17),
                    SizedBox(width: width * 0.29),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Voucher',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: width * 0.131),

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
                    onTap: () {
                      Get.off(
                        () => AddVoucherCoupon(),
                        transition: Transition.noTransition,
                      );
                    },
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
                                  'Receive points',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff1E130B),
                                  ),
                                ),
                                Text(
                                  'from uploads',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff1E130B),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Uploaded\nvouchers',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffE37A29),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //Half bar
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * 0.416,
                      top: height * 0.075,
                    ),
                    child: Container(
                      height: height * 0.015,
                      width: width * 0.45,
                      decoration: BoxDecoration(
                        color: Color(0xff3756CF),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          topLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                          topRight: Radius.circular(6),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Upload container

            // SizedBox(
            //   height: height * 0.09,
            // ),
            // Container(
            //   child: Stack(
            //     children: [
            //       Center(
            //         child: SvgPicture.asset(
            //           'assets/images/rectangle.svg',
            //         ),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.symmetric(vertical: width * 0.2),
            //         child: Column(
            //           children: [
            //             Center(
            //               child: Icon(
            //                 Icons.file_upload_outlined,
            //                 size: 50,
            //               ),
            //             ),
            //             Text(
            //               'upload from your gallery',
            //               style: TextStyle(
            //                   fontSize: 18, fontWeight: FontWeight.w400),
            //             )
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
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
