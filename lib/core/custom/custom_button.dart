import 'package:flutter/material.dart';
import 'package:flutter_learn_one/core/extensions/text_extensions.dart';
import 'package:flutter_learn_one/core/theme/colors.dart';

Widget customButton(
    {BuildContext? context, final String? text, void Function()? onPressed}) {
  return SizedBox(
    width: double.infinity,
    height: 50,
    child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: Colors.red.shade300),
        child: Text(
          '$text',
          style: context!.textTheme.bodyMedium!.copyWith(
            // color: AppColors.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        )),
  );
}
