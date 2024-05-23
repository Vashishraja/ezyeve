import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
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
                  SizedBox(height: 15.v),
                  SizedBox(
                    width: 198.h,
                    child: Text(
                      "Hello! \nWelcome back.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineMedium!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 41.v),
                  _buildPhoneNumberSection(context),
                  SizedBox(height: 29.v),
                  CustomElevatedButton(
                    text: "Get OTP",
                  ),
                  SizedBox(height: 5.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "You don’t an have account?",
                          style: CustomTextStyles.bodyMedium_2,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "Sign in",
                          style: CustomTextStyles.bodyMediumSecondaryContainer,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberSection(BuildContext context) {
    return Container(
      width: 328.h,
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          SizedBox(
            width: 37.h,
            child: Text(
              "Phone",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          Text(
            "9876543201",
            style: CustomTextStyles.bodyMedium_1,
          )
        ],
      ),
    );
  }
}
