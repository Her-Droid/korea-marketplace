import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:korean_marketplace/core/uikit/components/banner/carousel_options.dart';
import 'package:korean_marketplace/core/uikit/components/banner/carousel_slider.dart';
import 'package:korean_marketplace/core/uikit/components/best_reviewer_item.dart';
import 'package:korean_marketplace/core/uikit/components/review_rank_item.dart';
import 'package:korean_marketplace/core/uikit/components/text_field.dart';
import 'package:korean_marketplace/core/uikit/themes/colors.dart';
import 'package:korean_marketplace/core/uikit/themes/text.dart';
import 'package:korean_marketplace/view/router/router.gr.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final List<Map<String, dynamic>> reviewItems = [
  {
    'icon': 'assets/icons/ic_top_1.svg',
    'image': 'assets/images/product_1.png',
    'name': 'LG전자 스탠바이미 27ART10AKPL (스탠',
    'desc1':
        '• 화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요. 배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.',
    'desc2':
        '• 넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는 액정문제 없어보이고소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐 그냥 블루투스 헤드폰 구매 예정이라 문제는 없네요. 아주 만족입니다!!',
    'star': 4.89,
    'sold': '(216)',
    'labels': ['(216)', '편리성']
  },
  {
    'icon': 'assets/icons/ic_top_2.svg',
    'image': 'assets/images/product_2.png',
    'name': 'LG전자 울트라HD 75UP8300KNA (스탠드)',
    'desc1': '화면 잘 나오고... 리모컨 기능 좋습니다.',
    'desc2':
        '넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는 액정문제 없어보이고소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐 그냥 블루투스 헤드폰 구매 예정이라 문제는 없네요. 아주 만족입니다!!',
    'star': 4.36,
    'sold': '(136)',
    'labels': ['LG전자', '고화질']
  },
  {
    'icon': 'assets/icons/ic_top_3.svg',
    'image': 'assets/images/product_3.png',
    'name': '라익미 스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)',
    'desc1': '반응속도 및 화질이나 여러면에서도 부족함을 느끼기에는 커녕 이정도에 이 정도 성능이면',
    'desc2':
        '중소기업TV 라익미 제품을 사용해보았는데 뛰어난 가성비와 더불어 OTT 서비스에 오픈 브라우저 까지 너무 마음에 들게끔 기능들을 사용 가능했고',
    'star': 3.98,
    'sold': '(98)',
    'labels': ['라익미', '가성비']
  },
];

final List<Map<String, dynamic>> reviewers = List.generate(
    10,
    (index) => {
          'image': 'assets/images/profile_${index + 1}.png',
          'name': 'Name${index + 1 > 9 ? "" : "0"}${index + 1}',
        });

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ValueNotifier<int> _currentIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              _buildHeader(),
              SizedBox(height: 16.h),
              Divider(
                color: UiKitColors.neutral[20],
                thickness: 4.w,
              ),
              SizedBox(height: 8.h),
              _buildSearchField(),
              SizedBox(height: 12.h),
              _buildCarousel(context),
              SizedBox(height: 16.h),
              _buildReviewRanks(),
              SizedBox(height: 12.h),
              Divider(
                color: UiKitColors.neutral[20],
                thickness: 8.w,
              ),
              SizedBox(height: 16.h),
              _buildBestReviewer(context),
              SizedBox(height: 24.h),
              _buildFooter(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Text(
        "LOGO",
        style: UiKitTextStyle.textTheme.headlineSmall?.copyWith(
          color: UiKitColors.main,
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: UiKitTextField(
        borderGradient: UiKitColors.gradient,
        fillColor: Colors.white,
        borderRadius: 12.sp,
        hint: "검색어를 입력하세요",
        hintColor: UiKitColors.neutral[40],
        suffixIcon: Padding(
          padding: EdgeInsets.all(10.w),
          child: SvgPicture.asset("assets/icons/ic_search.svg"),
        ),
      ),
    );
  }

  Widget _buildCarousel(BuildContext context) {
    return Stack(
      children: [
        UiKitCarouselSlider(
          items: _buildCarouselItems(context),
          options: CarouselOptions(
            viewportFraction: 1.0,
            height: MediaQuery.of(context).size.height * 0.26,
            onPageChanged: (index, reason) {
              _currentIndex.value = index;
            },
          ),
        ),
        Positioned(
          bottom: 8.sp,
          left: 0.sp,
          right: 0.sp,
          child: _buildDotsIndicator(),
        ),
      ],
    );
  }

  List<Widget> _buildCarouselItems(BuildContext context) {
    final List<String> imagePaths = [
      'assets/images/banner_1.png',
      'assets/images/banner_2.png',
      'assets/images/banner_3.png',
      'assets/images/banner_4.png',
    ];

    return imagePaths
        .map((path) => Image.asset(
              path,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.26,
              fit: BoxFit.cover,
            ))
        .toList();
  }

  Widget _buildDotsIndicator() {
    return Center(
      child: ValueListenableBuilder<int>(
        valueListenable: _currentIndex,
        builder: (context, index, _) {
          return SmoothPageIndicator(
            controller: PageController(initialPage: index),
            count: 4,
            effect: CustomizableEffect(
              activeDotDecoration: DotDecoration(
                width: 20,
                height: 8,
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              dotDecoration: DotDecoration(
                width: 8,
                height: 8,
                color: Colors.white.withOpacity(0.6),
                borderRadius: BorderRadius.circular(4),
              ),
              spacing: 6,
            ),
          );
        },
      ),
    );
  }

  Widget _buildReviewRanks() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '제일 핫한 리뷰를 만나보세요',
                    style: UiKitTextStyle.textTheme.labelMedium
                        ?.copyWith(fontWeight: FontWeight.w200),
                  ),
                  Text(
                    '리뷰️  랭킹⭐ top 3',
                    style: UiKitTextStyle.textTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/ic_more.svg')),
            ],
          ),
          SizedBox(height: 12.h),
          Column(
            children:
                reviewItems.map((item) => ReviewRankItem(item: item)).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildBestReviewer(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '골드 계급 사용자들이예요',
                style: UiKitTextStyle.textTheme.labelMedium
                    ?.copyWith(fontWeight: FontWeight.w200),
              ),
              Text(
                '베스트 리뷰어 🏆 Top10',
                style: UiKitTextStyle.textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 12.h),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: reviewers.asMap().entries.map((entry) {
              int index = entry.key;
              Map<String, dynamic> reviewer = entry.value;
              return GestureDetector(
                onTap: () {
                  AutoRouter.of(context).push(const DetailProfileRoute());
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: BestReviewerItem(
                    reviewer: reviewer,
                    isTopReviewer: index == 0,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Container(
      width: double.infinity,
      color: UiKitColors.neutral[20],
      padding: EdgeInsets.all(16.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'LOGO Inc.',
            style: UiKitTextStyle.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w500, color: UiKitColors.neutral[80]),
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Text(
                '회사 소개',
                style: UiKitTextStyle.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: UiKitColors.neutral[60]),
              ),
              const Spacer(),
              Container(
                height: 8.h,
                width: 1.w,
                color: UiKitColors.neutral[40],
              ),
              const Spacer(),
              Text(
                '인재 채용',
                style: UiKitTextStyle.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: UiKitColors.neutral[60]),
              ),
              const Spacer(),
              Container(
                height: 8.h,
                width: 1.w,
                color: UiKitColors.neutral[40],
              ),
              const Spacer(),
              Text(
                '회사 소개',
                style: UiKitTextStyle.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: UiKitColors.neutral[60]),
              ),
              const Spacer(),
              Container(
                height: 8.h,
                width: 1.w,
                color: UiKitColors.neutral[40],
              ),
              const Spacer(),
              Text(
                '회사 소개',
                style: UiKitTextStyle.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: UiKitColors.neutral[60]),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              SvgPicture.asset('assets/icons/ic_send.svg'),
              SizedBox(width: 4.sp),
              Text(
                'review@logo.com',
                style: UiKitTextStyle.textTheme.titleSmall
                    ?.copyWith(color: UiKitColors.neutral[60]),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: UiKitColors.border, width: 1),
                    borderRadius: BorderRadius.circular(104.sp)),
                child: Padding(
                  padding: EdgeInsets.all(4.sp),
                  child: Row(
                    children: [
                      Text(
                        'KOR',
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
          SizedBox(height: 8.h),
          Divider(
            color: UiKitColors.neutral[30],
            thickness: 1.w,
          ),
          SizedBox(height: 12.h),
          Text(
            '@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구',
            style: UiKitTextStyle.textTheme.bodySmall
                ?.copyWith(color: UiKitColors.neutral[60]),
          ),
        ],
      ),
    );
  }
}
