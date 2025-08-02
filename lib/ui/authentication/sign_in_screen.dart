// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lumi/ui/app_assets/color.dart';
import 'package:lumi/ui/screens/dashboard.dart';
import 'package:lumi/ui/widget/text_widget.dart';
import '../app_assets/app_validatiion.dart';
import '../widget/button_widget.dart';
import '../widget/text_form_widget.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  TextEditingController passwordTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  GlobalKey<FormState> formKeyLogin = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.w),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 70.h),
              TextView(
                text: 'Welcome Back!',
                textStyle: GoogleFonts.inter(
                  color: AppColor.black,
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10.h),
              TextView(
                text: 'Let\'s get you shopping\nagain.',
                textAlign: TextAlign.center,
                textStyle: GoogleFonts.inter(
                  color: AppColor.black,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.30.w),
                child: TextView(
                  text:
                      'Log in to track orders, save favorites, and enjoy a faster checkout.',
                  textAlign: TextAlign.center,
                  textStyle: GoogleFonts.inter(
                    color: AppColor.greyIt,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              TextFormWidget(
                label: 'Username or Email',
                border: 10,
                isFilled: true,
                fillColor: AppColor.fillColor,
                controller: emailTextController,
                prefixWidget: Padding(
                  padding: EdgeInsets.all(9.2.w),
                  child: Icon(Icons.person, color: AppColor.grey1, size: 30.sp),
                ),
                validator: AppValidator.validateEmail(),
              ),
              SizedBox(height: 30.h),
              TextFormWidget(
                label: 'Password',
                border: 10,
                isFilled: true,
                fillColor: AppColor.fillColor,
                controller: passwordTextController,
                prefixWidget: Padding(
                  padding: EdgeInsets.all(9.2.w),
                  child: Icon(
                    Icons.lock,
                    color: AppColor.grey1,
                    size: 27.30.sp,
                  ),
                ),
                suffixWidget: Padding(
                  padding: EdgeInsets.all(9.2.w),
                  child: Icon(
                    Icons.visibility_off_outlined,
                    color: AppColor.grey1,
                    size: 26.30.sp,
                  ),
                ),
                validator: AppValidator.validatePass(),
              ),
              SizedBox(height: 40.h),
              ButtonWidget(
                buttonText: 'Sign in',
                buttonColor: AppColor.primary,
                border: 20,
                buttonBorderColor: AppColor.transparent,
                textStyle: GoogleFonts.montserrat(
                  color: AppColor.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Dashboard()),
                  );
                },
              ),
              SizedBox(height: 30.h),
              TextView(
                text: 'Forgot Password?',
                textStyle: GoogleFonts.inter(
                  color: AppColor.primary,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextView(
                    text: 'Create An Account',
                    textStyle: GoogleFonts.inter(
                      color: AppColor.grey2,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 5.10.w),
                  TextView(
                    text: 'Register',
                    textStyle: GoogleFonts.inter(
                      decoration: TextDecoration.underline,
                      decorationColor: AppColor.primary,
                      color: AppColor.primary,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
