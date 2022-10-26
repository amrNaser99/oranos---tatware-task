import 'package:flutter/material.dart';

import '../../core/app_colors..dart';

class CheckBoxItem extends StatelessWidget {
  final bool itemValue;
  final String text;
  final Function(bool?)? onItemChanged;

  const CheckBoxItem(
      {Key? key,
      required this.itemValue,
      required this.onItemChanged,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: AppColors.mainGreen,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          value: itemValue,
          onChanged: onItemChanged,
        ),
        Text(text),
      ],
    );
  }
}
