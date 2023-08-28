import 'package:chef_app/core/local/app_loacl.dart';
import 'package:chef_app/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          AppLocalizations.delegate
        ],
        supportedLocales: const [Locale('ar',"EG"),
        Locale('en',"US"),
        
        ],
        locale: const Locale('ar'),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.initialRoute,
        onGenerateRoute: AppRoutes.generateRoute,
        title: 'Flutter Demo',
        theme: getAppTheme(),
      ),
    );
  }
}
