import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_providers.g.dart';

@riverpod
PackageInfo packageInfo(PackageInfoRef ref) => throw UnimplementedError();

Future<List<Override>> initGlobalProviders() async {
  final overrides = <Override>[];

  // init package info
  final packageInfo = await PackageInfo.fromPlatform();
  overrides.add(packageInfoProvider.overrideWithValue(packageInfo));

  return overrides;
}
