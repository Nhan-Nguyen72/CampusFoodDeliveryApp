import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import '../palatte.dart';

Container loginSignupButton(
    BuildContext context, bool isLogin, Function onTap) {
  // ignore: sized_box_for_whitespace
  return Container(
    width: double.infinity,
    height: 50,
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.white;
            }
            return Color.fromARGB(255, 210, 71, 61);
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))),
      child: Text(
        isLogin ? "Log In" : "Sign Up",
        style: GoogleFonts.lemon(textStyle: kBodyTextalt),
      ),
    ),
  );
}

TextField resuableTextFieldEP(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
      controller: controller,
      obscureText: isPasswordType,
      enableSuggestions: !isPasswordType,
      autocorrect: !isPasswordType,
      decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Color.fromARGB(255, 210, 71, 61),
          ),
          labelText: text,
          labelStyle: kBodyText,
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          )),
      keyboardType: isPasswordType
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress);
}
