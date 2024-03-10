/* Interface Segregation*/

// Interface Segregation Principle states that a client should never be forced to implement an interface that it doesn’t use or clients shouldn’t be forced to depend on methods they do not use.
abstract interface class Worker {
  void work();
  }

abstract interface class Eater {
  void eat();
}

class SuperWorker implements Worker, Eater {
  @override
  void eat() {
    print("SuperWorker is eating");
  }

  @override
  void work() {
    print("SuperWorker is working");
  }
}

class NormalWorker implements Worker {
  @override
  void work() {
    print("NormalWorker is working");
  }
}

void main() {
  Worker superWorker = SuperWorker();
  Worker normalWorker = NormalWorker();
  superWorker.work();
  normalWorker.work();
}