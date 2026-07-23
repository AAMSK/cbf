import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  final String? imageUrl;
  final double borderRadius;
  final EdgeInsetsGeometry margin;
  final double aspectRatio;

  const BannerCard({
    super.key,
    required this.imageUrl,
    this.borderRadius = 16,
    this.margin = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 12,
    ),
    this.aspectRatio = 16 / 6,
  });

  @override
  Widget build(BuildContext context) {
    // Banner না থাকলে কিছুই দেখাবে না
    if (imageUrl == null || imageUrl!.trim().isEmpty) {
      return const SizedBox.shrink();
    }

    return Container(
      margin: margin,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: AspectRatio(
          aspectRatio: aspectRatio,
          child: CachedNetworkImage(
            imageUrl: imageUrl!,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
            fadeOutDuration: const Duration(milliseconds: 200),

            placeholder: (context, url) {
              return Container(
                color: Colors.grey.shade200,
                child: const Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                ),
              );
            },

            errorWidget: (context, url, error) {
              return Container(
                color: Colors.grey.shade100,
                alignment: Alignment.center,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.image_not_supported_outlined,
                      size: 40,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Banner unavailable',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}