import 'package:flutter/material.dart';
import 'package:gentrack_week02/theme/app_theme.dart';
import 'screen/home_screen.dart';

void main() {
 runApp(const GenTrackApp());
}

class GenTrackApp extends StatelessWidget {
  const GenTrackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GenTrack',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.system ,
      home: const HomeScreen(),
    );

}
}