import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vehixly/presentation/screens/auth/auth_screen.dart';
import '../../core/theme/app_theme.dart';

/// Premium Onboarding Screen for Vehixly
/// Single-screen design with logo, hero illustration, and action buttons
/// Matches HTML design with premium, luxury aesthetic
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final isDesktop = mq.size.width > 600;

    return Scaffold(
      backgroundColor: AppTheme.primaryWhite,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isWideScreen = constraints.maxWidth > 600;

              return Column(
                children: [
                  // Header: Logo
                  _buildHeader(isWideScreen),

                  // Main Content: Illustration & Value Prop
                  Expanded(
                    child: SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight:
                              constraints.maxHeight -
                              (isWideScreen ? 200 : 160),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: isWideScreen ? 48 : 16,
                            vertical: 24,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Hero Illustration
                              _buildHeroIllustration(isWideScreen),
                              const SizedBox(height: 32),
                              // Text Content
                              _buildTextContent(isWideScreen),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Footer Actions: Buttons
                  _buildFooterActions(context, isWideScreen),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(bool isDesktop) {
    return Padding(
      padding: EdgeInsets.only(top: isDesktop ? 40 : 24, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo Icon
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: AppTheme.electricBlue.withOpacity(0.1),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Icon(
              Icons.directions_car,
              size: 26,
              color: AppTheme.electricBlue,
            ),
          ),
          const SizedBox(width: 14),
          // Logo Text
          Text(
            'TURBO',
            style: TextStyle(
              fontSize: isDesktop ? 24 : 22,
              fontWeight: FontWeight.w800,
              color: AppTheme.primaryBlack,
              letterSpacing: -0.5,
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeroIllustration(bool isDesktop) {
    final imageHeight = isDesktop ? 300.0 : 260.0;

    return Container(
      width: double.infinity,
      height: imageHeight,
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 0 : 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          'https://lh3.googleusercontent.com/aida-public/AB6AXuCz5-btZGrNIhaaZRVnQUIlmzadm5SJPGeB5hivjKfii_66t7p-tFtudQW2vj8xm0_K3tulia5TTMapw_PMb6pchK9UaP7Id-ly6XArCUJdNWOaFFcP1KLOq5Q1C_zsTNFktpvnNss507af8hXJwX8DIIymEAb5LJARhREwz87Dn-3oyOjDuz3MOPJFp3gGJHNGQdST3S_FDx6Ain3wcw7bsP_9fPCCt83zYN8FW7RUDOrZ--2XCsvBtV3d9YmcLfycWyB8ObMJQD8',
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: AppTheme.surfaceGray,
              child: const Center(
                child: Icon(
                  Icons.directions_car,
                  size: 80,
                  color: AppTheme.textGray,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildTextContent(bool isDesktop) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isDesktop ? 24 : 8),
      child: Column(
        children: [
          // Title
          Text(
            'Discover, Connect,\nBuy & Sell Cars',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isDesktop ? 38 : 32,
              fontWeight: FontWeight.w800,
              color: AppTheme.primaryBlack,
              height: 1.15,
              letterSpacing: -0.02,
            ),
          ),
          const SizedBox(height: 16),
          // Subtitle
          SizedBox(
            width: 300,
            child: Text(
              'The premium marketplace for enthusiasts, collectors, and brands.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppTheme.textGray,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterActions(BuildContext context, bool isDesktop) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: isDesktop ? 48 : 32,
      ),
      child: Column(
        children: [
          // Primary Action: Sign Up
          SizedBox(
            width: double.infinity,
            height: 52,
            child: ElevatedButton(
              onPressed: () => _navigateToSignUp(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.electricBlue,
                foregroundColor: AppTheme.primaryWhite,
                elevation: 0,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 14,
                ),
              ),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.015,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          // Secondary Action: Log In
          SizedBox(
            width: double.infinity,
            height: 52,
            child: ElevatedButton(
              onPressed: () => _navigateToLogin(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.surfaceGray,
                foregroundColor: AppTheme.primaryBlack,
                elevation: 0,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 14,
                ),
              ),
              child: Text(
                'Log In',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.015,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          // Tertiary Link: Browse as Guest
          TextButton(
            onPressed: () => _navigateAsGuest(context),
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: const Size(0, 0),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Text(
              'Browse as Guest',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppTheme.textGray,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToSignUp(BuildContext context) {
    // TODO: Navigate to Sign Up screen
    //move to login no debug print real logic
    debugPrint('Navigate to Sign Up');
    Navigator.push(context, MaterialPageRoute(builder: (context) => AuthScreen()));
  }

  void _navigateToLogin(BuildContext context) {
    // TODO: Navigate to Login screen
    debugPrint('Navigate to Login');
  }

  void _navigateAsGuest(BuildContext context) {
    // TODO: Navigate as Guest
    debugPrint('Navigate as Guest');
  }
}
