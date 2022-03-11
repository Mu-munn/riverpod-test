// import 'package:flutter/material.dart';
//
// void main() => runApp(const MyApp());
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
// /// ここからStatefulWidgetにしちゃうよ！
// class MyWidget extends StatefulWidget {
//   const MyWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }
//
// class _MyWidgetState extends State<MyWidget> {
//   /// widthの変数を宣言　widthはdouble型だよ！
//   double _containerWidth = 100.0;
//   /// リセット用の既定値
//   final double _defaultWidth = 100.0;
//
//   late String _labelText = _containerWidth.toString();
//   final String _defaultText = "100.0";
//
//   @override
//   Widget build(BuildContext context) {
//     /// 画面の大きさを取得する
//     final Size _size = MediaQuery.of(context).size;
//     return Scaffold(
//       /// リセットボタン
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           /// 代入し直してsetStateで更新
//           _containerWidth = _defaultWidth;
//           _labelText = _defaultText;
//           setState(() {});
//         },
//         child: const Icon(Icons.settings_backup_restore),
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             /// 画面の大きさの半分
//             height: _size.height * 0.5,
//             child: Center(
//               /// 動かす対象！
//               child: Container(
//                 width: _containerWidth,
//                 height: 100,
//                 color: Colors.red,
//               ),
//             ),
//           ),
//           const Divider(),
//           Column(
//             children: [
//               Row(
//                 children: [
//                   const SizedBox(
//                     width: 100,
//                     child: Center(
//                       widthFactor: 100,
//                       child: Text("width"),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 150,
//                     child: Center(child: Text(_labelText)),
//                   ),
//                   SizedBox(
//                     width: 300,
//                     child: Slider(
//                         value: _containerWidth,
//                         min: 1,
//                         max: 400,
//                         onChanged: (double value) {
//                           _containerWidth = value;
//                           _labelText = value.toString();
//
//                           /// setStateでUIを更新！
//                           setState(() {});
//                         }),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
