import 'package:flutter/material.dart';

class UiKitTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? label;
  final String? hint;
  final String? helperText;
  final String? errorText;
  final String? successText;
  final bool obscureText;
  final bool isRequired;
  final bool filled;
  final bool forceEnable;
  final bool isBorder;
  final TextInputType? type;
  final Function()? onSuffixTap;
  final FocusNode? focusNode;
  final Color? hintColor;
  final Color? fillColor;
  final double borderRadius;
  final double iconSize;
  final Color? borderColor;
  final Gradient? borderGradient;

  const UiKitTextField({
    super.key,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.label,
    this.hint,
    this.helperText,
    this.errorText,
    this.successText,
    this.obscureText = false,
    this.isRequired = false,
    this.filled = true,
    this.forceEnable = true,
    this.isBorder = true,
    this.type,
    this.onSuffixTap,
    this.focusNode,
    this.hintColor,
    this.fillColor,
    this.borderRadius = 8.0,
    this.iconSize = 16.0,
    this.borderColor,
    this.borderGradient,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Row(
            children: [
              Text(
                label!,
                style: TextStyle(
                  color: errorText != null ? Colors.red : Colors.black,
                ),
              ),
              if (isRequired)
                const Text(
                  ' *',
                  style: TextStyle(color: Colors.red),
                ),
            ],
          ),
        const SizedBox(height: 6),
        Container(
          decoration: isBorder && borderGradient != null
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius),
                  gradient: borderGradient,
                )
              : null,
          padding: isBorder && borderGradient != null
              ? const EdgeInsets.all(1.5)
              : EdgeInsets.zero,
          child: SizedBox(
            height: 40,
            child: TextField(
              controller: controller,
              enabled: forceEnable,
              obscureText: obscureText,
              keyboardType: type,
              focusNode: focusNode,
              decoration: InputDecoration(
                fillColor: fillColor ?? Colors.grey[200],
                filled: filled,
                hintText: hint,
                errorText: errorText,
                helperText: successText ?? helperText,
                hintStyle:
                    TextStyle(color: hintColor ?? Colors.grey, fontSize: 12),
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon != null
                    ? GestureDetector(
                        onTap: onSuffixTap,
                        child: suffixIcon,
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide: isBorder && borderColor != null
                      ? BorderSide(color: borderColor!)
                      : BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide: isBorder && borderColor != null
                      ? BorderSide(color: borderColor!)
                      : BorderSide.none,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 6),
      ],
    );
  }
}
