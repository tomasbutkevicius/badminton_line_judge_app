import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:badminton_line_judge_app/constants/proxy.dart';
import 'package:badminton_line_judge_app/constants/regexp.dart';
import 'package:badminton_line_judge_app/theme/theme_colors.dart';
import 'package:badminton_line_judge_app/utilities/common_utilities.dart';
import 'package:badminton_line_judge_app/utilities/form/form_validators.dart';
import 'package:badminton_line_judge_app/widgets/proxy/spacing/proxy_spacing_widget.dart';
import 'package:badminton_line_judge_app/widgets/proxy/text/proxy_text_widget.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ProxyInputTextWidget extends StatelessWidget {
  final String formControlName;
  final String label;
  final Widget? prefixLabel;
  final String? formGroupName;
  final bool denyEmoji;
  final bool topLabel;
  final bool obscureText;
  final int? maxLength;
  final FocusNode? focusNode;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final List<TextInputFormatter> inputFormatters;
  final Color borderColor;
  final Color labelColor;
  final Color textColor;
  final Color fillColor;
  final Color errorColor;
  final ReactiveFormFieldCallback? onChanged;
  final VoidCallback? onSubmitted;

  const ProxyInputTextWidget({
    Key? key,
    required this.label,
    this.prefixLabel,
    this.topLabel = true,
    this.focusNode,
    this.maxLength,
    this.onSubmitted,
    this.onChanged,
    this.formGroupName,
    required this.formControlName,
    this.inputFormatters = const [],
    this.obscureText = false,
    this.denyEmoji = true,
    this.keyboardType = TextInputType.visiblePassword,
    this.textInputAction = TextInputAction.next,
    this.borderColor = ThemeColors.tangerine200,
    this.textColor = ThemeColors.blue500,
    this.fillColor = ThemeColors.tangerine100,
    this.labelColor = ThemeColors.blue200,
    this.errorColor = ThemeColors.red,
  }) : super(key: key);

  String get fullFormControlName => CommonUtilities.joinList([formGroupName, formControlName], separator: '.');

  @override
  Widget build(BuildContext context) {
    Widget textField = ReactiveTextField(
      focusNode: focusNode,
      minLines: keyboardType == TextInputType.multiline ? 3 : null,
      maxLines: keyboardType == TextInputType.multiline ? null : 1,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onSubmitted: (_) => onSubmitted,
      onChanged: onChanged,
      inputFormatters: [...inputFormatters, if (denyEmoji) FilteringTextInputFormatter.deny(RegexpConstants.emoji)],
      formControlName: fullFormControlName,
      validationMessages: FormValidators.validationMessages(),
      style: TextStyle(
        color: textColor,
        fontFamily: ProxyConstants.getFontFamily(ProxyFontFamily.body),
      ),
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        alignLabelWithHint: true,
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: errorColor),
          borderRadius: BorderRadius.zero,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: errorColor),
          borderRadius: BorderRadius.zero,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
          borderRadius: BorderRadius.zero,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
          borderRadius: BorderRadius.zero,
        ),
        counterStyle: TextStyle(color: borderColor),
        filled: fillColor != null,
        label: Row(
          children: [
            if (prefixLabel != null) ...[
              prefixLabel!,
              const ProxySpacingHorizontalWidget(size: ProxySpacing.small),
            ],
            ProxyTextWidget(
              text: label,
              fontSize: ProxyFontSize.small,
              color: labelColor ?? ThemeColors.grey,
            ),
          ],
        ),
        errorStyle: TextStyle(
          color: errorColor,
          fontFamily: ProxyConstants.getFontFamily(ProxyFontFamily.body),
          fontSize: ProxyConstants.getFontSize(ProxyFontSize.small),
        ),
        fillColor: fillColor,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
          borderRadius: BorderRadius.zero,
        ),
      ),
    );

    if (topLabel) {
      return Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: ProxyTextWidget(
              text: label,
              color: textColor,
              fontSize: ProxyFontSize.large,
            ),
          ),
          const ProxySpacingVerticalWidget(size: ProxySpacing.small),
          textField,
        ],
      );
    }

    return textField;
  }
}
