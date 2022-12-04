import 'package:flutter_test/flutter_test.dart';
import 'package:process_run/shell.dart';

void main() {
  group('build', () {
    test('build ios', () async {
      var shell = Shell();
      await shell.run('flutter clean');
      await shell.run('flutter build ios --debug --no-codesign');
    }, timeout: const Timeout(Duration(minutes: 5)));
  });
}
