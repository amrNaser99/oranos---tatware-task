import 'package:flutter/material.dart';
import 'package:oranos/model/experts.dart';

import '../../../../core/app_colors..dart';
import '../../../../core/app_fonts.dart';
import '../../../../core/app_spaces.dart';
import '../../../../core/font_styles.dart';

class BuildOnlineExperts extends StatelessWidget {
  final Experts expert;
  const BuildOnlineExperts({Key? key, required this.expert}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundColor: AppColors.lightGrey,
            ),
            const CircleAvatar(radius: 5,backgroundColor: Colors.green,)
          ],
        ),
        AppSpaces.vSpace10,
        Text(
          'Experts',
          style: getMediumStyle(
              fontColor: Colors.black, fontSize: FontSize.s14),
        ),
      ],
    );
  }
}
