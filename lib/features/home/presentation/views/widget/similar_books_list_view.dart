import 'package:bookly/core/util/app_router.dart';
import 'package:bookly/core/util/extentions.dart';
import 'package:bookly/features/home/data/models/book/book_model.dart';
import 'package:bookly/features/home/presentation/manager/similar%20books%20cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimilarBooksListView extends StatelessWidget {
  final BookModel bookModel;
  const SimilarBooksListView({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: 120.h,
            child: ListView.builder(
                itemCount: state.books.length,
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 12.w),
                    child: SizedBox(
                        height: 250.h,
                        child: GestureDetector(
                          onTap: () {
                            context.goTo(
                                routeName: AppRouter.bookDetails,
                                extra: state.books[index]);
                          },
                          child: CustomBookImage(
                            imageUrl: state.books[index].volumeInfo!.imageLinks!
                                    .thumbnail ??
                                '',
                          ),
                        )),
                  );
                }),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
