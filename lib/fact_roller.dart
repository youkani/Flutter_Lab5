import 'package:flutter/material.dart';
import 'dart:math';
import 'fact_text.dart';

final randomizer = Random();

class FactRoller extends StatefulWidget {
  const FactRoller({super.key});

  @override
  State<FactRoller> createState() {
    return _FactRollerState();
  }
}

class _FactRollerState extends State<FactRoller> {

  final List<String> facts = ['Аксолотль это личинка земноводного, которая может всю жизнь оставаться в этой личиночной стадии и при этом размножаться.', 

'Киты и бегемоты — ближайшие родственники. Это подтверждается современными данными молекулярной генетики и палеонтологии.',

'Гора Олимп на Марсе — самая высокая в Солнечной системе. Её высота достигает 21 километра.',

'Сатурн обладает низкой средней плотностью, поэтому, если бы существовал достаточно большой бассейн с водой, он мог бы плавать на её поверхности.',

'В 1386 году во Франции свинью казнили за убийство. Животное напало на ребёнка, который впоследствии скончался от полученных ран. Свинью арестовали, судили, признали виновной и повесили.',

'В России закончилась водка из-за празднования окончания Второй мировой войны. Улицы Советского Союза заполнились стихийными празднованиями, которые продолжались несколько дней, пока все запасы водки в стране не закончились всего через 22 часа после начала празднования.'];

  int factIndex = 0;

  void rollFacts() {
    setState(() {
      factIndex = randomizer.nextInt(facts.length);
    });
}

  @override
  Widget build(BuildContext context) {
    final currentFact = facts[factIndex];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/fact${factIndex+1}.png',
          width: 300,
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.all(60.0),
          child: FactText(currentFact),
        ),
        const SizedBox(height: 50), 
        TextButton(
          onPressed: rollFacts,
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 203, 250, 179),
            textStyle: const TextStyle(
              fontSize: 30,
            ),
          ),
          child: Text("Узнать факт"),
          ),
      ],
    );
  }
}