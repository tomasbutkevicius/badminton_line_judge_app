import 'package:badminton_line_judge_app/constants/proxy.dart';
import 'package:badminton_line_judge_app/theme/theme_colors.dart';
import 'package:flutter/cupertino.dart';

class ProxyTextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final int? maxLines;
  final bool isOverflow;
  final bool isUnderline;
  final bool isUppercase;
  final bool isLineThrough;
  final TextAlign textAlign;
  final FontStyle fontStyle;
  final ProxyFontSize fontSize;
  final ProxyFontWeight fontWeight;
  final ProxyFontFamily fontFamily;
  final double height;

  const ProxyTextWidget({
    Key? key,
    required this.text,
    this.color,
    this.maxLines,
    this.isOverflow = false,
    this.isUnderline = false,
    this.isUppercase = false,
    this.isLineThrough = false,
    this.fontStyle = FontStyle.normal,
    this.textAlign = TextAlign.left,
    this.fontSize = ProxyFontSize.medium,
    this.fontWeight = ProxyFontWeight.regular,
    this.fontFamily = ProxyFontFamily.body,
    this.height = 1.3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      isUppercase ? text.toUpperCase() : text,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: isOverflow ? TextOverflow.ellipsis : TextOverflow.visible,
      style: TextStyle(
        height: height,
        color: color ?? ThemeColors.blue500,
        fontSize: ProxyConstants.getFontSize(fontSize),
        fontWeight: ProxyConstants.getFontWeight(fontWeight),
        fontStyle: fontStyle,
        decoration: isLineThrough
            ? TextDecoration.lineThrough
            : isUnderline
            ? TextDecoration.underline
            : null,
        fontFamily: ProxyConstants.getFontFamily(fontFamily),
      ),
    );
  }
}
