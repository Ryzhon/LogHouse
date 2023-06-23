import 'package:flutter/material.dart';

class ArticleGrid extends StatelessWidget {
  const ArticleGrid({Key? key}) : super(key: key);
  static const dummyNum = 3;
  static const dummyTitles = [
    'How to code python in a pythonic way',
    'Only one single thing to make your gorgeous girlfriend',
    'The key to earning countless amounts of money'
  ];
  static const dummyTimeStamp = ['1998-01-04', '2000-07-12', '2004-06-30'];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
          itemCount: dummyNum,
          // physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 16 / 3,
            crossAxisCount: 1,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: const Alignment(0.9, 0.0),
                    colors: [
                      Color.fromARGB(255, 24, 112, 184),
                      Color.fromARGB(255, 95, 157, 208)
                    ]),
              ),
              padding: const EdgeInsets.all(32),
              margin: const EdgeInsets.symmetric(horizontal: 250),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    dummyTitles[index],
                    style: const TextStyle(color: Colors.white, fontSize: 32),
                  ),
                  Text(
                    dummyTimeStamp[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            );
          },
        );
  }
}
