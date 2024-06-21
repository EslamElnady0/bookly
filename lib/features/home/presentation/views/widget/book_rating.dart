import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/util/styles.dart';

class BookRating extends StatelessWidget {
  final num rating;
  final num count;
  const BookRating({super.key, required this.rating, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 20.r,
        ),
        SizedBox(width: 9.w),
        Text(
          rating.toString(),
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 9.w),
        Text(
          "($count)",
          style: Styles.textStyle16.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
