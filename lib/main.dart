import 'package:bookly/core/util/app_router.dart';
import 'package:bookly/core/util/service_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/manager/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newest%20books%20cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  serviceLocatorInit();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (context) =>
                    FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
                      ..fetchFeatuerdBooks()),
            BlocProvider(
                create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>())
                  ..fetchNewestBooks()),
          ],
          child: MaterialApp.router(
            routerConfig: AppRouter.router,
            theme: ThemeData.dark().copyWith(
                scaffoldBackgroundColor: kPrimaryColor,
                textTheme: GoogleFonts.montserratTextTheme(
                    ThemeData.dark().textTheme)),
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    );
  }
}
