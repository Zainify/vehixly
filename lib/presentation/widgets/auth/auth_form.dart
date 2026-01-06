import 'package:flutter/material.dart';
import '../../../core/theme/app_theme.dart';

/// Premium Authentication Form
/// Matches exact HTML design with precise styling for luxury feel
class AuthForm extends StatefulWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  bool _obscure = true;

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passCtrl.dispose();
    super.dispose();
  }

  // Exact colors from HTML design
  static const Color textPrimary = Color(0xFF111318);
  static const Color textSecondary = Color(0xFF606e8a);
  static const Color borderColor = Color(0xFFDBDFE6);
  static const Color primaryBlue = Color(0xFF0d59f2);
  static const Color placeholderColor = Color(0xFF9ca3af);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final isNarrow = mq.size.width < 360;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Logo tile - black background with shadow
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: AppTheme.primaryBlack,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.12),
                blurRadius: 20,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: const Icon(
            Icons.directions_car,
            color: AppTheme.primaryWhite,
            size: 32,
          ),
        ),
        const SizedBox(height: 24),

        // Main Headline
        Text(
          'Unlock the Ultimate Drive',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w800,
            color: textPrimary,
            height: 1.2,
            letterSpacing: -0.02,
          ),
        ),
        const SizedBox(height: 12),

        // Subtitle
        const Text(
          'Sign in to access exclusive listings and community.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: textSecondary,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 32),

        // Email Field
        _buildLabel('Email Address'),
        const SizedBox(height: 8),
        _buildInput(
          controller: _emailCtrl,
          hint: 'name@example.com',
          keyboardType: TextInputType.emailAddress,
        ),

        const SizedBox(height: 20),
        // Password Field
        _buildLabel('Password'),
        const SizedBox(height: 8),
        Stack(
          children: [
            _buildInput(
              controller: _passCtrl,
              hint: 'Enter your password',
              obscure: _obscure,
            ),
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: Material(
                color: Colors.transparent,
                child: IconButton(
                  splashRadius: 20,
                  icon: Icon(
                    _obscure ? Icons.visibility_off : Icons.visibility,
                    color: textSecondary,
                    size: 20,
                  ),
                  onPressed: () => setState(() => _obscure = !_obscure),
                ),
              ),
            ),
          ],
        ),

        // Forgot Password Link
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: const Size(0, 0),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: const Text(
              'Forgot Password?',
              style: TextStyle(
                color: primaryBlue,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),

        const SizedBox(height: 32),

        // Primary Action Button
        SizedBox(
          width: double.infinity,
          height: 48,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryBlue,
              foregroundColor: AppTheme.primaryWhite,
              elevation: 0,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
            child: const Text(
              'Sign In',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLabel(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: textPrimary,
          height: 1.4,
        ),
      ),
    );
  }

  Widget _buildInput({
    required TextEditingController controller,
    String? hint,
    TextInputType keyboardType = TextInputType.text,
    bool obscure = false,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscure,
      style: const TextStyle(fontSize: 16, color: textPrimary),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: placeholderColor, fontSize: 16),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        filled: true,
        fillColor: AppTheme.primaryWhite,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: borderColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: primaryBlue, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
      ),
    );
  }
}
