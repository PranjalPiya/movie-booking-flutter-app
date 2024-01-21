import 'package:flutter/material.dart';

Widget customButton({final String? text, void Function()? onPressed}) {
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
          style: const TextStyle(color: Colors.white),
        )),
  );
}
