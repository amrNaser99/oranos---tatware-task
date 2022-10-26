import 'package:flutter/material.dart';
import 'package:oranos/model/experts.dart';

import '../../../../core/app_colors..dart';
import '../../../../core/app_fonts.dart';
import '../../../../core/font_styles.dart';

class BuildExpertItem extends StatelessWidget {
  final Experts expert;

  const BuildExpertItem({
    Key? key,
    required this.expert,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      height: 250,
      child: Card(
        elevation: 5.0,
        child: Column(
          children: [
            Image.asset(expert.image!),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        expert.name,
                        style: getBoldStyle(
                            fontColor: Colors.black, fontSize: FontSize.s16),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.grey,
                          size: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 20.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        expert.job!,
                        style: getBoldStyle(
                            fontColor: Colors.grey, fontSize: FontSize.s14),
                      ),
                      Text(expert.rate!,
                          style: getBoldStyle(
                              fontColor: AppColors.mainGreen,
                              fontSize: FontSize.s16)),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
