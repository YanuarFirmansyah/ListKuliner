import 'package:flutter/material.dart';
import 'package:flutter_application_4/makanan.dart';
import 'package:flutter_application_4/styles.dart';

class DetailPage extends StatelessWidget {
  final Makanan makanan;
  DetailPage({super.key, required this.makanan});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: pageBgColor,
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Stack(
              children: [
                Image.asset(makanan.gambarUtama, scale: 0.5),
                Row(
                  children: [
                    ButtonBack(),
                  ],
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}

class ButtonBack extends StatelessWidget {
  const ButtonBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}
