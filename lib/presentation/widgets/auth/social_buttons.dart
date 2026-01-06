import 'package:flutter/material.dart';
import '../../../core/theme/app_theme.dart';

/// Premium Social Authentication Buttons
/// Features accurate SVG icons matching HTML design
class SocialButtons extends StatelessWidget {
  const SocialButtons({Key? key}) : super(key: key);

  static const Color textPrimary = Color(0xFF111318);
  static const Color borderColor = Color(0xFFDBDFE6);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _socialButton(_appleIcon(), 'Apple')),
        const SizedBox(width: 12),
        Expanded(child: _socialButton(_googleIcon(), 'Google')),
      ],
    );
  }

  Widget _socialButton(Widget icon, String label) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppTheme.primaryWhite,
        foregroundColor: textPrimary,
        elevation: 0,
        shadowColor: Colors.transparent,
        side: const BorderSide(color: borderColor, width: 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  // Apple SVG Icon
  Widget _appleIcon() {
    return SizedBox(
      width: 20,
      height: 20,
      child: CustomPaint(painter: AppleIconPainter(), size: const Size(20, 20)),
    );
  }

  // Google SVG Icon
  Widget _googleIcon() {
    return SizedBox(
      width: 20,
      height: 20,
      child: CustomPaint(
        painter: GoogleIconPainter(),
        size: const Size(20, 20),
      ),
    );
  }
}

/// Custom painter for Apple logo
class AppleIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF111318)
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(15.05, 10.14)
      ..cubicTo(16.28, 8.38, 17.65, 8.38, 19.02, 8.38)
      ..cubicTo(20.13, 8.38, 20.47, 9.03, 21.71, 9.03)
      ..cubicTo(22.96, 9.03, 23.34, 8.41, 24.36, 8.38)
      ..cubicTo(25.78, 8.34, 27.24, 8.43, 28.47, 10.21)
      ..cubicTo(30.97, 13.81, 29.11, 19.19, 26.24, 19.34)
      ..cubicTo(25.13, 19.41, 24.28, 18.59, 23.45, 18.59)
      ..cubicTo(22.63, 18.59, 21.55, 19.58, 20.15, 19.58)
      ..cubicTo(19.62, 19.58, 17.62, 19.55, 16.42, 17.79)
      ..cubicTo(16.52, 17.73, 18.43, 16.63, 18.42, 14.39)
      ..cubicTo(18.41, 12.36, 16.68, 11.63, 16.6, 11.6)
      ..cubicTo(16.64, 11.46, 16.95, 10.36, 17.56, 9.48)
      ..lineTo(15.05, 10.14)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// Simplified Apple Icon using Icon widget
class SimpleAppleIcon extends StatelessWidget {
  const SimpleAppleIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.apple, size: 20);
  }
}

/// Simplified Google Icon using Image
class SimpleGoogleIcon extends StatelessWidget {
  const SimpleGoogleIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
      height: 20,
      child: Image.network(
        'https://upload.wikimedia.org/wikipedia/commons/5/53/Google_%22G%22_Logo.svg',
        fit: BoxFit.contain,
      ),
    );
  }
}

/// Custom painter for Google logo - simplified version
class GoogleIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final scale = size.width / 24;
    final paint = Paint()..style = PaintingStyle.fill;

    // Google G logo paths with exact colors
    final gPaint = Paint()..color = const Color(0xFF4285F4);
    final gPaint2 = Paint()..color = const Color(0xFF34A853);
    final gPaint3 = Paint()..color = const Color(0xFFFBBC05);
    final gPaint4 = Paint()..color = const Color(0xFFEA4335);

    // Blue part
    final bluePath = Path()
      ..moveTo(11.7 * scale, 3.5 * scale)
      ..lineTo(11.7 * scale, 3.5 * scale)
      ..cubicTo(
        14.94 * scale,
        3.5 * scale,
        17.67 * scale,
        4.56 * scale,
        19.66 * scale,
        6.39 * scale,
      )
      ..lineTo(15.79 * scale, 9.19 * scale)
      ..cubicTo(
        14.71 * scale,
        8.46 * scale,
        13.32 * scale,
        8.05 * scale,
        11.71 * scale,
        8.05 * scale,
      )
      ..cubicTo(
        8.58 * scale,
        8.05 * scale,
        5.93 * scale,
        10.16 * scale,
        4.98 * scale,
        12.99 * scale,
      )
      ..lineTo(0.97 * scale, 9.89 * scale)
      ..cubicTo(
        2.99 * scale,
        5.89 * scale,
        7.15 * scale,
        3.5 * scale,
        11.71 * scale,
        3.5 * scale,
      )
      ..close();
    canvas.drawPath(bluePath, gPaint);

    // Green part
    final greenPath = Path()
      ..moveTo(11.7 * scale, 12.3 * scale)
      ..cubicTo(
        14.93 * scale,
        12.3 * scale,
        17.65 * scale,
        11.34 * scale,
        19.66 * scale,
        9.42 * scale,
      )
      ..lineTo(15.79 * scale, 6.62 * scale)
      ..cubicTo(
        14.71 * scale,
        7.35 * scale,
        13.32 * scale,
        7.76 * scale,
        11.71 * scale,
        7.76 * scale,
      )
      ..close();
    canvas.drawPath(greenPath, gPaint2);

    // Yellow part
    final yellowPath = Path()
      ..moveTo(4.96 * scale, 15.21 * scale)
      ..cubicTo(
        4.46 * scale,
        16.69 * scale,
        4.46 * scale,
        18.33 * scale,
        4.96 * scale,
        19.81 * scale,
      )
      ..lineTo(0.97 * scale, 16.9 * scale)
      ..cubicTo(
        -0.73 * scale,
        13.5 * scale,
        -0.73 * scale,
        9.51 * scale,
        0.97 * scale,
        6.11 * scale,
      )
      ..close();
    canvas.drawPath(yellowPath, gPaint3);

    // Red part
    final redPath = Path()
      ..moveTo(11.71 * scale, 20.78 * scale)
      ..cubicTo(
        14.93 * scale,
        20.78 * scale,
        17.65 * scale,
        19.82 * scale,
        19.66 * scale,
        17.9 * scale,
      )
      ..lineTo(15.79 * scale, 15.1 * scale)
      ..cubicTo(
        14.71 * scale,
        15.83 * scale,
        13.32 * scale,
        16.24 * scale,
        11.71 * scale,
        16.24 * scale,
      )
      ..close();
    canvas.drawPath(redPath, gPaint4);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
