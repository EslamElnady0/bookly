import 'package:bookly/core/models/book/book_model.dart';
import 'package:bookly/features/home/presentation/views/widget/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widget/books_actions.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/util/styles.dart';

class BookDetailsSection extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsSection({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 80.w),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail ?? '',
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        Text(
          bookModel.volumeInfo!.title!,
          textAlign: TextAlign.center,
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          bookModel.volumeInfo!.authors![0],
          style: Styles.textStyle18
              .copyWith(color: Colors.grey, fontStyle: FontStyle.italic),
        ),
        SizedBox(
          height: 18.h,
        ),
        BookRating(
          rating: bookModel.volumeInfo!.averageRating?.round() ?? 0,
          count: bookModel.volumeInfo!.ratingsCount?.round() ?? 0,
        ),
        SizedBox(
          height: 25.h,
        ),
        BookActions(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
