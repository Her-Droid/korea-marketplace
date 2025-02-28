import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:korean_marketplace/core/uikit/themes/colors.dart';

class UiKitBottomNavBar extends BottomNavigationBar {
  UiKitBottomNavBar({
    super.key,
    super.currentIndex,
    super.onTap,
  }) : super(
          items: [
            _item(
              "홈",
              'assets/icons/nav_home_inactive.svg',
              'assets/icons/nav_home_active.svg',
            ),
            _item(
              "카테고리",
              'assets/icons/nav_category_inactive.svg',
              'assets/icons/nav_category_active.svg',
            ),
            _item(
              "커뮤니티",
              'assets/icons/nav_community_inactive.svg',
              'assets/icons/nav_community_active.svg',
            ),
            _item(
              "마이페이지",
              'assets/icons/nav_profile_inactive.svg',
              'assets/icons/nav_profile_active.svg',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          selectedItemColor: UiKitColors.neutral[80],
          unselectedItemColor: UiKitColors.neutral[40],
          showUnselectedLabels: true,
        );

  static BottomNavigationBarItem _item(
      String label, String path, String activePath) {
    return BottomNavigationBarItem(
      label: label,
      icon: SvgPicture.asset(
        path,
        width: 24.w,
        height: 24.h,
      ),
      activeIcon: SvgPicture.asset(
        activePath,
        width: 24.w,
        height: 24.h,
      ),
    );
  }
}
