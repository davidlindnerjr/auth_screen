import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:on_it_fitness/constants.dart';
import 'package:on_it_fitness/screens/login/components/text_field_container.dart';

// Components
import 'background.dart';
import 'rounded_input_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    String mainTop = 'assets/images/main_top.png';
    String loginBottom = 'assets/images/login_bottom.png';

    String loginAsset = 'assets/icons/login.svg';

    Icon personIcon = const Icon(
      Icons.person,
      color: kPrimaryColor,
    );

    return Background(
      size: size,
      mainTop: mainTop,
      loginBottom: loginBottom,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'LOGIN',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            loginAsset,
            height: size.height * 0.35,
          ),
          RoundedInputField(
            size: size,
            hintText: 'Your Email',
            icon: personIcon,
            onChanged: (value) {},
          ),
          TextFieldContainer(
            size: size,
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Password',
                  icon: Icon(
                    Icons.lock,
                    color: kPrimaryColor,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: kPrimaryColor,
                  ),
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
