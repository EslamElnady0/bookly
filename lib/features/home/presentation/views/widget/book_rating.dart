import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/util/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(r"19.99$",
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold)),
        const Spacer(),
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 22.r,
        ),
        SizedBox(width: 9.w),
        Text(
          "4.8",
          style: Styles.textStyle14,
        ),
        SizedBox(width: 9.w),
        Text(
          "(2451)",
          style: Styles.textStyle16.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
