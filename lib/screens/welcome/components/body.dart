import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:on_it_fitness/components/rounded_button.dart';

// Constants
import 'package:on_it_fitness/constants.dart';

// Components
import 'package:on_it_fitness/screens/welcome/components/background.dart';

// Screens
import '../../login/login_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    String chatImg = 'assets/icons/chat.svg';

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'ON IT',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Fitness',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              chatImg,
              height: size.height * 0.45,
            ),
            RoundedButton(
                size: size,
                text: 'LOGIN',
                press: () {
                  WidgetsBinding.instance.addPostFrameCallback(
                    (_) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                  );
                }),
            RoundedButton(
              size: size,
              text: 'LOGIN',
              press: () {},
              textColor: Colors.black,
              color: kPrimaryLightColor,
            ),
          ],
        ),
      ),
    );
  }
}
