import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key})
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
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.primaryContainer.withOpacity(0.32),
                theme.colorScheme.primaryContainer
              ],
            ),
          ),
          child: SizedBox(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 32.h,
                vertical: 163.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup6,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50.v),
                  Container(
                    width: 233.h,
                    margin: EdgeInsets.symmetric(horizontal: 48.h),
                    child: Text(
                      "Hello! \nReady to explore?",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineMedium!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 38.v),
                  Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: _buildPhoneNumberSection(
                      context,
                      phoneText: "Full name",
                      mobileNoText: "Aayush Kriti",
                    ),
                  ),
                  SizedBox(height: 21.v),
                  Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: _buildPhoneNumberSection(
                      context,
                      phoneText: "Phone",
                      mobileNoText: "9876543201",
                    ),
                  ),
                  SizedBox(height: 21.v),
                  _buildCitySection(context),
                  SizedBox(height: 26.v),
                  CustomElevatedButton(
                    text: "Get OTP",
                  ),
                  SizedBox(height: 5.v),
                  GestureDetector(
                    onTap: () {
                      onTapTxtYouhaveaccount(context);
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "You have account?",
                            style: CustomTextStyles.bodyMedium_2,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "Sign in",
                            style:
                                CustomTextStyles.bodyMediumSecondaryContainer,
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
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

  /// Section Widget
  Widget _buildCitySection(BuildContext context) {
    return SizedBox(
      height: 62.v,
      width: 328.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 3.v),
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 22.h,
                    margin: EdgeInsets.only(bottom: 14.v),
                    child: Text(
                      "City",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      left: 251.h,
                      top: 14.v,
                      bottom: 5.v,
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Text(
                "Amravati",
                style: theme.textTheme.bodyLarge,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPhoneNumberSection(
    BuildContext context, {
    required String phoneText,
    required String mobileNoText,
  }) {
    return Container(
      width: 328.h,
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
              phoneText,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                color: appTheme.deepPurple50,
                height: 1.50,
              ),
            ),
          ),
          Text(
            mobileNoText,
            style: CustomTextStyles.bodyMedium_1.copyWith(
              color: theme.colorScheme.onErrorContainer,
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtYouhaveaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
