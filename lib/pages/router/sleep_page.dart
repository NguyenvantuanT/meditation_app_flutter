import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/components/app_text_styte.dart';
import 'package:meditation_app/repos/repo.dart';
import 'package:meditation_app/themes/themes.dart';

class SleepPage extends StatefulWidget {
  const SleepPage({super.key});

  @override
  State<SleepPage> createState() => _SleepPageState();
}

class _SleepPageState extends State<SleepPage> {
  final repo = Repo();
  final List<Icon> icons = const [
    Icon(
      Icons.all_inbox,
      color: Colors.white,
    ),
    Icon(
      Icons.favorite_outline,
      color: Colors.white,
    ),
    Icon(
      Icons.access_alarm,
      color: Colors.white,
    ),
    Icon(
      Icons.sledding_outlined,
      color: Colors.white,
    ),
    Icon(
      Icons.child_care_outlined,
      color: Colors.white,
    ),
    Icon(
      Icons.all_inbox,
      color: Colors.white,
    ),
    Icon(
      Icons.all_inbox,
      color: Colors.white,
    ),
  ];
  final List<String> titles = [
    "All",
    "My",
    "Anxious",
    "Sleep",
    "Kids",
    "All",
    "My"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorDarkGreyssx,
      body: NestedScrollView(
        headerSliverBuilder: (context, headerSliverBuildes) => [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 14 , right: 14),
              child: Column(
                children: [
                  Stack(
                    children: [
                      SvgPicture.asset('assets/sleep/images/abc.svg'),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 60),
                          child: const Column(
                            children: [
                              AppTextStyte(
                                text: "Sleep Stories",
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(height: 10),
                              AppTextStyte(
                                text:
                                    "Soothing bedtime stories to help you fall",
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                              AppTextStyte(
                                text: "into a deep and natural sleep",
                                color: Colors.grey,
                                fontSize: 14,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 100,
                    width: 404,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: icons.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF586894),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: icons[index],
                              ),
                              const SizedBox(height: 8),
                              AppTextStyte(
                                text: titles[index],
                                color: Colors.white,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
        body: GridView.count(
          mainAxisSpacing: 8.0,
          crossAxisCount: 2,
          children: List.generate(repo.sleeps.length, (index) {
            final data = repo.sleeps[index];
            return Container(
              alignment: AlignmentDirectional.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(data.thumbnail),
                  const SizedBox(height: 8),
                  AppTextStyte(
                    text: data.title,
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  AppTextStyte(
                    text: data.subTitle,
                    color: Colors.grey,
                    fontSize: 12,
                    
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
