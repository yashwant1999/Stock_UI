import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:task_first/constants/global_variables.dart';
import 'package:task_first/ui/screens/home_screen.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (contextx) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
          primaryColor: GlobalVariables.kPrimparyColor,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const MyHomePage(),
    );
  }
}
