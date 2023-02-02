import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';

Widget getCopyButton({required String toClipboard}) {
  return IconButton(
      onPressed: () {
        FlutterClipboard.copy(toClipboard);
      },
      icon: const Icon(Icons.copy));
}
