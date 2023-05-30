import 'package:flutter/material.dart';
import 'package:log_house/api_service.dart';
import 'package:log_house/file_uploder.dart';

final apiService = ApiService();

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome to our Loghouse"),
        ),
        body: FileUploader(),
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
