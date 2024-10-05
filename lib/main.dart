import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_async_init/global_providers.dart';
import 'package:riverpod_async_init/version_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final overrides = await initGlobalProviders();

  runApp(
    ProviderScope(
      overrides: overrides,
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VersionPage(),
    );
  }
}
