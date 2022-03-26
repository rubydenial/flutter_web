import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                    color: Colors.yellow[200],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I\'m a very good programmer !!! :)))',
                          style: GoogleFonts.montserrat(fontSize: 60),
                        ),
                        const SizedBox(height: 37),
                        const Text(
                          '222222222222222222222222222222222',
                          style: TextStyle(fontSize: 24),
                        ),
                        const SizedBox(height: 41),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            backgroundColor: Colors.red[400],
                            side: const BorderSide(
                                width: 1.5, color: Colors.blueAccent),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 7),
                            child: Text(
                              'Push me',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber[200]),
                            ),
                          ),
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
