import 'package:bookly/features/search/presentation/manager/search%20books%20cubit/search_books_cubit.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_search_textfield.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_results_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(
            onSubmitted: (String query) {
              if (query.isNotEmpty) {
                context.read<SearchBooksCubit>().fetchSearchBooks(query);
              }
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          const Expanded(child: SearchResultsBody())
        ],
      ),
    );
  }
}
