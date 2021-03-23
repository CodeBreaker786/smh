import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sarasotaapp/uatheme.dart';
import 'package:sarasotaapp/widgets/ualabel.dart';
import 'package:webview_flutter/webview_flutter.dart' as web;

class SurgeryStatus extends StatefulWidget {
  final String url;

  SurgeryStatus({this.url});

  @override
  _SurgeryStatusState createState() => _SurgeryStatusState();
}

class _SurgeryStatusState extends State<SurgeryStatus> {
  Completer<web.WebViewController> _controller =
      new Completer<web.WebViewController>();

  @override
  Widget build(BuildContext context) {
    UATheme.init(context);
    return Scaffold(
      appBar: AppBar(
        title: UALabel(
          text: 'Surgery Status',
          size: UATheme.headingSize(),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              _controller.future.then((value) => value.reload());
            },
          ),
        ],
      ),
      body: web.WebView(
        onWebViewCreated: (web.WebViewController webViewController) {
          _controller.complete(webViewController);
        },
        initialUrl: widget.url,
      ),
    );
  }
}
