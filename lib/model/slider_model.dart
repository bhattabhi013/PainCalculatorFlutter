// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// class LineSliderTickMarkShape extends SliderTickMarkShape {
//   const LineSliderTickMarkShape({
//     this.tickMarkRadius,
//   });

//   final double? tickMarkRadius;

//   @override
//   Size getPreferredSize({
//     required SliderThemeData sliderTheme,
//     required bool isEnabled,
//   }) {
//     assert(sliderTheme != null);
//     assert(sliderTheme.trackHeight != null);
//     assert(isEnabled != null);
//     return Size.fromRadius(tickMarkRadius ?? sliderTheme.trackHeight! / 4);
//   }

//   @override
//   void paint(
//     PaintingContext context,
//     Offset center, {
//     required RenderBox parentBox,
//     required SliderThemeData sliderTheme,
//     required Animation<double> enableAnimation,
//     required TextDirection textDirection,
//     required Offset thumbCenter,
//     required bool isEnabled,
//   }) {
//     Color? begin;
//     Color? end;
//     switch (textDirection) {
//       case TextDirection.ltr:
//         final bool isTickMarkRightOfThumb = center.dx > thumbCenter.dx;
//         begin = isTickMarkRightOfThumb
//             ? sliderTheme.disabledInactiveTickMarkColor
//             : sliderTheme.disabledActiveTickMarkColor;
//         end = isTickMarkRightOfThumb
//             ? sliderTheme.inactiveTickMarkColor
//             : sliderTheme.activeTickMarkColor;
//         break;
//       case TextDirection.rtl:
//         final bool isTickMarkLeftOfThumb = center.dx < thumbCenter.dx;
//         begin = isTickMarkLeftOfThumb
//             ? sliderTheme.disabledInactiveTickMarkColor
//             : sliderTheme.disabledActiveTickMarkColor;
//         end = isTickMarkLeftOfThumb
//             ? sliderTheme.inactiveTickMarkColor
//             : sliderTheme.activeTickMarkColor;
//         break;
//     }
//     final Paint paint = Paint()
//       ..color = ColorTween(begin: begin, end: end).evaluate(enableAnimation)!;

//     final double tickMarkRadius = getPreferredSize(
//           isEnabled: isEnabled,
//           sliderTheme: sliderTheme,
//         ).width /
//         2;
//     if (tickMarkRadius > 0) {
//       context.canvas.drawLine(Offset.infinite, Offset.zero, paint);
//     }
//   }
// }
