import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tools/services/theme/theme_service.dart';
import 'pages/home/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(
    child: App(),
  ));
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeState = ref.watch(themeServiceProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tools',
      theme: themeState.light,
      darkTheme: themeState.dark,
      themeMode: themeState.mode,
      home: const HomePage(title: 'Tools',),
    );
  }
}
