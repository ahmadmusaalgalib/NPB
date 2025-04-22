import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ntvonline extends StatefulWidget {
  const ntvonline({super.key});

  @override
  State<ntvonline> createState() => _ntvonlineState();
}

class _ntvonlineState extends State<ntvonline> {
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
            if (Uri.parse(request.url).host != 'https://www.ntvbd.com/') {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://www.ntvbd.com/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "এনটিভি অনলাইন",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        //centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
        elevation: 4,
        toolbarHeight: 80,
        titleSpacing: 10,
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
