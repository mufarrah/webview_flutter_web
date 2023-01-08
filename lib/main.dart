import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'register_web_webview_stub.dart'
    if (dart.library.html) "register_web_webview.dart";

void main() {
  registerWebViewWebImplimentation();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Webview flutter web',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Webview flutter web'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: Row(
            children: const [
              Expanded(
                child: WebView(
                  initialUrl: "https://flutter.dev",
                ),
              ),
              Expanded(
                child: WebView(
                  initialUrl: "https://www.squarespace.com/website-design",
                ),
              ),
            ],
          ),
        ));
  }
}
