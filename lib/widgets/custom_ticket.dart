
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTicket extends StatelessWidget {
  const CustomTicket({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 213, 214, 218),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: Offset(1, 1),
                ),
              ],
            ),
            child: SvgPicture.asset(
              'assets/images/Subtract.svg',
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: width / 5,
            vertical: height * 0.03,
          ),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/kfc2.svg'),
                    SizedBox(width: width * 0.05),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '25% OFF',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'KFC',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: height * 0.03),
                Text(
                  'Get 25% off at your next KFC buy',
                  style: GoogleFonts.montserrat(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: width * 0.07),
                    SvgPicture.asset('assets/images/text.svg'),
                  ],
                ),
                SizedBox(height: height * 0.045),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/horizontal_dots.svg',
                    ),
                  ],
                ),
                SizedBox(height: height * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/qr_img\ 1.png',
                    ),
                  ],
                ),
                SizedBox(height: height * 0.015),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.open_in_new_outlined),
                    Text(
                      'Valid untill 03 March 2022',
                      style: TextStyle(
                        fontSize: 8,
                        color: Color(
                          0xff000000,
                        ).withOpacity(0.3),
                      ),
                    ),
                    Icon(Icons.info_outline)
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
