import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_async_init/global_providers.dart';

class VersionPage extends ConsumerWidget {
  const VersionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final packageInfo = ref.watch(packageInfoProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Version Info'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('App Name'),
            subtitle: Text(packageInfo.appName),
          ),
          ListTile(
            title: const Text('Package Name'),
            subtitle: Text(packageInfo.packageName),
          ),
          ListTile(
            title: const Text('Version'),
            subtitle: Text(packageInfo.version),
          ),
        ],
      ),
    );
  }
}
