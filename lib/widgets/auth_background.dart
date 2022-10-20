import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          const _PurpleBox(),
          const HeaderIcon(),
          child,
        ],
      ),
    );
  }
}

class HeaderIcon extends StatelessWidget {
  const HeaderIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Icon(
          Icons.person_pin_circle_rounded,
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}

class _PurpleBox extends StatelessWidget {
  const _PurpleBox({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.40,
      decoration: _PurpleBackground(),
      child: Stack(
        children: const <Widget>[
          Positioned(
            top: 90,
            left: 30,
            child: _Bubble(),
          ),
          Positioned(
            top: -40,
            left: -30,
            child: _Bubble(),
          ),
          Positioned(
            bottom: -50,
            left: 10,
            child: _Bubble(),
          ),
          Positioned(
            top: -50,
            left: 20,
            child: _Bubble(),
          ),
          Positioned(
            top: 120,
            right: 30,
            child: _Bubble(),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  BoxDecoration _PurpleBackground() {
    return const BoxDecoration(
        gradient: LinearGradient(colors: [
      Color.fromRGBO(63, 63, 156, 1),
      Color.fromRGBO(90, 70, 178, 1),
    ]));
  }
}

class _Bubble extends StatelessWidget {
  const _Bubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromRGBO(255, 255, 255, 0.05)),
    );
  }
}
