import 'dart:math';

void main() {
  var nom = ["anne-Sophie","Je","Le programme","Dominic","Patric","Elle","Nous","La machine"];
  var verb = ["Mange","Dance","exploite","chante","fait","dit","parle","joue","ramasse"];
  var adverb = ["doucement","tard","loin","beaucoup","souvent","tôt","sagement","evidemment","quasiment"];
  for (var i = 0; i < 20; i++) {
    var rand1 = new Random().nextInt(8), rand2= new Random().nextInt(8) ,rand3 = new Random().nextInt(8);
    var phrase = [nom[rand1]," ",verb[rand2]," ",adverb[rand3]];
    print(phrase);
  }

}
