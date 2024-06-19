import 'package:flutter/material.dart';
import 'package:test_it_dev/core/theme/app_colors.dart';

class TextOtp extends StatelessWidget {
  final String phone;
  const TextOtp({
    super.key,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40),
      child: Center(
          child: Column(
        children: [
          const Text(
            textAlign: TextAlign.center,
            "Мы отправили вам 4 значный код введите его в поле",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  textAlign: TextAlign.center,
                  "на номер ",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kGrey),
                ),
                Text(
                  phone,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.orange),
                ),
              ],
            ),
          
        ],
      )),
    );
  }
}
