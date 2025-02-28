import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:korean_marketplace/core/uikit/themes/theme.dart';
import 'package:korean_marketplace/view/router/router.dart';

void main() {
  runApp(const MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Korean Marketplace',
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
      builder: (ctx, child) {
        ScreenUtil.init(ctx);
        return Theme(data: UiKitTheme.theme, child: child ?? Container());
      },
    );
  }
}
