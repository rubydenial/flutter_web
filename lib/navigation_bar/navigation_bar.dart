import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBarV extends StatelessWidget {
  const NavigationBarV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (ctx, sz) {
      onPressed() {}
      return Container(
        height: 100,
        width: 1507,
        color: Colors.blue[200],
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            const FlutterLogo(),
            const Spacer(),
            for (var item in kNavigationItems)
              NavigationBarItem(onPressed: onPressed, text: item.text),
          ],
        ),
      );
    });
  }
}

class NavigationItem {
  final String text;
  NavigationItem(this.text);
}

final kNavigationItems = [
  NavigationItem('Projects'),
  NavigationItem('Skills'),
  NavigationItem('About me'),
  NavigationItem('Blog')
];

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem(
      {Key? key, required this.onPressed, required this.text})
      : super(key: key);

  final Null Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 64),
      child: InkWell(
        mouseCursor: MaterialStateMouseCursor.clickable, // TODO: Why ?
        onTap: onPressed,
        child: Text(text, style: const TextStyle(fontSize: 24)),
      ),
    );
  }
}
