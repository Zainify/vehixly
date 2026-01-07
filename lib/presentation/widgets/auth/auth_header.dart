import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
          CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            alignment: Alignment.center,
            placeholder: (context, url) => Container(
              color: AppTheme.surfaceGray,
              child: Center(
                child: CircularProgressIndicator(
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    AppTheme.electricBlue,
                  ),
                ),
              ),
            ),
            errorWidget: (context, url, error) => Container(
              color: AppTheme.surfaceGray,
              child: const Center(
                child: Icon(
                  Icons.directions_car,
                  size: 60,
                  color: AppTheme.textGray,
                ),
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
