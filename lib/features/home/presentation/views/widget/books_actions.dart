import 'package:bookly/core/util/functions.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:bookly/features/home/data/models/book/book_model.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_book_actions_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookActions extends StatelessWidget {
  final BookModel bookModel;
  const BookActions({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomBookActionsButton(
              color: Colors.white,
              text: r"Free",
              textStyle: Styles.textStyle16
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  bottomLeft: Radius.circular(16.r))),
        ),
        Expanded(
            child: CustomBookActionsButton(
          onPressed: () {
            launchCustomUrl(bookModel.volumeInfo!.previewLink, context);
          },
          text: getText(bookModel),
          color: const Color.fromARGB(255, 241, 143, 143),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(16.r),
              topRight: Radius.circular(16.r)),
          textStyle: Styles.textStyle16
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ],
    );
  }

  getText(BookModel bookModel) {
    if (bookModel.volumeInfo!.previewLink == null) {
      return "Not Available";
    } else {
      return "Preview";
    }
  }
}
