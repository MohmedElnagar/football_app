import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:football_app/core/constans/constans.dart';
import 'package:football_app/features/home/ui/main.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const FootballApp(),
    ),
  );
}

class FootballApp extends StatelessWidget {
  const FootballApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "TitilliumWeb",
          scaffoldBackgroundColor: kBackgrountcolor,
          appBarTheme: const AppBarTheme(
            color: kBackgrountcolor,
          ),
          colorScheme: ColorScheme.fromSeed(
              seedColor: kPrimarycolor, background: kBackgrountcolor)),
      home: const Main(),
    );
  }
}
