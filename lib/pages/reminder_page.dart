import 'package:flutter/material.dart';
import 'package:meditation_app/components/app_elevated_button.dart';
import 'package:meditation_app/components/app_text_styte.dart';
import 'package:meditation_app/pages/home_page.dart';

class ReminderPage extends StatefulWidget {
  const ReminderPage({super.key});

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  List<String> day = ['Su', 'M', 'T', 'W', 'TH', 'F', 'S'];
  List<String> clock = ['AM', 'PM'];
  late Color color;
  @override
  void initState() {
    color = Colors.black;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                    color: Color(0xFFF5F5F9),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: SizedBox(
                  height: 200,
                  child: ListWheelScrollView(
                    itemExtent: 50,
                    children: [
                      for (int hour = 0; hour <= 12; hour++)
                        Center(
                          child: Text(
                            hour.toString(),
                            style:const TextStyle(fontSize: 20),
                          ),
                        ),
                    ],
                  ),
                ),
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
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        day.length,
                        (index) => GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            backgroundColor: color,
                            child: Text(
                              day[index],
                              style:const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppElevatedButton(
                      text: "SAVE",
                      height: 60,
                      textColor: Colors.white,
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()))),
                  const SizedBox(height: 10),
                  const Text("NO THANKS")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
