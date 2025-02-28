import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:korean_marketplace/core/uikit/themes/colors.dart';
import 'package:korean_marketplace/core/uikit/themes/text.dart';

class BestReviewerItem extends StatelessWidget {
  final Map<String, dynamic> reviewer;
  final bool isTopReviewer;

  const BestReviewerItem(
      {super.key, required this.reviewer, this.isTopReviewer = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isTopReviewer)
          SvgPicture.asset(
            'assets/icons/ic_crown.svg',
            width: 24.w,
          ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 62.h,
              width: 62.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: isTopReviewer
                    ? Border.all(color: UiKitColors.yellow, width: 4)
                    : null,
              ),
              child: Image.asset(reviewer['image']),
            ),
            SizedBox(height: 4.h),
            Text(reviewer['name'], style: UiKitTextStyle.textTheme.bodyMedium),
          ],
        ),
      ],
    );
  }
}
