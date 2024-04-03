import 'package:flutter/material.dart';
import 'package:meditation_app/components/app_elevated_button.dart';
import 'package:meditation_app/components/app_text_styte.dart';
import 'package:meditation_app/pages/choose_topic_page.dart';
import 'package:meditation_app/themes/themes.dart';

class WecomePage extends StatefulWidget {
  const WecomePage({super.key});

  @override
  State<WecomePage> createState() => _WecomePageState();
}

class _WecomePageState extends State<WecomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8E97FD),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20)
                .copyWith(top: 40, bottom: 20),
            child: Column(
              children: [
                const SizedBox(height: 10),
                const Expanded(
                  flex: 1,
                  child: Text(
                    "Silent❤️Moon",
                    style: TextStyle(
                      fontSize: 20,
                      color: kColorLightYellow,
                    ),
                  ),
                ),
                const Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      AppTextStyte(
                        text: "Hi Afsar, Welcome",
                        fontWeight: FontWeight.bold,
                        color: kColorLightYellow,
                        fontSize: 30,
                      ),
                      AppTextStyte(
                        text: "to Silent Moon",
                        color: kColorLightYellow,
                        fontSize: 25,
                        fontWeight: FontWeight.w100,
                      ),
                      SizedBox(height: 8),
                      AppTextStyte(
                        text: "Explore the app, Find some peace of mind to",
                        color: kColorLightGrey,
                        fontSize: 15,
                      ),
                      AppTextStyte(
                        text: "prepare for meditation.",
                        color: kColorLightGrey,
                        fontSize: 15,
                      ),
                      Text(""),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Align(
                    child: Image.asset("assets/wecome_images/bg2.png"),
                  ),
                ),
                Flexible(
                  child: AppElevatedButton(
                  text: "GET STARTED",
                  color: Colors.white,
                  height: 60,
                  textColor: Colors.black,
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>const ChooseTopicPage())),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
