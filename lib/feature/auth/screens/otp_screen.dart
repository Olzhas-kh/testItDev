import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_it_dev/core/custom/custom_button%20copy.dart';
import 'package:test_it_dev/core/extensions/num_extension.dart';
import 'package:test_it_dev/core/theme/app_colors.dart';
import 'package:test_it_dev/feature/auth/screens/choose_city_screen.dart';
import 'package:test_it_dev/feature/auth/widgets/otp_input.dart';
import 'package:test_it_dev/feature/auth/widgets/text_otp.dart';

class OtpScreen extends StatelessWidget {
  final String phone;
  final String verificationId;

  const OtpScreen(
      {super.key, required this.phone, required this.verificationId});
  @override
  Widget build(BuildContext context) {
    TextEditingController otpController = TextEditingController();

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
              TextOtp(
                phone: phone,
              ),
              20.height,
              Center(
                child: OtpInput(
                  textEditingController: otpController,
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(20),
          child: CustomButton(
            text: "Далее",
            onTap: () async {
              String smsCode = otpController.text;
              PhoneAuthCredential credential = PhoneAuthProvider.credential(
                verificationId: verificationId,
                smsCode: smsCode,
              );

              try {
                await FirebaseAuth.instance.signInWithCredential(credential);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ChooseCityScreen()));
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text('Ошибка верификации: ${e.toString()}')),
                );
                log(e.toString());
              }
            },
            color: Colors.orange,
          ),
        ));
  }
}
