import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/logo.svg"
              ),
            const Text("Asynconf 2023",
              style: TextStyle(
                fontSize: 38,
                fontFamily: 'Poppins' 
              ),
            ),
              const Text("Salon virtuel de l'informatique du 27 au 29 octobre 2023",
              style: TextStyle(
                fontSize: 20
              ),
              textAlign: TextAlign.center,
            ),
            const Padding(padding: EdgeInsets.all(10)),
          ],
        ),
      );
  }
}