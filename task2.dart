class Shape {
  String? name;
  void getarea() {}
}

class Circle extends Shape {
  double? radius;
  Circle(double? radius) {
    this.radius = radius;
  }

  @override
  void getarea() {
    double? area = 3.1415 * radius! * radius!;
    print("$area");
  }
}

class Rectangle extends Shape {
  double? length;
  double? width;
  Rectangle(double? length, double? width) {
    this.length = length;
    this.width = width;
  }
  @override
  void getarea() {
    var area = length! * width!;
    print("$area");
  }
}

class Triangle extends Shape {
  double? base;
  double? height;
  Triangle(double? base, double? height) {
    this.base = base;
    this.height = height;
  }
  @override
  void getarea() {
    var area = (1 / 2) * base! * height!;
    print("$area");
  }
}

mixin Fill {
  void filledshape() {
    print("It is filled shape");
  }
}

class FilledCircle extends Circle with Fill {
  FilledCircle(double? i) : super(i) {
    radius = i;
  }

  void defineMe() {
    print("This is a circle with area of");
    getarea();
    filledshape();
  }
}

void main(List<String> arguments) {
  Circle c = Circle(5);
  c.getarea();
  print('*****************************');
  Rectangle r = Rectangle(5, 4);
  r.getarea();
  print('*****************************');
  Triangle t = Triangle(5, 4);
  t.getarea();
  print('*****************************');
  FilledCircle fc = FilledCircle(5);
  fc.defineMe();
}
