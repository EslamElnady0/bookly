import 'package:bookly/core/models/book/book_model.dart';
import 'package:bookly/features/home/presentation/views/widget/book_details_section.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_book_details_appbar.dart';
import 'package:bookly/features/home/presentation/views/widget/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsViewBody({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                Expanded(
                  child: SizedBox(
                    height: 50.h,
                  ),
                ),
                SimilarBooksSection(
                  bookModel: bookModel,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
