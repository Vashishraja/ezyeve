import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key})
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
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgInitial,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            child: Container(
              padding: EdgeInsets.all(32.h),
              decoration:
                  AppDecoration.gradientPrimaryContainerToPrimaryContainer,
              child: Column(
                children: [
                  Spacer(),
                  Container(
                    width: 317.h,
                    margin: EdgeInsets.only(
                      left: 4.h,
                      right: 6.h,
                    ),
                    child: Text(
                      "Your event dream team, right in your pocket",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineMedium!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Container(
                    width: 260.h,
                    margin: EdgeInsets.only(
                      left: 32.h,
                      right: 35.h,
                    ),
                    child: Text(
                      "Choose your dream destination, arena and \nmuch more for your event.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 35.v),
                  CustomElevatedButton(
                    text: "Sign up free",
                    buttonStyle: CustomButtonStyles.fillPrimary,
                    onPressed: () {
                      onTapSignupfree(context);
                    },
                  ),
                  SizedBox(height: 23.v),
                  Opacity(
                    opacity: 0.8,
                    child: CustomElevatedButton(
                      height: 56.v,
                      text: "Continue with Google",
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 10.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGoogle1,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.fillGrayA,
                    ),
                  ),
                  SizedBox(height: 17.v),
                  Opacity(
                    opacity: 0.8,
                    child: CustomElevatedButton(
                      height: 56.v,
                      text: "Continue with Facebook",
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 10.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFacebook,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.fillGrayA,
                    ),
                  ),
                  SizedBox(height: 23.v),
                  GestureDetector(
                    onTap: () {
                      onTapTxtLogin(context);
                    },
                    child: Text(
                      "Log in",
                      style: CustomTextStyles.bodyMedium15,
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

  /// Navigates to the signupScreen when the action is triggered.
  onTapSignupfree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
