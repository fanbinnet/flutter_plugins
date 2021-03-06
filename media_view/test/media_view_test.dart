import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:media_view/media_view.dart';

void main() {
  const MethodChannel channel = MethodChannel('media_view');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await MediaView.platformVersion, '42');
  });
}
