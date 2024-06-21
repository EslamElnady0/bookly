import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchTextField extends StatelessWidget {
  final void Function(String) onSubmitted;
  const CustomSearchTextField({super.key, required this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: onSubmitted,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.r)),
        hintText: "Search",
        suffixIcon: const Icon(Icons.search),
      ),
    );
  }
}
