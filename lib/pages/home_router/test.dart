import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/components/app_text_styte.dart';
import 'package:meditation_app/repos/repo.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
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
              padding:const EdgeInsets.all(20.0),
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
                  Container(
                    height: 200,
                    width: 300,
                    color: Colors.amber,
                    child: SvgPicture.asset('assets/home/images/abc.svg'),
                  ),
                ],
              ),
            ),
          )
        ],
        body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: repo.topics.length,
          itemBuilder: (context, index) {
            final data = repo.topics[index];
            return Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Color(int.parse(data.color)),
                  child: SvgPicture.asset(data.thumbnail),
                ),
                Text(""),
              ],
            );
          },
        ),
      ),
    );
  }
}
