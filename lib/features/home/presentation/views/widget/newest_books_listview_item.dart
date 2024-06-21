import 'package:bookly/core/util/app_router.dart';
import 'package:bookly/core/util/extentions.dart';
import 'package:bookly/features/home/presentation/views/widget/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/util/styles.dart';
import '../../../data/models/book/book_model.dart';

class NewestBooksListViewItem extends StatelessWidget {
  final BookModel bookModel;
  const NewestBooksListViewItem({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.goTo(routeName: AppRouter.bookDetails, extra: bookModel);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 120.h,
              child: CustomBookImage(
                imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
              )),
          SizedBox(
            width: 30.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200.w,
                  child: Text(
                    bookModel.volumeInfo!.title!,
                    style: Styles.textStyle20
                        .copyWith(fontFamily: "GT Sectra Fine"),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 3.5.h,
                ),
                Text(
                  bookModel.volumeInfo!.authors![0],
                  style: Styles.textStyle14.copyWith(color: Colors.grey),
                ),
                SizedBox(height: 3.5.h),
                Row(
                  children: [
                    Text(r"Free",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold)),
                    const Spacer(),
                    BookRating(
                      count: bookModel.volumeInfo!.ratingsCount ?? 0,
                      rating: bookModel.volumeInfo!.averageRating ?? 0,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
