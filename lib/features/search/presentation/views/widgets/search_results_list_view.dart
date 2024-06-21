import 'package:bookly/features/home/presentation/views/widget/newest_books_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/models/book/book_model.dart';

class SearchResultsListView extends StatelessWidget {
  final List<BookModel> booksList;
  const SearchResultsListView({super.key, required this.booksList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: booksList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: BooksListViewItem(
            bookModel: booksList[index],
          ),
        );
      },
    );
  }
}
