import 'package:flutter/material.dart';

class DesctopView extends StatelessWidget {
  const DesctopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: s.width * 0.1),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    height: s.height,
                    width: (s.width - (s.width * 0.2)) * 0.70,
                    color: Colors.red,
                    child: Column(
                      children: [
                        const Text('I\'m a very good programmer !!! :)))'),
                        const Text('111111111111111111111111111111111'),
                        const Text('222222222222222222222222222222222'),
                        ElevatedButton(
                          child: const Text('Push me'),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  FlutterLogo(size: (s.width - (s.width * 0.2)) * 0.30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
