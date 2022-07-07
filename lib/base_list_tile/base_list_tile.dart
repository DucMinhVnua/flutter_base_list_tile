import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseListTile extends StatelessWidget {
  const BaseListTile(
      {required this.title,
      this.isBorder = false,
      this.radius = BorderRadius.zero,
      this.leading,
      this.trailing,
      this.isDense = false,
      this.isEnabled = true,
      this.isThreeLine = false,
      this.backgroundColor,
      this.iconColor,
      this.borderColor = const Color(0xFF000000),
      this.onTap,
      this.minLeadingWidth,
      this.paddingTitle,
      this.borderWidth = 1.0,
      this.elevation = 1.0,
      this.contentPadding,
      this.borderStyle = BorderStyle.solid});

  final Widget title;
  final Widget? leading;
  final Widget? trailing;
  final bool isDense;
  final bool isEnabled;
  final bool isThreeLine;
  final bool isBorder;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color borderColor;
  final VoidCallback? onTap;
  final double? minLeadingWidth;
  final double? paddingTitle;
  final double borderWidth;
  final double elevation;
  final BorderRadiusGeometry radius;
  final EdgeInsetsGeometry? contentPadding;
  final BorderStyle borderStyle;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: isBorder
            ? RoundedRectangleBorder(
                borderRadius: radius,
                side: BorderSide(
                    color: borderColor, width: borderWidth, style: borderStyle))
            : null,
        elevation: elevation,
        child: ListTile(
            title: title,
            leading: leading,
            trailing: trailing,
            dense: isDense,
            enabled: isEnabled,
            isThreeLine: isThreeLine,
            tileColor: backgroundColor,
            iconColor: iconColor,
            onTap: onTap,
            minLeadingWidth: minLeadingWidth,
            horizontalTitleGap: paddingTitle,
            shape: isBorder
                ? RoundedRectangleBorder(
                    borderRadius: radius,
                    side: BorderSide(
                        color: borderColor,
                        width: borderWidth,
                        style: borderStyle))
                : null,
            contentPadding: contentPadding));
  }
}
