import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_pin_code_text_field.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.blueGray900,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgLogin,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 32.h,
                vertical: 266.v,
              ),
              decoration:
                  AppDecoration.gradientPrimaryContainerToPrimaryContainer,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  Container(
                    width: 309.h,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      right: 8.h,
                    ),
                    child: Text(
                      "Enter The OTP That Just Send to you",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineMedium!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Time Remaining ",
                          style: theme.textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: "01:45",
                          style: CustomTextStyles.bodySmallOnPrimaryContainer,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 6.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      right: 20.h,
                    ),
                    child: CustomPinCodeTextField(
                      context: context,
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(height: 18.v),
                  CustomElevatedButton(
                    text: "Verify Phone Number",
                  ),
                  SizedBox(height: 5.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 55.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "YHaven’t Get any OTP?",
                              style: CustomTextStyles.bodyMedium_2,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "Re-send",
                              style:
                                  CustomTextStyles.bodyMediumSecondaryContainer,
                            )
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
