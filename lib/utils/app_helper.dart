import 'dart:math';

class AppHelper {
   static String recommendProduct() {
    var random = Random();
    int shirtPosition = random.nextInt(10) + 1;

    return "assets/img/shirt$shirtPosition.png";
  }
}