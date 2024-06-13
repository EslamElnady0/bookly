import 'package:bookly/features/home/presentation/views/widget/custom_book_details_appbar.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
