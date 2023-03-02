import 'package:consultant_app/screens/category_screen.dart';
import 'package:consultant_app/screens/details_screen.dart';
import 'package:consultant_app/screens/home_screen.dart';
import 'package:consultant_app/screens/login_and_signup.dart';
import 'package:consultant_app/screens/new_inbox_screen.dart';
import 'package:consultant_app/screens/search_screen.dart';
import 'package:consultant_app/screens/sender_search_screen.dart';
import 'package:consultant_app/screens/splash_screen.dart';
import 'package:consultant_app/screens/status_screen.dart';
import 'package:consultant_app/screens/tags_screen.dart';
import 'package:consultant_app/screens/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashPage .id,
      routes: {
        TestPage.id: (context) => const TestPage(),
        SplashPage.id: (context) => const SplashPage(),
        LoginAndSignupPage.id: (context) => const LoginAndSignupPage(),
        HomePage.id: (context) => const HomePage(),
        DetailsPage.id: (context) => const DetailsPage(),
        NewInboxPage.id: (context) => const NewInboxPage(),
        SenderSearchScreen.id: (context) => const SenderSearchScreen(),
        CategoryPage.id: (context) => const CategoryPage(),
        TagsPage.id: (context) => const TagsPage(),
        StatusPage.id: (context) => const StatusPage(),
        SearchPage.id: (context) => const SearchPage(),
      },
    );
  }
}
