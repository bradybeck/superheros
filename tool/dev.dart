import 'package:dart_dev/dart_dev.dart' show config, dev;

main(args) async {
  // Define the entry points for static analysis.
  config.analyze.entryPoints = ['lib/', 'test/', 'tool/'];

  // Define the directories where the LICENSE should be applied.
  config.copyLicense.directories = ['example/', 'lib/'];

  // Configure whether or not the HTML coverage report should be generated.
  config.coverage.html = false;

  // Configure the port on which examples should be served.
  config.examples.port = 9000;

  // Define the directories to include when running the
  // Dart formatter.
  config.format.directories = ['lib/', 'test/', 'tool/'];

  // Define the location of your test suites.
  config.test
    ..unitTests = ['test/unit/']
    ..integrationTests = ['test/integration/']
    ..functionalTests = ['test/functional'];

  // Execute the dart_dev tooling.
  await dev(args);
}
