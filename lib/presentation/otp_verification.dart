import 'package:ezyeve/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class OTPVerificationScreen extends StatelessWidget {
  final String phoneNumber;

  OTPVerificationScreen({required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'assets/background.jpg', // Replace 'background.jpg' with your image asset
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'OTP Verification',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Enter OTP sent to $phoneNumber',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: PinInputTextField(
                    pinLength: 4,
                    decoration: UnderlineDecoration(
                      textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                      colorBuilder: PinListenColorBuilder(Colors.white,Colors.teal),
                    ),
                    onChanged: (pin) {
                      // Handle OTP input
                    },
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(AppRoutes.signUpScreen);

                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.teal,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      textStyle: TextStyle(fontSize: 16),
                    ),
                    child: Text('Verify OTP'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
