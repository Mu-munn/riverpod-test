import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_uisite/main.dart';

class WidthArea extends ConsumerWidget {
  const WidthArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _width = ref.watch(widthProvider.state).state;
    return Row(
      children: [
        const SizedBox(
          width: 100,
          child: Center(
            child: Text("width"),
          ),
        ),
        SizedBox(
          width: 100,
          child: Center(child: Text(_width.roundToDouble().toString())),
        ),
        SizedBox(
          width: 500,
          child: Slider(
              value: _width,
              min: 1,
              max: 400,
              onChanged: (double value) {
                ref.read(widthProvider.state).state = value;
              }),
        ),
      ],
    );
  }
}
