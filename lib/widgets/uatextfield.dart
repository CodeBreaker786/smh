import 'package:sarasotaapp/utils/appsettings.dart';
import 'package:sarasotaapp/uatheme.dart';
import 'package:flutter/material.dart';

class UATextField extends StatelessWidget {
  final String hint;
  final Color color;
  final double size;
  final bool isPassword;
  final TextAlign alignment;
  final TextEditingController textEditingController;
  final int maxLines;
  final double paddingTop, paddingLeft, paddingRight, paddingBottom;
  final Widget leading;
  final bool enabled;
  final TextInputType textInputType;
  final Icon icon;
  final Icon suffixicon;

  UATextField({
    this.hint,
    this.color,
    this.size,
    this.isPassword,
    this.alignment,
    this.textEditingController,
    this.maxLines,
    this.paddingLeft,
    this.paddingRight,
    this.paddingBottom,
    this.paddingTop,
    this.leading,
    this.enabled,
    this.textInputType,
    this.icon,
    this.suffixicon,
  });

  @override
  Widget build(BuildContext context) {
    bool isEnabled = enabled;
    double textSize = size;
    int lines = maxLines;
    bool isObscure = isPassword;
    TextInputType textInputType1 = textInputType;
    TextAlign align = alignment;
    double top = paddingTop,
        bottom = paddingBottom,
        left = paddingLeft,
        right = paddingRight;

    if (alignment == null) align = TextAlign.left;
    if (size == null) textSize = UATheme.normalSize();
    if (maxLines == 0 || maxLines == null) lines = 1;
    if (isPassword == null) isObscure = false;
    if (paddingBottom == null) bottom = 0.0;
    if (paddingTop == null) top = 0.0;
    if (paddingLeft == null) left = 0.0;
    if (paddingRight == null) right = 0.0;
    if (enabled == null) isEnabled = true;
    if (textInputType == null) textInputType1 = TextInputType.text;

    return Padding(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: Container(
          height: lines > 1 ? 200 : 50,
          decoration: BoxDecoration(
            color: AppSettings.appBackground,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 10.0,
                offset: Offset(0, 1.0),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              leading != null
                  ? Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 5, 0), child: leading)
                  : Container(),
              Expanded(
                child: TextField(
                  keyboardType: textInputType1,
                  enabled: isEnabled,
                  textAlign: align,
                  obscureText: isObscure,
                  maxLines: lines,
                  minLines: lines,
                  controller: textEditingController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      filled: true,
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: UATheme.headingSize(),
                        fontFamily: 'Nunito',
                      ),
                      fillColor: Colors.white,
                      hintText: hint,
                      hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: UATheme.largeSize(),
                        fontFamily: 'Nunito',
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: icon,
                      suffixIcon: suffixicon),
                ),
              ),
            ],
          )),
    );
  }
}
