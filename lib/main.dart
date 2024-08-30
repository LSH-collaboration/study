import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:study/theme/custom_theme.dart';
import 'package:study/theme/custom_theme_extentions.dart';
import 'package:study/view/study_tab_view.dart';
import 'package:study/viewmodel/dynamic_widget_list_viewmodel.dart';
import 'package:study/viewmodel/study_tab_viewmodel.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(800, 600),
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.normal,
    minimumSize: Size(400, 300), // 여기서 최소 크기를 설정합니다.
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
  // // WindowOptions windowOptions = const WindowOptions(
  // //   size: Size(800, 600),
  // //   minimumSize: Size(200, 100),
  // //   center: true,
  // //   backgroundColor: Colors.transparent,
  // //   skipTaskbar: false,
  // //   titleBarStyle: TitleBarStyle.normal,
  // // );

  // // windowManager.waitUntilReadyToShow(windowOptions, () async {
  // //   await windowManager.show();
  // //   await windowManager.focus();
  // // });
  // FlutterError.onError = (FlutterErrorDetails details) {
  //   if (details.exceptionAsString().contains('A RenderFlex overflowed')) {
  //     print('Overflow detected: $details');
  //     // 여기서 창의 최소 크기를 조정하는 등의 처리를 할 수 있습니다.
  //     windowManager.getSize().then((currentSize) {
  //       windowManager.setMinimumSize(currentSize);
  //       print('Set minimum window size to: $currentSize');
  //     });
  //   }
  //   FlutterError.presentError(details);
  // };
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Study',
      theme: customAppTheme(ThemeMode.light),
      builder: (context, child) => const ResponsiveBreakpoints(
        breakpoints: [Breakpoint(start: 0, end: 500, name: DESKTOP)],
        child: StudyTabView(),
      ),
    );
  }
}
