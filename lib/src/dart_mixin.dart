class Performer {
  void perform() => print('Performer!');
}

mixin Guitarist {
  void playGuitar() => print('Playing the guitar');
  void perform() => playGuitar();
}

mixin Drummer {
  void playDrums() => print('Playing the drums');
  void perform() => playDrums();
}

//hierachy is from the last mixin backward
class Musician extends Performer with Drummer, Guitarist{}


//implements
void  main(List<String> args) {
  Musician musician=Musician();
  musician.perform();
}