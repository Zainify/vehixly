import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/theme/app_theme.dart';
import 'presentation/screens/splash_screen.dart';
import 'presentation/screens/auth/auth_screen.dart';
import 'presentation/screens/main_nav.dart';
import 'presentation/screens/onboarding_screen.dart';

/// Premium Vehixly App Entry Point
/// Features luxury design with white, black, and electric blue theme
void main() {
  // Set preferred orientations
  WidgetsFlutterBinding.ensureInitialized();

  // Configure system UI overlay style for premium look
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: AppTheme.primaryWhite,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(const VehixlyApp());
}

class VehixlyApp extends StatelessWidget {
  const VehixlyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vehixly - Premium Car Enthusiast',
      debugShowCheckedModeBanner: false,

      // Apply premium theme
      theme: AppTheme.lightTheme,

      // Start with splash screen
      home: const SplashScreen(),

      // App routes
      routes: {
        '/onboarding': (context) => const OnboardingScreen(),
        '/auth': (context) => const AuthScreen(),
        '/main': (context) => const MainNavScreen(),
      },

      // Custom scroll behavior for smooth interactions
      scrollBehavior: const ScrollBehavior().copyWith(overscroll: false),
    );
  }
}
