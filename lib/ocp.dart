/*
  Open-Closed Principle
  Software entities should be open for extension, but closed for modification.
*/
/*--> This Code Violate OCP */
// class Shape{
//   String type;
//   Shape(this.type);
// }

// class AreaCalculator{
//   double calculateArea(Shape shape){
//     if(shape.type == "circle"){
//       return 3.14* 3.14;
//     }else if(shape.type == "rectangle"){
//       return 4 * 5;
//     }
//     return 0;
//   }
// }

/* This Code Follow OCP */

abstract interface class Shape{
  double calculateArea();
}

class Circle implements Shape{
  double radius;
  Circle(this.radius);
  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Rectangle implements Shape{
  double width;
  double height;
  Rectangle(this.width, this.height);
  @override
  double calculateArea() {
    return width * height;
  }
}
/* --if you want add new shape you can */

class Triangle implements Shape{
  double base;
  double height;
  Triangle(this.base, this.height);
  @override
  double calculateArea() {
    return 0.5 * base * height;
  }
}

class AreaCalculator{
  double calculateArea(Shape shape){
    return shape.calculateArea();
  }
}