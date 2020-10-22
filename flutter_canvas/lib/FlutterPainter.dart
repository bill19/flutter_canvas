import 'dart:ui';

import 'package:flutter/material.dart';

/// @date:2020/10/21
/// @author:sunhao
/// @des:
class FlutterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    /// 初始化画笔
    var paint = Paint()
      ..strokeWidth = 5.0
      ..color = Colors.red;

    /// 通过canvas画一条直线
    /// 这里可以根据需要绘制圆形,矩形等等
    canvas.drawLine(Offset(95, 0), Offset(95, 30), paint);

    canvas.drawCircle(Offset(10, 10), 15, paint);

    canvas.drawPoints(
        PointMode.points,
        [
          Offset(1.0, 10.0),
          Offset(100.0, 210.0),
          Offset(100.0, 310.0),
          Offset(200.0, 310.0),
          Offset(200.0, 210.0),
          Offset(280.0, 130.0),
          Offset(20.0, 130.0),
        ],
        paint);
    canvas.drawPoints(
        PointMode.polygon,
        [Offset(200, 200), Offset(250, 250), Offset(50, 200), Offset(100, 250)],
        paint);

    var paint2 = Paint()
      ..strokeWidth = 5.0
      ..color = Colors.green;

    double maxX = 200;
    double maxY = 100;

    canvas.drawPoints(
        PointMode.polygon,
        [Offset(40, maxX), Offset(maxX * 0.5, maxX * 0.5), Offset(maxX, maxX)],
        paint2);
  }


  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
  double pi = 3.1415926;
  void paint2(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 5;
    paint.strokeCap = StrokeCap.round;
    paint.color = Colors.green;
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2), radius: 70),
        -240 * (pi / 180),
        300 * (pi / 180),
        false,
        paint);
    paint.strokeWidth = 2;
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2), radius: 65),
        -240 * (pi / 180),
        300 * (pi / 180),
        false,
        paint);
    paint.strokeWidth = 1;
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2), radius: 60),
        -240 * (pi / 180),
        300 * (pi / 180),
        false,
        paint);
  }
}
