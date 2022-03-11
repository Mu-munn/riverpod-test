// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_web_uisite/UI/Parts/height_area.dart';
// import 'package:flutter_web_uisite/UI/Parts/width_area.dart';
//
// void main() => runApp(const ProviderScope(child: MyApp()));
//
// final heightProvider = StateProvider((ref) => 100.0);
// final widthProvider = StateProvider((ref) => 100.0);
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'ContainerTester',
//       theme: ThemeData(primarySwatch: Colors.red),
//       debugShowCheckedModeBanner: false,
//       home: const MyWidget(),
//     );
//   }
// }
//
// class MyWidget extends ConsumerWidget {
//   const MyWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     double _height = ref.watch(heightProvider.state).state;
//     double _width = ref.watch(widthProvider.state).state;
//     final Size _size = MediaQuery.of(context).size;
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           ref.refresh(widthProvider);
//           ref.refresh(heightProvider);
//         },
//         child: const Icon(Icons.settings_backup_restore),
//       ),
//       body: Column(
//         children: [
//           Container(
//             height: _size.height * 0.5,
//             child: Center(
//               child: AnimatedContainer(
//                 duration: const Duration(microseconds: 100000),
//                 width: _width,
//                 height: _height,
//                 color: Colors.red,
//                 // transform: Matrix4.rotationZ(_transform),
//               ),
//             ),
//           ),
//           const Divider(),
//           Column(
//             children: const [
//               WidthArea(),
//               HeightArea(),
//               // TransformArea(),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
