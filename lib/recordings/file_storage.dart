// import 'dart:async';
// import 'dart:io';
//
// import 'package:path_provider/path_provider.dart';
//
// class FileStorage {
//   Future<String?> get _localPath async {
//     // final directory = await getApplicationDocumentsDirectory();
//     final directory = await getExternalStorageDirectory();
//     return directory?.path;
//   }
//
//   Future<File> get _localFile async {
//     final path = await _localPath;
//     print("fffffffffff$path");
//     return File('$path/data.txt');
//   }
//
//   Future<File> writeData(String data) async {
//     final file = await _localFile;
//     return file.writeAsString(data);
//   }
//
//   // Future<String> readData() async {
//   //   try {
//   //     final file = await _localFile;
//   //     String contents = await file.readAsString();
//   //     return contents;
//   //   } catch (e) {
//   //     return '';
//   //   }
//   //   }
// }

import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class FileStorage {
  Future<String?> get _localPath async {
    final directory = await getExternalStorageDirectory();
    return directory?.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/recorded_audio.mp3');
  }

  Future<File> writeData(String audioFilePath) async {
    final file = await _localFile;
    return File(audioFilePath).copy(file.path);
    }
}