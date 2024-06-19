import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({
    super.key, required this.textEditingController,
   
  });
  final TextEditingController textEditingController;



  @override
  Widget build(BuildContext context) {
    const defaultPinTheme = PinTheme(
      width: 50,
      height: 50,
      textStyle: TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.orange,
            width: 1.5,
          ),
        ),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration:const  BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.orange,
            width: 2.0,
          ),
        ),
      ),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      textStyle:const  TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
    );

    final followingPinTheme = defaultPinTheme.copyWith(
      decoration:const  BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey, 
            width: 1.5,
          ),
        ),
      ),
    );
    return Pinput(
      controller: textEditingController,
      length: 6,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      followingPinTheme: followingPinTheme,
      
    );
  }
}
