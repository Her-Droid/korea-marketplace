import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:korean_marketplace/core/uikit/themes/colors.dart';
import 'package:korean_marketplace/core/uikit/themes/text.dart';

class ReviewRankItem extends StatelessWidget {
  final Map<String, dynamic> item;

  const ReviewRankItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        children: [
          Stack(
            children: [
              Positioned(
                top: 4.h,
                left: 4.w,
                child: SvgPicture.asset(item['icon']),
              ),
              Container(
                width: 114.w,
                height: 96.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.sp),
                  border: Border.all(color: UiKitColors.border),
                  image: DecorationImage(
                    image: AssetImage(item['image']),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['name'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: UiKitTextStyle.textTheme.titleSmall
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                Text(
                  item['desc1'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: UiKitTextStyle.textTheme.bodySmall
                      ?.copyWith(fontWeight: FontWeight.w200),
                ),
                Text(
                  item['desc2'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: UiKitTextStyle.textTheme.bodySmall
                      ?.copyWith(fontWeight: FontWeight.w200),
                ),
                SizedBox(height: 8.w),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/ic_star.svg'),
                    Text(
                      '${item['star']}',
                      style: UiKitTextStyle.textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: UiKitColors.yellow),
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      item['sold'],
                      style: UiKitTextStyle.textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: UiKitColors.neutral[40]),
                    ),
                  ],
                ),
                SizedBox(height: 8.w),
                Row(
                  children: item['labels'].map<Widget>((label) {
                    return Padding(
                      padding: EdgeInsets.only(right: 4.w),
                      child: Container(
                        decoration: BoxDecoration(
                          color: UiKitColors.neutral[20],
                          borderRadius: BorderRadius.circular(4.sp),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 2.sp, horizontal: 4.sp),
                          child: Text(
                            label,
                            style: UiKitTextStyle.textTheme.labelMedium
                                ?.copyWith(
                                    fontWeight: FontWeight.w200,
                                    color: UiKitColors.neutral[60]),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
