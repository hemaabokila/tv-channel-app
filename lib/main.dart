import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:project/localization/app_localizations.dart';
import 'package:project/screens/ContentPage.dart';
import 'package:project/screens/LoginPage.dart';
import 'package:project/screens/ProgramGuidePage.dart';
import 'package:project/screens/Programs.dart';
import 'package:project/screens/Setting.dart';
import 'package:project/screens/UserRegistrationPage.dart';
import 'package:project/screens/AccountPage.dart';
import 'package:project/screens/EditAccountPage.dart';
import 'package:project/screens/HomePage.dart';
import 'package:project/screens/prog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;
    state.setLocale(newLocale);
  }

  static void toggleTheme(BuildContext context) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;
    state.toggleTheme();
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en', '');
  ThemeMode _themeMode = ThemeMode.dark;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
      _saveLocale(locale);
    });
  }

  void _loadLocale() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? languageCode = prefs.getString('language_code');
    if (languageCode != null) {
      setState(() {
        _locale = Locale(languageCode);
      });
    }
  }

  void _saveLocale(Locale locale) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('language_code', locale.languageCode);
  }

  void _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? theme = prefs.getString('theme_mode');
    if (theme != null) {
      setState(() {
        _themeMode = theme == 'dark' ? ThemeMode.dark : ThemeMode.light;
      });
    }
  }

  void _saveTheme(ThemeMode themeMode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(
        'theme_mode', themeMode == ThemeMode.dark ? 'dark' : 'light');
  }

  void toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
      _saveTheme(_themeMode);
    });
  }

  @override
  void initState() {
    super.initState();
    _loadLocale();
    _loadTheme();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: _locale,
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: ThemeData(
        primaryColor: Colors.white54,
        scaffoldBackgroundColor: Colors.grey[200],
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.white10,
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
        ),
      ),
      title: 'Tv Channel',
      initialRoute: HomePage.Home_Page,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('ar', ''),
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      routes: {
        FristScreen.Screen_Root: (context) => const FristScreen(),
        HomePage.Home_Page: (context) => const HomePage(),
        ContentPage.Content_Page: (context) => const ContentPage(),
        ProgramGuidePage.ProgramGuide: (context) => const ProgramGuidePage(),
        RegistrationPage.Registration: (context) => const RegistrationPage(),
        UserAccount.user_account: (context) => const UserAccount(),
        EditAccount.edit_account: (context) => const EditAccount(),
        SettingPage.setting: (context) => const SettingPage(),
        ProgramsPage.Programpage: (context) => const ProgramsPage(),
        Prog.Prog_Page: (context) => const Prog(),
      },
    );
  }
}
