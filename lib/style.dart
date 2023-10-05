
import 'package:flutter/material.dart';

TextStyle headTextStyle(){
  return TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w800,
    color: Colors.black
  );
}

TextStyle head3TextStyle(){
  return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w800,
      color: Colors.black
  );
}
TextStyle head2TextStyle(){
  return TextStyle(
      fontSize: 14,
      color: Colors.black
  );
}
TextStyle head1TextStyle(){
  return TextStyle(
      fontSize: 14,
      color: Colors.grey
  );
}

ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
      padding: EdgeInsets.all(22),
      backgroundColor: Colors.red,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))
      )
  );
}