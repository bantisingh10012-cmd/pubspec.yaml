import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services/download_engine.dart';
import 'screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DownloadEngine()),
      ],
      child: const NovaStreamApp(),
    ),
  );
}

class NovaStreamApp extends StatelessWidget {
  const NovaStreamApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NovaStream Studio Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0D0D14),
        primaryColor: Colors.cyanAccent,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

