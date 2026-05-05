import 'package:flutter_test/flutter_test.dart';
import 'package:fluttercircleci/counter.dart';

void main() {
  group('Counter', () {
    test('valor inicial es 0', () {
      final counter = Counter();
      expect(counter.value, 0);
    });

    test('increment suma 1', () {
      final counter = Counter();
      counter.increment();
      expect(counter.value, 1);
    });

    test('decrement resta 1', () {
      final counter = Counter();
      counter.decrement();
      expect(counter.value, -1);
    });

    test('reset vuelve a 0', () {
      final counter = Counter();
      counter.increment();
      counter.increment();
      counter.reset();
      expect(counter.value, 0);
    });
  });
}