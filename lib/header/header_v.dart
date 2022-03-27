import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderV extends StatelessWidget {
  const HeaderV({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: s.height,
          width: (s.width - (s.width * 0.2)) * 0.70,
          color: Colors.yellow[200],
          child: const HeaderBodyV(),
        ),
        FlutterLogo(size: (s.width - (s.width * 0.2)) * 0.30),
      ],
    );
  }
}

class HeaderBodyV extends StatelessWidget {
  const HeaderBodyV({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                borderRadius: BorderRadius.all(Radius.circular(20))),
            backgroundColor: Colors.red[400],
            side: const BorderSide(width: 1.5, color: Colors.blueAccent),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
            child: Text(
              'Push me',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber[200]),
            ),
          ),
          onPressed: () {},
        ),
        TextButton(
          style: TextButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            backgroundColor: Colors.blue[400],
            side: const BorderSide(width: 1.5, color: Colors.blueAccent),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
            child: Text(
              'Push me again',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber[200]),
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
