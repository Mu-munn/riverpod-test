import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_uisite/UI/Parts/width_area.dart';

/// MyAppをProviderScopeで包む！
void main() => runApp(const ProviderScope(child: MyApp()));

/// Providerを作る！初期値で100.0を与えてるよ！
final widthProvider = StateProvider((ref) => 100.0);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ContainerTester',
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: const MyWidget(),
    );
  }
}

/// StatefulWidgetをConsumerWidgetに
class MyWidget extends ConsumerWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  /// 要注意！ConsumerWidgetのbuildのコンストラクタにはWidgetRef型が必要！
  Widget build(BuildContext context, WidgetRef ref) {

    /// ここで作ったwidthProviderを読んでるよ！
    double _width = ref.watch(widthProvider.state).state;

    final Size _size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /// ref.refreshでリソースをリセット！
          ref.refresh(widthProvider);
        },
        child: const Icon(Icons.settings_backup_restore),
      ),
      body: Column(
        children: [
          SizedBox(
            height: _size.height * 0.5,
            child: Center(
              /// 滑らかにするためにAnimatedContainerに！
              child: AnimatedContainer(
                duration: const Duration(microseconds: 100000),
                width: _width,
                height: 100,
                color: Colors.red,
                // transform: Matrix4.rotationZ(_transform),
              ),
            ),
          ),
          const Divider(),
          Column(
            children: const [
              /// 別ページに移したよ！
              WidthArea(),
            ],
          ),
        ],
      ),
    );
  }
}
