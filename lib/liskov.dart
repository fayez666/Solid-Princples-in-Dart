/*Liskov princple*/

abstract class Animal {
  void makeSound();
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Bark");
  }
}

void makeAnimalSound(Animal animal) {
  animal.makeSound();
}

void main() {
  Animal dog = Dog();
  makeAnimalSound(dog);

  Dog dog2 = Dog();
  makeAnimalSound(dog2);
}
