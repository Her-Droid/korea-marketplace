// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:korean_marketplace/view/pages/category_page.dart' as _i1;
import 'package:korean_marketplace/view/pages/community_page.dart' as _i2;
import 'package:korean_marketplace/view/pages/detail_profile_page.dart' as _i3;
import 'package:korean_marketplace/view/pages/home_page.dart' as _i4;
import 'package:korean_marketplace/view/pages/main_page.dart' as _i5;
import 'package:korean_marketplace/view/pages/profile_page.dart' as _i6;

/// generated route for
/// [_i1.CategoryPage]
class CategoryRoute extends _i7.PageRouteInfo<void> {
  const CategoryRoute({List<_i7.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.CategoryPage();
    },
  );
}

/// generated route for
/// [_i2.CommunityPage]
class CommunityRoute extends _i7.PageRouteInfo<void> {
  const CommunityRoute({List<_i7.PageRouteInfo>? children})
      : super(
          CommunityRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommunityRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.CommunityPage();
    },
  );
}

/// generated route for
/// [_i3.DetailProfilePage]
class DetailProfileRoute extends _i7.PageRouteInfo<DetailProfileRouteArgs> {
  DetailProfileRoute({
    _i8.Key? key,
    required String image,
    required String name,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          DetailProfileRoute.name,
          args: DetailProfileRouteArgs(
            key: key,
            image: image,
            name: name,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailProfileRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailProfileRouteArgs>();
      return _i3.DetailProfilePage(
        key: args.key,
        image: args.image,
        name: args.name,
      );
    },
  );
}

class DetailProfileRouteArgs {
  const DetailProfileRouteArgs({
    this.key,
    required this.image,
    required this.name,
  });

  final _i8.Key? key;

  final String image;

  final String name;

  @override
  String toString() {
    return 'DetailProfileRouteArgs{key: $key, image: $image, name: $name}';
  }
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomePage();
    },
  );
}

/// generated route for
/// [_i5.MainPage]
class MainRoute extends _i7.PageRouteInfo<void> {
  const MainRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.MainPage();
    },
  );
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.ProfilePage();
    },
  );
}
