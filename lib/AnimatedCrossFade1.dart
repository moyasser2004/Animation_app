import 'package:flutter/material.dart';


class AnimationCrossFade extends StatefulWidget {
  const AnimationCrossFade({super.key});

  @override
  State<AnimationCrossFade> createState() => _AnimationCrossFadeState();
}

class _AnimationCrossFadeState extends State<AnimationCrossFade> {

  bool _first = true;

  void changeTheme(){
    _first = !_first;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: changeTheme,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.black,
                height: 100,
                width: 200,
              ),
              AnimatedCrossFade(
                duration: const Duration(seconds: 1),
                firstChild: const SizedBox.shrink(),
                secondChild: Transform.rotate(
                    angle: 3.14,
                    child: const Triangle()),
                crossFadeState: _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              ),
              Container(
                color: Colors.black,
                height: 100,
                width: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class Triangle extends StatelessWidget {
  const Triangle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: CustomPaint(
        size: const Size(200, 120), // Change size according to your needs
        painter: TrianglePainter(),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 2
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width / 2, 0); // Adjust this point to change the shape of the triangle
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}