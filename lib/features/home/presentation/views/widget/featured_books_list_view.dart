import 'package:bookly/core/util/extentions.dart';
import 'package:bookly/features/home/presentation/manager/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_books_image_shimmer_loading_list_view.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/util/app_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: SizedBox(
              height: 250.h,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  physics: const BouncingScrollPhysics(),
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
                              imageUrl: state.books[index].volumeInfo!
                                  .imageLinks!.thumbnail!,
                            ),
                          )),
                    );
                  }),
            ),
          );
        }
        if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(
            errMessage: state.errMessage,
          );
        } else {
          return Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: CustomBooksImageShimmerLoadingListView(
                height: 250.h,
              ));
        }
      },
    );
  }
}
