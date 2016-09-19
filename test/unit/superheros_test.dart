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
  });
}
