import 'package:bookly/features/home/data/models/book/book_model.dart';
import 'package:bookly/features/home/presentation/views/widget/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/util/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  final BookModel bookModel;
  const SimilarBooksSection({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("You may also like",
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold)),
        SizedBox(
          height: 15.h,
        ),
        SimilarBooksListView(
          bookModel: bookModel,
        ),
        SizedBox(
          height: 40.h,
        )
      ],
    );
  }
}
