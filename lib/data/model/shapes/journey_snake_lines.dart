import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LeftRightSnakeLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    @override
    Path linePath = Path();

    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = const Color.fromRGBO(0, 0, 0, 0.16)
      ..strokeWidth = 12;
    linePath.moveTo(size.width * 0.001250000, 0);
    linePath.cubicTo(
        size.width * 0.001250000,
        size.height * 0.3272472,
        size.width * 0.1346150,
        size.height * 0.5000000,
        size.width * 0.2487500,
        size.height * 0.5000000);
    linePath.cubicTo(
        size.width * 0.3628850,
        size.height * 0.5000000,
        size.width * 0.5819575,
        size.height * 0.5000000,
        size.width * 0.7475000,
        size.height * 0.5000000);
    linePath.cubicTo(
        size.width * 0.9130425,
        size.height * 0.5000000,
        size.width * 0.9987500,
        size.height * 0.6882022,
        size.width * 0.9987500,
        size.height);

    canvas.drawPath(linePath, paint);

    canvas.drawPath(linePath, paint);
  }

  @override
  bool shouldRepaint(LeftRightSnakeLine oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(LeftRightSnakeLine oldDelegate) => false;
}

class RightLeftSnakeLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    @override
    Path linePath = Path();

    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = const Color.fromRGBO(0, 0, 0, 0.16)
      ..strokeWidth = 12;
    linePath.moveTo(size.width * 0.9988713, 0);
    linePath.cubicTo(
        size.width * 0.9988713,
        size.height * 0.3272462,
        size.width * 0.8654740,
        size.height * 0.5000000,
        size.width * 0.7513115,
        size.height * 0.5000000);
    linePath.cubicTo(
        size.width * 0.6371490,
        size.height * 0.5000000,
        size.width * 0.4180226,
        size.height * 0.5000000,
        size.width * 0.2524402,
        size.height * 0.5000000);
    linePath.cubicTo(
        size.width * 0.08685677,
        size.height * 0.5000000,
        size.width * 0.001128713,
        size.height * 0.6882030,
        size.width * 0.001128713,
        size.height);

    canvas.drawPath(linePath, paint);

    canvas.drawPath(linePath, paint);
  }

  @override
  bool shouldRepaint(RightLeftSnakeLine oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(RightLeftSnakeLine oldDelegate) => false;
}

class StartingSnakeLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path linePath = Path();
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = const Color.fromRGBO(0, 0, 0, 0.16)
      ..strokeWidth = 12;
    linePath.moveTo(size.width * 0.5657071, size.height * 0.01123596);
    linePath.cubicTo(
        size.width * 0.5657071,
        size.height * -0.02949438,
        size.width * 0.5657071,
        size.height * 0.4466292,
        size.width * 0.5657071,
        size.height * 0.4466292);
    linePath.cubicTo(
        size.width * 0.5657071,
        size.height * 0.4466292,
        size.width * 0.3998748,
        size.height * 0.4466292,
        size.width * 0.2490613,
        size.height * 0.4466292);
    linePath.cubicTo(
        size.width * 0.09824756,
        size.height * 0.4466292,
        size.width * 0.001251259,
        size.height * 0.6549213,
        size.width * 0.001251259,
        size.height);

    canvas.drawPath(linePath, paint);

    canvas.drawPath(linePath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
