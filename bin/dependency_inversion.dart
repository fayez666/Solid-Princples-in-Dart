/* Dependency inversion */
// High level modules should not depend on low level modules. Both should depend on abstractions.

abstract interface class Bulb {
  void turnOn();
  void turnOff();
}

/*Low Level Module */

class LEDBulb implements Bulb {
  @override
  void turnOn() {
    print('LEDBulb: Bulb turned on...');
  }

  @override
  void turnOff() {
    print('LEDBulb: Bulb turned off...');
  }
}

/*Low Level Module */
class IncandecentBulb implements Bulb{
  @override
  void turnOn() {
    print('IncandecentBulb: Bulb turned on...');
  }
  
  @override
  void turnOff() {
    print('IncandecentBulb: Bulb turned off...');
  }
}

/*High Level Module */
class Room {
  final Bulb bulb;

  Room(this.bulb);

  void switchOn() {
    bulb.turnOn();
  }

  void switchOff() {
    bulb.turnOff();
  }
}
