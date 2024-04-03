import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/components/app_text_styte.dart';
import 'package:meditation_app/models/topic_model.dart';
import 'package:meditation_app/pages/reminder_page.dart';
import 'package:meditation_app/repos/repo.dart';

class ChooseTopicPage extends StatefulWidget {
  const ChooseTopicPage({super.key});

  @override
  State<ChooseTopicPage> createState() => _ChooseTopicPageState();
}

class _ChooseTopicPageState extends State<ChooseTopicPage> {
  final Repo repo = Repo();
  List<TopicModel> topics = [];

  @override
  void initState() {
    super.initState();
    topics = repo.topics;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10).copyWith(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppTextStyte(
                      text: "What Brings you",
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    AppTextStyte(
                      text: "to Silent Moon?",
                      fontSize: 22,
                      fontWeight: FontWeight.w100,
                    ),
                    SizedBox(height: 14),
                    AppTextStyte(
                      text: "choose a topic to focuse on:",
                      fontSize: 17,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(topics.length, (index) {
                  final data = topics[index];
                  return GestureDetector(
                    onTap: () {
                      if (data.title == "Reduce Stress") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReminderPage(),
                          ),
                        );
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(int.parse(data.color)),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                              child: SvgPicture.asset(
                            data.thumbnail,
                          )),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: AppTextStyte(
                              text: data.title,
                              color: Color(
                                int.parse(data.textColor),
                              ),
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
