import 'package:superheros/superheros.dart';
import 'package:test/test.dart';

void main() {
  group('Tests superheros names', () {
    test('No Empty Names', () {
      superHeros.forEach((String superHeroName) {
        expect(superHeroName, isNotEmpty);
      });
    });

    test('Spiderman lives forever', () {
      expect(superHeros, contains('Spider-Man'));
    });

    test('Test the random name generator', () {
      for (int i = 0; i < 1000; i++) {
        expect(getRandomHeroName(), isNotEmpty);
      }
    });
  });
}
