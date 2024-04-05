import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0, right: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppTextStyte(
              text: "Good Morning, Afsar",
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            const AppTextStyte(
              text: "We Wish you have a good day",
              fontSize: 16,
              color: Colors.grey,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Home_container(),
                Home_containers(),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              child: SvgPicture.asset('assets/home/images/abcdef.svg'),
            ),
            const SizedBox(height: 40),
            const AppTextStyte(
              text: "Recomended for you",
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 140,
              width: 404,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: repo.topics.length,
                itemBuilder: (context, index) {
                  final data = repo.topics[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 162,
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          color: Color(int.parse(data.color)),
                          borderRadius:const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 100, 
                              child: SvgPicture.asset(data.thumbnail),
                            ),
                          ],
                        ),
                      ),
                      AppTextStyte(text:data.title , fontWeight: FontWeight.bold, fontSize: 15,),
                      AppTextStyte(text:"MEDITATION 3-10 MIN" , color: Colors.grey, fontSize: 10,),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: const Text(
                  "START",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
