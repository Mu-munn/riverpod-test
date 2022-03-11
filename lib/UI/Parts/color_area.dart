// import 'package:flutter/material.dart';
// import 'package:flutter_colorpicker/flutter_colorpicker.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_web_uisite/main.dart';
//
// class ColorArea extends ConsumerWidget {
//   const ColorArea({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final _color = ref.watch(colorProvider.state).state;
//     Color pickerColor = _color;
//     void changeColor(Color color) {
//       ref.read(colorProvider.state).state = pickerColor;
//     }
//     return Row(
//       children: [
//         const SizedBox(
//           width: 100,
//           child: Center(
//             child: Text("color"),
//           ),
//         ),
//         SizedBox(
//           width: 100,
//           child: Center(child: Text(_color.toString())),
//         ),
//         SizedBox(
//             width: 500,
//             child: ElevatedButton(
//               child: Text("dialog"),
//               onPressed: () {
//                 showDialog<void>(
//                     context: context,
//                     builder: (_) {
//                       return AlertDialog(
//                         title: const Text('色を選んでください'),
//                         content: SingleChildScrollView(
//                           child: ColorPicker(
//                             pickerColor: pickerColor,
//                             onColorChanged: changeColor,
//                           ),
//                         ),
//                         actions: <Widget>[
//                           ElevatedButton(
//                             child: const Text('決定'),
//                             onPressed: () {
//                               // setState(() => currentColor = pickerColor);
//                               ref.read(colorProvider.state).state = pickerColor;
//                               Navigator.of(context).pop();
//                             },
//                           ),
//                         ],
//                       );
//                     });
//               },
//             )),
//       ],
//     );
//   }
// }
