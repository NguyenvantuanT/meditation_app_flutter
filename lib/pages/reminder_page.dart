import 'package:flutter/material.dart';
import 'package:meditation_app/components/app_text_styte.dart';

class ReminderPage extends StatefulWidget {
  const ReminderPage({super.key});

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  List<String> day = ['Su', 'M', 'T', 'W', 'TH', 'F', 'S'];

  List<bool> isSelected = [false, false, false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 80),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextStyte(
                    text: "What time would you",
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                  AppTextStyte(
                    text: "like to meditate?",
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                  SizedBox(height: 8),
                  AppTextStyte(
                    text: "Any time you can choose but We recommend",
                    color: Colors.grey,
                  ),
                  AppTextStyte(
                    text: "first thing in th morning.",
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0xFFE1E1E5),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppTextStyte(
                    text: "What day would you",
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                  const AppTextStyte(
                    text: "like to meditate?",
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                  const SizedBox(height: 8),
                  const AppTextStyte(
                    text: "Everyday is best, but we recommend picking",
                    color: Colors.grey,
                  ),
                  const AppTextStyte(
                    text: "at least five.",
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        day.length,
                        (index) => GestureDetector(
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                child: Text(
                                  day[index],
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
        ]),
      ),
    );
  }
}
