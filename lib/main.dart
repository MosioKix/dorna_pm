import 'package:flutter/material.dart';
import 'package:webview_windows/webview_windows.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final controller = WebviewController();

  MyApp({super.key}) {
    initWebView();
  }

  Future<void> initWebView() async {
    await controller.initialize();
    controller.loadUrl('https://dornapm.ir/adminpanel'); 
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dorna PM',
      home: Scaffold(
        appBar: AppBar(title: const Text('Dorna PM')),
        body: Webview(controller),
      ),
    );
  }
}
