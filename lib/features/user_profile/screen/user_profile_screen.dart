import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SvgPicture.asset(
          'assets/icons/break_away.svg',
          width: 100,
          height: 100,
          colorFilter: ColorFilter.mode(
            Colors.red,
            BlendMode.color,
          ), // optional, for monochrome icons
        ),
      ),
    );
  }
}
