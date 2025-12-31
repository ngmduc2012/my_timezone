import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_timezone/my_timezone.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const channel = MethodChannel('my_timezone');

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('getLocalTimezone returns value from platform', () async {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (call) async {
      expect(call.method, 'getLocalTimezone');
      return 'Asia/Ho_Chi_Minh';
    });

    final result = await MyTimezone.getLocalTimezone();

    expect(result, 'Asia/Ho_Chi_Minh');
  });

  test('getLocalTimezone throws when platform returns null', () async {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (call) async {
      expect(call.method, 'getLocalTimezone');
      return null;
    });

    expect(
      () => MyTimezone.getLocalTimezone(),
      throwsArgumentError,
    );
  });

  test('getAvailableTimezones returns list from platform', () async {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (call) async {
      expect(call.method, 'getAvailableTimezones');
      return <String>['UTC', 'Asia/Ho_Chi_Minh'];
    });

    final result = await MyTimezone.getAvailableTimezones();

    expect(result, <String>['UTC', 'Asia/Ho_Chi_Minh']);
  });

  test('getAvailableTimezones throws when platform returns null', () async {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (call) async {
      expect(call.method, 'getAvailableTimezones');
      return null;
    });

    expect(
      () => MyTimezone.getAvailableTimezones(),
      throwsArgumentError,
    );
  });
}
