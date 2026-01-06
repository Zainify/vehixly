import 'package:flutter/material.dart';
import '../../../core/theme/app_theme.dart';
import '../../widgets/auth/auth_header.dart';
import '../../widgets/auth/auth_form.dart';
import '../../widgets/auth/social_buttons.dart';

/// Premium Authentication Screen
/// Matches exact HTML mock design with clean, luxury aesthetic
class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final isDesktop = mq.size.width > 600;
    final headerHeight = 256.0; // h-64 equivalent

    return Scaffold(
      backgroundColor: AppTheme.primaryWhite,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Column(
              children: [
                // Header image area
                AuthHeader(imageUrl: heroImage, height: headerHeight),

                // Main content card
                Flexible(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.only(bottom: mq.viewInsets.bottom + 16),
                    child: Container(
                      transform: Matrix4.translationValues(0, -40, 0),
                      margin: const EdgeInsets.symmetric(horizontal: 0),
                      decoration: BoxDecoration(
                        color: AppTheme.primaryWhite,
                        borderRadius: BorderRadius.circular(0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.04),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 24,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Form content
                            const AuthForm(),
                            const SizedBox(height: 24),

                            // Divider "Or continue with"
                            _buildDivider(),

                            const SizedBox(height: 24),

                            // Social buttons
                            const SocialButtons(),

                            const SizedBox(height: 32),

                            // Footer
                            _buildFooter(context),

                            const SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    // ignore: dead_code
  }

  Widget _buildDivider() {
    return Row(
      children: [
        Expanded(child: Container(height: 1, color: const Color(0xFFDBDFE6))),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Or continue with',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppTheme.textGray,
              letterSpacing: 0.1,
            ),
          ),
        ),
        Expanded(child: Container(height: 1, color: const Color(0xFFDBDFE6))),
      ],
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          TextSpan(
            text: 'New here? ',
            style: const TextStyle(fontSize: 14, color: Color(0xFF606e8a)),
            children: [
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Create an Account',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF111318),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _footerLink('Terms of Service'),
            const SizedBox(width: 24),
            _footerLink('Privacy Policy'),
          ],
        ),
      ],
    );
  }

  Widget _footerLink(String text) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        text,
        style: const TextStyle(fontSize: 12, color: Color(0xFF9ca3af)),
      ),
    );
  }
}

// Hero image URL from HTML design
const String heroImage =
    'https://lh3.googleusercontent.com/aida-public/AB6AXuDxCxjs4FR5dFjBbGMj8Ri9l38CXhEfp8L4kFjIRx2ixx-NcO820JQPM8z41FdFUvbZuscqMw9ZuegYvGykG_T8fDvKEJc2iZFLleZfQy5ZPU2Qv0TSno_Bb4ua35xLC_Wc3lSWE2qRRd8nWExuqHcY14X-gC0m6rX99--pSHhJYlGgeDe5BRKRI1ABaw5e2wkyF3Mpx8FM07gAae7c4AaIW3tdX7LMMQ1bQZf8OLOu0hn-JaAGFRO5rNVntEwISdfqIxd5w9x-cpc';
