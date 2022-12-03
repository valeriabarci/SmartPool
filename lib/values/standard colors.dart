import 'package:flutter/material.dart';

class CustomColors {
 Color _primaryColorAppBar = Color.fromARGB(255, 76, 35, 112);
 Color _primaryColorButtonLogin = Color.fromARGB(255, 44, 23, 63);
 Color _textColor = Color.fromARGB(255, 198, 192, 192);
 Color _borderSideColor = Color.fromARGB(255, 99, 52, 139);
 Color _selectButtonColor = Color.fromARGB(255, 155, 143, 239);


  Color getActivePrimaryColorAppBar(){
    return _primaryColorAppBar;
  }

  Color getActivePrimaryColorButtonLogin(){
    return _primaryColorButtonLogin;
  }

  Color getActiveTextColor(){
    return _textColor;
  }

  Color getActiveBorderSideColor(){
    return _borderSideColor;
  }

  Color getActiveSelectButtonColor(){
    return _selectButtonColor;
  }
}
