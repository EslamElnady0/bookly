import 'package:bookly/features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widget/cutom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBar(), CustomListViewItem()],
    );
  }
}
