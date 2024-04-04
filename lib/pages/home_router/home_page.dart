import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/components/app_siverbar.dart';
import 'package:meditation_app/components/app_text_styte.dart';
import 'package:meditation_app/repos/repo.dart';
import 'package:meditation_app/themes/themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Repo repo = Repo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Silent ❤️ Moon"),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, headerSliverBuilder) => [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTextStyte(
                        text: "Good Morning, Afsar",
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                      AppTextStyte(
                        text: "We Wish you have a good day",
                        fontSize: 15,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Home_container(), Home_containers()],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 80,
                    width: 442,
                    decoration: const BoxDecoration(
                      color: Color(0xFF333242),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 13),
                              AppTextStyte(
                                text: "Daily Thought",
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(height: 8),
                              AppTextStyte(
                                text: "MEDITATION 3-10 MIN",
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ],
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.black,
                            ),
                          )
                        ]),
                  ),
                  const SizedBox(height: 30),
                  const AppTextStyte(
                    text: "Recomended for you",
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
            ),
          )
        ],
        body: NestedScrollView(
            headerSliverBuilder: (context, headerSliverBuilder) => [
                  AppSliverAppBar(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: repo.topics.length,
                      itemBuilder: (context, index) {
                        final data = repo.topics[index];
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 160,
                                height: 120,
                                decoration: BoxDecoration(
                                    color: Color(int.parse(data.color)),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10))),
                                child: SvgPicture.asset(data.thumbnail),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                data.title,
                                style:const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
            body: Container()),
      ),
    );
  }
}

Container Home_containers() {
  return Container(
    width: 170,
    height: 210,
    decoration: const BoxDecoration(
      color: kColorDarkGreys,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Column(
      children: [
        SvgPicture.asset('assets/home/images/abc.svg'),
        const SizedBox(height: 8),
        const AppTextStyte(
          text: "Relaxation",
          color: kColorDarkGrey,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        const AppTextStyte(text: "MUSIC", color: kColorDarkGrey),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const AppTextStyte(
              text: "3-10 MIN",
              color: kColorDarkGrey,
              fontSize: 10,
            ),
            Container(
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: const Text(
                  "START",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ))
          ],
        )
      ],
    ),
  );
}

Container Home_container() {
  return Container(
    width: 160,
    height: 210,
    decoration: const BoxDecoration(
      color: kColorPrimary,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Column(
      children: [
        SvgPicture.asset('assets/home/images/abc.svg'),
        const SizedBox(height: 8),
        const AppTextStyte(
          text: "Basics",
          color: kColorLightYellow,
          fontSize: 18,
        ),
        const AppTextStyte(text: "course", color: kColorLightYellow),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const AppTextStyte(
              text: "3-10 MIN",
              color: kColorLightYellow,
              fontSize: 10,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: const Text(
                "START",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
