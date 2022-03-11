// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_web_uisite/main.dart';
//
// class HeightArea extends ConsumerWidget {
//   const HeightArea({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final _height = ref.watch(heightProvider.state).state;
//     double _sliderValue = 0;
//     return Row(
//       children: [
//         Container(
//           width: 100,
//           child: const Center(
//             child: Text("height"),
//           ),
//         ),
//         Container(
//           width: 100,
//           child: Center(child: Text(_height.roundToDouble().toString())),
//         ),
//         SizedBox(
//           width: 500,
//           child: Slider(
//               value: _height,
//               min: 1,
//               max: 400,
//               // divisions: 100,
//               onChanged: (double value) {
//                 _sliderValue = value.roundToDouble();
//                 ref.read(heightProvider.state).state = value;
//                 // _labelText = '$_sliderValue';
//                 // _width = value.roundToDouble();
//               }),
//         ),
//       ],
//     );
//   }
// }
