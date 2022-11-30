import 'package:flutter/material.dart';
import 'package:libv_markdown/libv_markdown.dart';

main() async {
  runApp(FlutterTeX());
}

class FlutterTeX extends StatefulWidget {
  @override
  _FlutterTeXState createState() => _FlutterTeXState();
}

class _FlutterTeXState extends State<FlutterTeX> {
  TextEditingController _teXHTMLEditingController =
      new TextEditingController(text: teXHTML);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text("Flutter Markdown Example"),
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Material(
                shape: RoundedRectangleBorder(side: BorderSide()),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(labelText: "TeX HTML input"),
                    controller: _teXHTMLEditingController,
                    maxLines: 15,
                    onChanged: (string) {
                      setState(() {});
                    },
                  ),
                ),
              ),
            ),
            Divider(
              height: 20,
            ),
            Text(
              "Rendered Markdown HTML",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            Container(
              color:Colors.transparent,
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MarkdownView(
                  markdownViewHTML: _teXHTMLEditingController.text,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String teXHTML = r"""
$$sin^2x+cos^2x=1$$
$sin^2x+cos^2x=1$
A Flutter Package to render Markdown , including:

- **LateX(MathPart**

- **Highlight Code**

- It also includes full **HTML** with **JavaScript** support.

Rendering of equations depends on [mini-mathjax](https://github.com/electricbookworks/mini-mathjax) a simplified version of [MathJax](https://github.com/mathjax/MathJax/) a JavaScript library.

This package mainly depends on [webview_flutter](https://pub.dartlang.org/packages/webview_flutter) plugin.

can render text :$sin^2x+cos^2x=1$
$$sin^2x+cos^2x=1$$
   """;
