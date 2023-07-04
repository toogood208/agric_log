import 'package:flutter/material.dart';

class CustomTextStyles {
  CustomTextStyles(this.context);
  BuildContext context;
   TextStyle? cardText () {
    return Theme.of(context).textTheme.titleLarge;

  }
}
