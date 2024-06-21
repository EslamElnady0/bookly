import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CustomBookImageLoadingShimmer extends StatelessWidget {
  const CustomBookImageLoadingShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      enabled: true,
      direction: ShimmerDirection.ltr,
      period: const Duration(seconds: 1),
      baseColor: kShimmerBaseColor,
      highlightColor: kShimmerHighlightColor,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
          child: AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                color: Colors.red,
              ))),
    );
  }
}
