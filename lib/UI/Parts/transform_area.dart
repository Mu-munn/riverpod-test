// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_web_uisite/main.dart';
//
// class TransformArea extends ConsumerWidget {
//   const TransformArea({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final _transform = ref.watch(transformProvider.state).state;
//     return Row(
//       children: [
//         const SizedBox(
//           width: 100,
//           child: Center(
//             child: Text("transform"),
//           ),
//         ),
//         SizedBox(
//           width: 100,
//           child: Center(child: Text(_transform.roundToDouble().toString())),
//         ),
//         SizedBox(
//           width: 500,
//           child: Slider(
//               value: _transform,
//               min: 0,
//               max: 4,
//               onChanged: (double value) {
//                 ref.read(transformProvider.state).state = value;
//               }),
//         ),
//       ],
//     );
//   }
// }
