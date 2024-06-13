import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: AspectRatio(
        aspectRatio: 3.15 / 5,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: Colors.red,
              image: const DecorationImage(
                  image: AssetImage(
                    "assets/images/test_image.png",
                  ),
                  fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
