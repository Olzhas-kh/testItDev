import 'package:flutter/material.dart';
import 'package:test_it_dev/core/theme/app_colors.dart';

class TextPhone extends StatelessWidget {
  const TextPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40),
      child: Center(
          child: Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            "Bведите номер мобильного телефона",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          Text(
              textAlign: TextAlign.center,
              "Bам придет 4 значный код для подверждения номера",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.kGrey)),
        ],
      )),
    );
  }
}