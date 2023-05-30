import 'dart:convert';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class FileUploader extends StatefulWidget {
  @override
  _FileUploaderState createState() => _FileUploaderState();
}

class _FileUploaderState extends State<FileUploader> {
  String? _fileContent;

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.any,
      withData: true,
    );

    if (result != null) {
      final PlatformFile file = result.files.first;
      final String s = utf8.decode(file.bytes!);
      // print(s);

      setState(() {
        _fileContent = s;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: _pickFile,
            child: const Text('Select File'),
          ),
          if (_fileContent != null)
            LimitedBox(
              maxHeight: 300,
              maxWidth: 300,
              child: MarkdownWidget(
                data: _fileContent!,
              ),
            ),
          // Text(_fileContent!),
        ],
      ),
    );
  }
}
