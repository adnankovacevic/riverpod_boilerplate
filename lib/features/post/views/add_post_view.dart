import 'package:flutter/material.dart';
import 'package:riverpod_boilerplate/shared/themes/app_colors.dart';
import 'package:riverpod_boilerplate/shared/themes/text_styles.dart';
import 'package:riverpod_boilerplate/shared/widgets/input_fields/app_text_form_field.dart';
import 'package:riverpod_boilerplate/shared/widgets/super_column_row.dart';

class AddPostView extends StatelessWidget {
  const AddPostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.red,
        title: Text(
          "Add Post",
          style: context.bodyLgStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: SuperColumn.spaced(
          spacing: 24,
          children: const [
            AppTextFormField(
              // labelText: "Title",
              hintText: "Add a title...",
            ),
            AppTextFormField(
              hintText: "Add a description...",
              maxLines: 7,
            )
          ],
        ),
      ),
    );
  }
}
