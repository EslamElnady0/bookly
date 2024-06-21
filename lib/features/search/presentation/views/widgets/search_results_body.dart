import 'package:bookly/features/search/presentation/manager/search%20books%20cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/util/styles.dart';
import '../../../../home/presentation/views/widget/custom_error_widget.dart';
import 'search_results_list_view.dart';

class SearchResultsBody extends StatelessWidget {
  const SearchResultsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Search Results",
                style: Styles.textStyle18,
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                  child: SearchResultsListView(
                booksList: state.books,
              ))
            ],
          );
        }
        if (state is SearchBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        }
        if (state is SearchBooksLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return Center(
            child: Text(
              "You can search for books here",
              style: Styles.textStyle18,
            ),
          );
        }
      },
    );
  }
}
