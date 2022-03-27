import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBarV extends StatelessWidget {
  const NavigationBarV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (ctx, sz) {
      return Container(
        height: 100,
        width: 1507,
        color: Colors.blue[200],
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            const FlutterLogo(),
            const Spacer(),
            InkWell(
              mouseCursor: MaterialStateMouseCursor.clickable,
              onTap: () {},
              child: const Text('About me...', style: TextStyle(fontSize: 24)),
            ),
          ],
        ),
      );
    });
  }
}
