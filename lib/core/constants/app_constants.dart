import 'package:flutter/material.dart';

/// ------------------------------------------------------------
/// CBF App Constants
/// Chavali Blood Foundation
/// ------------------------------------------------------------
class AppConstants {
  AppConstants._();

  // App Information
  static const String appName = 'CBF';
  static const String organizationName = 'চাঁভালি রক্ত ফাউন্ডেশন';
  static const String tagline = 'Donate Blood, Save Lives';
  static const String version = '1.0.0';

  // API
  static const String baseUrl = 'https://your-domain.com/api';

  // Shared Preferences Keys
  static const String isLoggedInKey = 'is_logged_in';
  static const String userTokenKey = 'user_token';
  static const String userIdKey = 'user_id';
  static const String userDataKey = 'user_data';

  // Animation
  static const Duration splashDuration = Duration(seconds: 3);
  static const Duration animationDuration = Duration(milliseconds: 300);

  // UI
  static const double screenPadding = 16.0;
  static const double cardRadius = 12.0;
  static const double buttonRadius = 12.0;
  static const double inputRadius = 12.0;

  // Default Sizes
  static const double logoSize = 140;
  static const double iconSize = 24;
}