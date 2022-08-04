import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';

import '../../utils/dimensions.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: Dimensions.sizeWidthPercent(20),
          right: Dimensions.sizeWidthPercent(20),
          top: Dimensions.sizeHeightPercent(57),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: Dimensions.sizeHeightPercent(2.5),
                        width: Dimensions.sizeWidthPercent(12.5),
                        decoration: BoxDecoration(
                          color: AppColors.primaryBlack,
                          borderRadius: BorderRadius.circular(
                              Dimensions.sizeWidthPercent(7)),
                        ),
                      ),
                      SizedBox(height: Dimensions.sizeHeightPercent(4.5)),
                      Container(
                        height: Dimensions.sizeHeightPercent(2.5),
                        width: Dimensions.sizeWidthPercent(24),
                        decoration: BoxDecoration(
                          color: AppColors.primaryBlack,
                          borderRadius: BorderRadius.circular(
                              Dimensions.sizeWidthPercent(7)),
                        ),
                      ),
                      SizedBox(height: Dimensions.sizeHeightPercent(4.5)),
                      Container(
                        height: Dimensions.sizeHeightPercent(2.5),
                        width: Dimensions.sizeWidthPercent(20),
                        decoration: BoxDecoration(
                          color: AppColors.primaryBlack,
                          borderRadius: BorderRadius.circular(
                              Dimensions.sizeWidthPercent(7)),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Hello, John.',
                    style: GoogleFonts.poppins(
                      fontSize: Dimensions.sizeHeightPercent(24),
                      color: AppColors.primaryBlack,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.sizeHeightPercent(29),
                    width: Dimensions.sizeWidthPercent(29),
                    child: Image.asset(
                      'assets/images/ic-notification.png',
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
