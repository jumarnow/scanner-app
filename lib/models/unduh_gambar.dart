import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

Future<void> unduhGambar(BuildContext context, String path) async {
  bool isDownloading = true;
  try {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String savePath = '${appDocDir.path}/downloaded_file';

    Dio dio = Dio();
    await dio.download(path, savePath);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Download selesai'),
      ),
    );
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Error: $e'),
      ),
    );
  } finally {
    isDownloading = false;
  }
}
