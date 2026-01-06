import 'package:flutter/material.dart';
import '../../../core/theme/app_theme.dart';

/// Premium Authentication Header with Hero Image
/// Features gradient overlay matching HTML design for seamless content integration
class AuthHeader extends StatelessWidget {
  final String imageUrl;
  final double? height;
  const AuthHeader({Key? key, required this.imageUrl, this.height})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headerHeight = height ?? 256.0; // h-64 equivalent

    return SizedBox(
      height: headerHeight,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Hero Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
          ),
          // Gradient Overlay - white from bottom to transparent at top
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  AppTheme.primaryWhite.withOpacity(1.0),
                  AppTheme.primaryWhite.withOpacity(0.4),
                  AppTheme.primaryWhite.withOpacity(0.0),
                ],
                stops: const [0.0, 0.4, 1.0],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
