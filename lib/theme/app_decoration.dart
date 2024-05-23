import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray700,
      );
  static BoxDecoration get fillBluegray900 => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
// Gradient decorations
  static BoxDecoration get gradientBlueGrayToOnPrimary => BoxDecoration(
        color: appTheme.cyan900,
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1.07),
          colors: [appTheme.blueGray90051, theme.colorScheme.onPrimary],
        ),
      );
  static BoxDecoration get gradientPrimaryContainerToPrimaryContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primaryContainer.withOpacity(0.32),
            theme.colorScheme.primaryContainer
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryContainerToPrimaryContainer1 =>
      BoxDecoration(
        color: appTheme.blueGray900,
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primaryContainer.withOpacity(0.32),
            theme.colorScheme.primaryContainer
          ],
        ),
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}
