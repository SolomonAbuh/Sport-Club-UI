import 'package:flutter/material.dart';

class CircularButton extends StatefulWidget {
  final VoidCallback onTap;
  final Widget child;

  const CircularButton({
    Key? key,
    required this.onTap,
    required this.child,
  }) : super(key: key);

  @override
  State<CircularButton> createState() => _CircularButtonState();
}

class _CircularButtonState extends State<CircularButton>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late double scale;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 250),
        lowerBound: 0.0,
        upperBound: 0.2)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    scale = 1 - controller.value;

    void onTapDown(TapDownDetails details) {
      controller.forward();
    }

    void onTapUp(TapUpDetails details) {
      controller.reverse();
      widget.onTap();
    }

    return Transform.scale(
      scale: scale,
      child: GestureDetector(
        onTapUp: onTapUp,
        onTapDown: onTapDown,
        child: Container(
          alignment: Alignment.center,
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              color: Colors.green.shade900, shape: BoxShape.circle),
          child: widget.child,
        ),
      ),
    );
  }
}
