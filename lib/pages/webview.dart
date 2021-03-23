 

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:sarasotaapp/uatheme.dart';
import 'package:sarasotaapp/widgets/ualabel.dart';
 

class WebView extends StatefulWidget {
  final String url;
  final String title;

  WebView({this.url, this.title, String initialUrl});

  @override
  _WebViewState createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
//  Completer<WebViewController> _controller = new Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    UATheme.init(context);
    return Scaffold(
      appBar: AppBar(
        title: UALabel(
          text: widget.title,
          size: UATheme.headingSize(),
        ),
      ),
      body: WebviewScaffold(
        appCacheEnabled: true,
        clearCookies: false,
        clearCache: false,
        url: widget.url,
        withLocalStorage: true,
        withJavascript: true,
        withZoom: true,
        hidden: true,
      ),
    );
  }
}

//JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
//  return web.JavascriptChannel(
//      name: 'Toaster',
//      onMessageReceived: (JavascriptMessage message) {
//        Scaffold.of(context).showSnackBar(
//          SnackBar(content: Text(message.message)),
//        );
//      });
//}
