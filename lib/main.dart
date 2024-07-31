import 'package:flutter/material.dart';
import 'package:web_view/iframeView.dart';

void main() async {
  runApp(IFrameTesterApp());
}

class IFrameTesterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Webview Example'),
          centerTitle: true,
        ),
        body: const Row(
          children: [
            Expanded(
              child: IframeView(
                source: 'https://flutter.dev',
              ),
            ),
            Expanded(
              child: IframeView(
                source: 'https://www.squarespace.com/website-design',
              ),
            ),
          ],
        ),
      ),
      theme: ThemeData.light(),
    );
  }
}
