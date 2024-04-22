import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/components/app_text_styte.dart';
import 'package:meditation_app/repos/repo.dart';
import 'package:meditation_app/themes/themes.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage2> {
  final Repo repo = Repo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Silent ❤️ Moon"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
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
                    children: [
                      HomeContainer(),
                      HomeContainer(),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200, // Độ cao của danh sách ngang
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: repo.topics.length,
                itemBuilder: (context, index) {
                  final data = repo.topics[index];
                  return Container(
                    margin: const EdgeInsets.all(10),
                    color: Color(int.parse(data.color)),
                    child: Column(
                      children: [
                        SvgPicture.asset(data.thumbnail),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 300, // Độ cao của danh sách dọc
              child: ListView.builder(
                itemCount: repo.topics.length,
                itemBuilder: (context, index) {
                  final data = repo.topics[index];
                  return Container(
                    margin: const EdgeInsets.all(10),
                    color: Color(int.parse(data.color)),
                    child: Column(
                      children: [
                        SvgPicture.asset(data.thumbnail),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 210,
      decoration:const BoxDecoration(
        color: kColorPrimary,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          SvgPicture.asset('assets/home/images/abc.svg'),
          const  SizedBox(height: 8),
        const  AppTextStyte(
            text: "Basics",
            color: kColorLightYellow,
            fontSize: 18,
          ),
        const  AppTextStyte(text: "course", color: kColorLightYellow),
        const  SizedBox(height: 8),
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
                padding:const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration:const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child:const Text(
                  "START",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
