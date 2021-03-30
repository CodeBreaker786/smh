import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sarasotaapp/uatheme.dart';
import 'package:sarasotaapp/widgets/ualabel.dart';
import 'package:webview_flutter/webview_flutter.dart' as web;

class SMHEvents extends StatefulWidget {
  final String url;
  final String title;

  SMHEvents({this.url, this.title});

  @override
  _SMHEventsState createState() => _SMHEventsState();
}

class _SMHEventsState extends State<SMHEvents> {
  Completer<web.WebViewController> _controller =
      new Completer<web.WebViewController>();

  @override
  Widget build(BuildContext context) {
    UATheme.init(context);
    return Scaffold(
      appBar: AppBar(
        title: UALabel(
          text: widget.title,
          size: UATheme.headingSize(),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              _controller.future.then((value) => value.goBack());
            },
          ),
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              _controller.future.then((value) => value.reload());
            },
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              _controller.future.then((value) => value.goForward());
            },
          ),
        ],
      ),
      body: web.WebView(
        onWebViewCreated: (web.WebViewController webViewController) {
          _controller.complete(webViewController);
        },
        initialUrl: widget.url,
        javascriptMode: web.JavascriptMode.unrestricted,
      ),
    );
  }
}
