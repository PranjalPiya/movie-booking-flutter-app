import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final IconData? suffixIconData;
  final void Function()? suffixIconButtonPressed;
  final String? hintText;
  final IconData? prefixIconData;

  const CustomTextFormField(
      {super.key,
      this.suffixIconData,
      this.suffixIconButtonPressed,
      this.hintText,
      this.prefixIconData});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.red.shade300,
      )),
      child: TextFormField(
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(10)),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade800),
          errorMaxLines: 2,
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          isDense: true,
          // Show an icon next to the label if the field has no value
          prefixIcon: Icon(
            prefixIconData,
            color: Colors.red.shade300,
            size: 20,
          ),
          suffixIcon: IconButton(
            onPressed: suffixIconButtonPressed,
            icon: Icon(
              suffixIconData,
              color: Colors.red.shade300,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
