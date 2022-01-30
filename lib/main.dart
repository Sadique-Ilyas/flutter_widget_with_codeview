import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

void main() {
  runApp(const MyApp());
}

/// ensure the files in sourceFilePath are included in pubspec.yaml
/// in this case the codeViewer will display this file's code
/// by pointing to the main.dart file
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
          body: SourceCodeView(
        filePath: "lib/main.dart",
        codeLinkPrefix: "https://www.google.com/",
        // iconBackgroundColor: Colors.amber,
        // iconForegroundColor: Colors.cyan,
        labelBackgroundColor: Colors.red,
        labelTextStyle: const TextStyle(fontSize: 50),
        showLabelText: true,
        syntaxHighlighterStyle: SyntaxHighlighterStyle(
          baseStyle: TextStyle(color: Colors.lightBlueAccent.shade100),
          classStyle: const TextStyle(color: Colors.greenAccent),
          commentStyle: const TextStyle(color: Colors.lightGreen),
          stringStyle: const TextStyle(color: Colors.orange),
          keywordStyle: TextStyle(color: Colors.blue.shade500),
          numberStyle: TextStyle(color: Colors.yellowAccent.shade100),
          constantStyle: const TextStyle(color: Colors.lightGreen),
          punctuationStyle: const TextStyle(color: Colors.yellow),
        ),
      )),
    );
  }
}
