// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lumi/ui/app_assets/app_image.dart';
import 'package:lumi/ui/app_assets/color.dart';
import '../widget/text_form_widget.dart';
import '../widget/text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String cateName = 'Explore';

  List<String> itemList = [
    AppImage.image1,
    AppImage.image2,
    AppImage.image3,
    AppImage.image4,
    AppImage.image5,
    AppImage.image6,
    AppImage.image7,
    AppImage.image8,
    AppImage.image9,
    AppImage.image10,
    AppImage.image11,
  ];

  paddingWing({child}) => Padding(
    padding: EdgeInsetsGeometry.symmetric(horizontal: 18.w),
    child: child,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homeColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50.w),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            paddingWing(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(20.w),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 224, 222, 222),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextView(
                        text: 'Hello Alex',
                        textStyle: GoogleFonts.inter(
                          color: const Color.fromARGB(255, 198, 194, 194),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 6.w),
                      TextView(
                        text: 'Good Morning!',
                        textStyle: GoogleFonts.inter(
                          color: AppColor.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(5.2.w),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 234, 234),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: SvgPicture.asset(AppImage.not),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    padding: EdgeInsets.all(5.2.w),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 234, 234),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: SvgPicture.asset(AppImage.shopping),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            paddingWing(
              child: Row(
                children: [
                  Expanded(
                    child: TextFormWidget(
                      label: 'Search',
                      border: 10,
                      isFilled: true,
                      fillColor: const Color.fromARGB(255, 241, 240, 240),
                      prefixWidget: Padding(
                        padding: EdgeInsets.all(9.2.w),
                        child: Icon(
                          Icons.search_rounded,
                          color: AppColor.grey1,
                          size: 26.30.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12.0.w),
                  Container(
                    padding: EdgeInsets.all(15.2.w),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 229, 227, 227),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: SvgPicture.asset(
                      AppImage.filter,
                      height: 24.30.h,
                      width: 20.w,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            paddingWing(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextView(
                    text: 'Categories',
                    textStyle: GoogleFonts.inter(
                      color: AppColor.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextView(
                    text: 'See All',
                    textStyle: GoogleFonts.inter(
                      color: const Color.fromARGB(255, 198, 194, 194),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            paddingWing(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  onCateTap(
                    cate: 'Explore',
                    onTap: () {
                      setState(() {
                        cateName = 'Explore';
                      });
                    },
                  ),
                  SizedBox(width: 14.20.h),
                  onCateTap(
                    cate: 'Home Appliances',
                    onTap: () {
                      setState(() {
                        cateName = 'Home Appliances';
                      });
                    },
                  ),
                  SizedBox(width: 14.20.h),
                  onCateTap(
                    cate: 'Men',
                    onTap: () {
                      setState(() {
                        cateName = 'Men';
                      });
                    },
                  ),
                  SizedBox(width: 14.20.h),
                  onCateTap(
                    cate: 'Women',
                    onTap: () {
                      setState(() {
                        cateName = 'Women';
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Image.asset(AppImage.lumi_edited),
            SizedBox(height: 20.h),
            paddingWing(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextView(
                    text: 'Popular Product',
                    textStyle: GoogleFonts.inter(
                      color: AppColor.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextView(
                    text: 'See All',
                    textStyle: GoogleFonts.inter(
                      color: const Color.fromARGB(255, 198, 194, 194),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 420.h,
              child: GridView.count(
                crossAxisCount: 2, // Number of columns
                mainAxisSpacing:
                    20.0, // Spacing between items along the main axis
                crossAxisSpacing:
                    0.0, // Spacing between items along the cross axis
                padding: EdgeInsets.all(0.0), // Padding around the grid
                children: <Widget>[
                  // List of widgets to display in the grid
                  ...itemList.map((e) => SvgPicture.asset(e)),
                  // ... more items
                ],
              ),
            ),
            SizedBox(height: 20.h),

            Stack(
              children: [
                SvgPicture.asset(AppImage.sales),
                Positioned(child: Image.asset(AppImage.boy, height: 180.h)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  onCateTap({cate, onTap}) => GestureDetector(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(7.2.w),
      decoration: BoxDecoration(
        color: cate == cateName
            ? AppColor.primary
            : Color.fromARGB(255, 229, 227, 227),
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextView(
        text: cate,
        textStyle: GoogleFonts.inter(
          color: cate == cateName ? AppColor.white : AppColor.black,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}
