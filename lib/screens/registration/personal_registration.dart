import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';
import 'package:mobile_assessment_flutter/widgets/app_text.dart';
import 'package:mobile_assessment_flutter/widgets/gradient_background.dart';
import 'package:mobile_assessment_flutter/widgets/register_field.dart';

import '../../utils/dimensions.dart';

class PersonalRegistration extends StatelessWidget {
  const PersonalRegistration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(child: Image.asset('assets/images/bg-app-cloud.png')),
            Positioned(
              left: Dimensions.sizeWidthPercent(26.33),
              right: Dimensions.sizeWidthPercent(26.33),
              top: Dimensions.sizeHeightPercent(130.46),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: 'Welcome!',
                      size: 26.33,
                      bold: true,
                    ),
                    SizedBox(height: Dimensions.sizeHeightPercent(4)),
                    AppText(
                      text:
                          'Create an account to get started with Cargo Express',
                      size: 17.55,
                    ),
                    SizedBox(height: Dimensions.sizeHeightPercent(22.44)),
                    Form(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RegisterField(
                          name: 'Fullname',
                        ),
                        SizedBox(height: Dimensions.sizeHeightPercent(20)),
                        RegisterField(
                          name: 'Your E-mail',
                        ),
                        SizedBox(height: Dimensions.sizeHeightPercent(20)),
                        RegisterField(
                          name: 'Password',
                        ),
                        SizedBox(height: Dimensions.sizeHeightPercent(20)),
                        RegisterField(
                          name: 'Confirm Password',
                        ),
                        SizedBox(height: Dimensions.sizeHeightPercent(27)),
                        Center(
                          child: RichText(
                            text: TextSpan(
                              text: 'Already have an account?',
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' Log In',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        print('Tap');
                                      },
                                    style: const TextStyle(
                                      color: AppColors.primaryBlue,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                            ),
                          ),
                        )
                      ],
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
