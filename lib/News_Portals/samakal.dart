import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class samakal extends StatefulWidget {
  const samakal({super.key});

  @override
  State<samakal> createState() => _samakalState();
}

class _samakalState extends State<samakal> {
  late WebViewController controller;
  double progress = 0;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int p) {
            setState(() {
              progress = p / 100;
            });
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {
            setState(() {
              progress = 0; // Reset progress when the page finishes loading.
            });
          },

          onNavigationRequest: (NavigationRequest request) {
            if (Uri.parse(request.url).host != 'https://samakal.com/') {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://samakal.com/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "সমকাল",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
        //centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 4,
        toolbarHeight: 80,
        titleSpacing: 40,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () async {
              if (await controller.canGoBack()) {
                controller.goBack();
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () async {
              if (await controller.canGoForward()) {
                controller.goForward();
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              controller.reload();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          progress < 1.0
              ? LinearProgressIndicator(value: progress)
              : const SizedBox.shrink(),
          Expanded(
            child: WebViewWidget(controller: controller),
          ),
        ],
      ),
    );
  }
}