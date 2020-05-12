# Flutter Markdown

A Flutter Package to render so many types of equations based on **Markdown/LaTeX**, most commonly used are as followings:

- **Mathematics / Maths Equations** (Algebra, Calculus, Geometry, Geometry etc...)

- **Code Highlight**

- It also includes full **HTML** with **JavaScript** support.

Rendering of equations depends on [mini-mathjax](https://github.com/electricbookworks/mini-mathjax) a simplified version of [MathJax](https://github.com/mathjax/MathJax/) a JavaScript library.

This package mainly depends on [webview_flutter](https://pub.dartlang.org/packages/webview_flutter) plugin.



## Use this package as a library in your flutter Application

**1:** Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  libv_markdown: ^1.0.0
```

**2:** You can install packages from the command line:

```bash
$ flutter packages get
```

Alternatively, your editor might support flutter packages get. Check the docs for your editor to learn more.


**3:** For **Android** Make sure to add this line `android:usesCleartextTraffic="true"` in your `<project-directory>/android/app/src/main/AndroidManifest.xml` under `application` like this.
```xml
<application
       android:usesCleartextTraffic="true">
</application>
```
and permissions
```xml
    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
    <uses-permission android:name="android.permission.WAKE_LOCK" />
```

For **iOS** add following code in your `<project-directory>/ios/Runner/Info.plist`
```plist

<key>NSAppTransportSecurity</key>

  <dict>
    <key>NSAllowsArbitraryLoads</key> <true/>
  </dict>

<key>io.flutter.embedded_views_preview</key> <true/>
```

**4:** Now in your Dart code, you can use:

```dart
import 'package:flutter_markdown/flutter_markdown.dart';
```

**5:** Now you can use TeXHTML widget like this.
```dart
    markdownView(
          markdownViewHTML: r"""$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$<br> """,

          onRenderFinished: (height) {
                print("Widget Height is : $height")
                },

          onPageFinished: (string) {
                print("Page Loading finished");
              },
        )
```
[Complete working application Example](https://github.com/jaloroo/flutter_markdown/tree/master/example)


## Known Issues:
- A bit slow rendering speed. It takes 1-2 seconds to render after application loaded.

## Cautions:
- Please avoid using too many MarkdownViews in a single page, because this is based on [webview_flutter](https://pub.dartlang.org/packages/webview_flutter) a complete web browser. Which may cause to slow down your app.

## Thanks to:
- [flutter_tex](https://github.com/shahxadakram/flutter_tex)
