import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 50.h),
      child: Row(
        children: [
          Image.asset(
            "assets/images/Logo.png",
            height: 20.h,
          ),
          const Spacer(),
          Icon(
            Icons.search,
            size: 24.r,
          )
        ],
      ),
    );
  }
}
