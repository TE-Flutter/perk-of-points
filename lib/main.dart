import 'firebase_options.dart';
import 'package:soar_quest/soar_quest.dart';

void main() async {
  await SQApp.init("Perk Of Points",
      firebaseOptions: DefaultFirebaseOptions.currentPlatform);
  SQApp.run(
      [Screen("Test Screen 1"), Screen("Test Screen 2"), Screen("Screen 3")]);
}
