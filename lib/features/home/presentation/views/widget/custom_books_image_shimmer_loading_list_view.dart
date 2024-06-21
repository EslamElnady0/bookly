import 'package:bookly/features/home/presentation/views/widget/custom_book_image_shimmer_loading_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBooksImageShimmerLoadingListView extends StatelessWidget {
  final double height;
  const CustomBooksImageShimmerLoadingListView(
      {super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 12.w),
              child: const CustomBookImageLoadingShimmer(),
            );
          },
          itemCount: 5),
    );
  }
}
