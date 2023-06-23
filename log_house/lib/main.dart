import 'package:flutter/material.dart';
import 'package:log_house/article_grid.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome to our Loghouse"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // FileUploader(),
              const SizedBox(
                height: 50,
              ),
              const ArticleGrid(),
            ],
          ),
        ),

        // Scrollbar(
        //   child: ListView.separated(
        //       itemCount: 10,
        //       // separatorBuilder:(context, index) => Divider(),
        //       separatorBuilder: (context, index) {
        //         return Container(
        //           height: 1,
        //           color: Colors.blueGrey,
        //           margin: const EdgeInsets.symmetric(horizontal: 16),
        //         );
        //       },
        //       itemBuilder: (context, index) {
        //         return ListTile(
        //           title: Text('Item $index'),
        //         );
        //       }),
        // ),
      ),
    ),
  );
}
