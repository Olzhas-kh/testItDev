import 'package:flutter/material.dart';
import 'package:test_it_dev/core/custom/custom_button%20copy.dart';
import 'package:test_it_dev/core/extensions/num_extension.dart';
import 'package:test_it_dev/core/theme/app_colors.dart';

class ChooseCityScreen extends StatefulWidget {
  const ChooseCityScreen({super.key});

  @override
  State<ChooseCityScreen> createState() => _ChooseCityScreenState();
}

class _ChooseCityScreenState extends State<ChooseCityScreen> {
  String? _selectedCity;

  @override
  Widget build(BuildContext context) {
    List<String> cities = [
      "Aлматы",
      "Aстана",
      "Шымкент",
      "Караганда",
      "Тараз",
      "Актау",
      "Атырау",
      "Семеу",
    ];
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Выберите ваш город",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              200.height,
              Center(
                child: Container(
                  height: 48,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: AppColors.kWhite,
                          style: BorderStyle.solid,
                          width: 2)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        alignment: Alignment.centerLeft,
                        icon: const Icon(Icons.keyboard_arrow_down_rounded),
                        hint: const Text(
                          "Выберите город",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        dropdownColor: AppColors.kWhite,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                        value: _selectedCity,
                        isDense: true,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedCity = newValue!;
                          });
                        },
                        items: cities.map((value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Row(
                              children: [
                                Text(
                                  value,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ),
              200.height
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(20),
          child: CustomButton(
            text: "Далее",
            onTap: () {},
            color: Colors.orange,
          ),
        ));
  }
}
