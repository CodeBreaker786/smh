import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:sarasotaapp/uatheme.dart';
import 'package:sarasotaapp/widgets/ualabel.dart';

class FindaDoctor extends StatefulWidget {
  final String url;

  FindaDoctor({this.url});

  @override
  _FindaDoctorState createState() => _FindaDoctorState();
}

class _FindaDoctorState extends State<FindaDoctor> {
  /// Completer<WebViewController> _controller = new Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    UATheme.init(context);
    return Scaffold(
      appBar: AppBar(
        title: UALabel(
          text: 'Find a Doctor',
          size: UATheme.headingSize(),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              // _controller.future.then((value) => value.reload());
            },
          ),
        ],
      ),
      body: WebviewScaffold(
        appCacheEnabled: true,
        clearCookies: false,
        clearCache: false,
        withJavascript: true,
        url: widget.url,
        withZoom: true,
        withLocalStorage: true,
        hidden: true,
      ),
    );
  }
}
