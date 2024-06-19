import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:test_it_dev/core/custom/custom_button%20copy.dart';
import 'package:test_it_dev/core/custom/custom_textfield.dart';
import 'package:test_it_dev/core/extensions/num_extension.dart';
import 'package:test_it_dev/core/theme/app_colors.dart';
import 'package:test_it_dev/feature/auth/screens/otp_screen.dart';
import 'package:test_it_dev/feature/auth/widgets/text_phone.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    var phoneNumberMaskFormatter = MaskTextInputFormatter(
      mask: '+7 (###) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
    );

    return Scaffold(
        backgroundColor: AppColors.kWhite,
        appBar: AppBar(
          backgroundColor: AppColors.kWhite,
          centerTitle: true,
          title: const Text(
            "Авторизация",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              20.height,
              const TextPhone(),
              20.height,
              CustomTextField(
                hintText: "+7(___)-___-__-__",
                controller: phoneController,
                obscureText: false,
                color: Colors.grey[100],
                borderColor: Colors.grey[100],
                keyboardType: TextInputType.number,
                inputFormatter: [phoneNumberMaskFormatter],
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(20),
          child: CustomButton(
            text: "Далее",
            onTap: () async{
              String phone = phoneController.text;
            phone = phone.replaceAll(RegExp(r'\D'), '');
            phone = '+' + phone;
            await FirebaseAuth.instance.verifyPhoneNumber(
              phoneNumber: phone,
              verificationCompleted: (PhoneAuthCredential credential) async {
                await FirebaseAuth.instance.signInWithCredential(credential);
              },
              verificationFailed: (FirebaseAuthException e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Ошибка верификации: ${e.message}')),

                );
                log(e.toString());
              },
              codeSent: (String verificationId, int? resendToken) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => OtpScreen(phone: phone, verificationId: verificationId),
                ));
              },
              codeAutoRetrievalTimeout: (String verificationId) {},
            );
             
            },
            color: Colors.orange,
          ),
        ));
  }
}
