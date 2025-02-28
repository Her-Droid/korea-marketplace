import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:korean_marketplace/core/uikit/themes/colors.dart';
import 'package:korean_marketplace/core/uikit/themes/text.dart';

@RoutePage()
class DetailProfilePage extends StatelessWidget {
  final String image;
  final String name;

  const DetailProfilePage({
    super.key,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              '랭킹 1위',
              style: UiKitTextStyle.textTheme.bodySmall
                  ?.copyWith(fontWeight: FontWeight.w200),
            ),
            Text(
              '베스트 리뷰어',
              style: UiKitTextStyle.textTheme.bodyLarge
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
          ],
        ),
        centerTitle: true,
        surfaceTintColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: UiKitColors.border,
            height: 1.h,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 16.h),
                SizedBox(
                  height: 104.h,
                  width: 104.w,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(image),
                  ),
                ),
                SizedBox(height: 4.h),
                Text(name, style: UiKitTextStyle.textTheme.titleLarge),
                SizedBox(height: 4.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/ic_crown.svg'),
                    SizedBox(width: 4.h),
                    Text(
                      '골드',
                      style: UiKitTextStyle.textTheme.titleSmall
                          ?.copyWith(color: UiKitColors.yellow),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Container(
                  decoration: BoxDecoration(
                    color: UiKitColors.neutral[20],
                    borderRadius: BorderRadius.circular(4.sp),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 4.sp, horizontal: 8.sp),
                    child: Text(
                      "조립컴 업체를 운영하며 리뷰를 작성합니다.",
                      textAlign: TextAlign.center,
                      style: UiKitTextStyle.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w200,
                          color: UiKitColors.neutral[60]),
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                Divider(
                  color: UiKitColors.neutral[20],
                  thickness: 8.w,
                ),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Row(
                    children: [
                      Text('작성한 리뷰',
                          style: UiKitTextStyle.textTheme.titleMedium),
                      SizedBox(width: 4.sp),
                      Text(
                        '총 35개',
                        style: UiKitTextStyle.textTheme.labelMedium
                            ?.copyWith(color: UiKitColors.neutral[60]),
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: UiKitColors.border, width: 1),
                            borderRadius: BorderRadius.circular(104.sp)),
                        child: Padding(
                          padding: EdgeInsets.all(4.sp),
                          child: Row(
                            children: [
                              Text(
                                '최신순',
                                style: UiKitTextStyle.textTheme.bodySmall
                                    ?.copyWith(color: UiKitColors.neutral[60]),
                              ),
                              SizedBox(width: 16.sp),
                              SvgPicture.asset('assets/icons/ic_dropdown.svg'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                Divider(
                  color: UiKitColors.neutral[20],
                  thickness: 1.w,
                ),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Row(
                    children: [
                      Container(
                        width: 114.w,
                        height: 96.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.sp),
                          border: Border.all(color: UiKitColors.border),
                          image: DecorationImage(
                            image: AssetImage('assets/images/product_4.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 16.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'AMD 라이젠 5 5600X 버미어정품 멀티팩',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: UiKitTextStyle.textTheme.titleSmall
                                  ?.copyWith(fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 8.h),
                            Row(
                              children: [
                                Row(
                                  children: List.generate(5, (index) {
                                    return Padding(
                                      padding: EdgeInsets.only(right: 1.w),
                                      child: SvgPicture.asset(
                                        'assets/icons/ic_star.svg',
                                        width: 24.w,
                                        color: index == 4
                                            ? UiKitColors.neutral[40]
                                            : null,
                                      ),
                                    );
                                  }),
                                ),
                                SizedBox(width: 8.w),
                                Text('4.07',
                                    style:
                                        UiKitTextStyle.textTheme.titleMedium),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                Divider(
                  color: UiKitColors.neutral[20],
                  thickness: 1.w,
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(image),
                      ),
                      SizedBox(width: 8.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name,
                              style: UiKitTextStyle.textTheme.titleSmall),
                          Row(
                            children: [
                              Row(
                                children: List.generate(5, (index) {
                                  return SvgPicture.asset(
                                    'assets/icons/ic_star.svg',
                                    width: 12.w,
                                    color: index == 4
                                        ? UiKitColors.neutral[40]
                                        : null,
                                  );
                                }),
                              ),
                              SizedBox(width: 8.w),
                              Text('4.07',
                                  style: UiKitTextStyle.textTheme.bodySmall
                                      ?.copyWith(
                                          color: UiKitColors.neutral[40])),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      SvgPicture.asset('assets/icons/ic_bookmark.svg'),
                    ],
                  ),
                ),
                SizedBox(height: 16.w),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.w, right: 16.w),
                        child: Text('“가격 저렴해요”',
                            style: UiKitTextStyle.textTheme.bodySmall
                                ?.copyWith(color: UiKitColors.neutral[80])),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 16.w),
                        child: Text('“CPU온도 고온”',
                            style: UiKitTextStyle.textTheme.bodySmall
                                ?.copyWith(color: UiKitColors.neutral[80])),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 16.w),
                        child: Text('“서멀작업 가능해요”',
                            style: UiKitTextStyle.textTheme.bodySmall
                                ?.copyWith(color: UiKitColors.neutral[80])),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 16.w),
                        child: Text('“게임 잘 돌아가요”',
                            style: UiKitTextStyle.textTheme.bodySmall
                                ?.copyWith(color: UiKitColors.neutral[80])),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.w),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/icons/ic_bolt.svg'),
                        SizedBox(width: 8.w),
                        Flexible(
                          child: Text(
                              '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: UiKitTextStyle.textTheme.titleSmall
                                  ?.copyWith(color: UiKitColors.neutral[50])),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.w),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/ic_bolt.svg',
                        color: UiKitColors.border,
                      ),
                      SizedBox(width: 8.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: UiKitTextStyle.textTheme.titleSmall
                                  ?.copyWith(color: UiKitColors.neutral[50]),
                            ),
                            SizedBox(height: 16.h),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Container(
                                    width: 114.w,
                                    height: 96.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.sp),
                                      border:
                                          Border.all(color: UiKitColors.border),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/review_1.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 16.h),
                                  Container(
                                    width: 114.w,
                                    height: 96.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.sp),
                                      border:
                                          Border.all(color: UiKitColors.border),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/review_2.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 16.h),
                                  Container(
                                    width: 114.w,
                                    height: 96.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.sp),
                                      border:
                                          Border.all(color: UiKitColors.border),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/review_3.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                Divider(
                  color: UiKitColors.neutral[20],
                  thickness: 1.w,
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/ic_reply.svg'),
                      SizedBox(width: 8.h),
                      Text('댓글 달기..',
                          style: UiKitTextStyle.textTheme.bodySmall
                              ?.copyWith(color: UiKitColors.neutral[80])),
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
