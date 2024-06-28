class Person {
  String _name;
  Person(this._name);
  
  String get name => _name;
  set name(String value) {
    _name = value;
  }
}

class Engine {
  String _model = '';
  int speed = 0;
  
  String get model => _model;
  set model(String value) => _model = value;
  
  int get speedd => speed;
  set speedd(int value) => speed = value;


  void displayEngineInfo() {
    print('model: $_model');
    print('speed: $speed km/h');
  }
}

class Car{
  String _brand;
  String _model;
  Person _owner;
  Engine engine;
  
  Car(this._brand, this._model, this._owner, this.engine);
  
  String get brand => _brand;
  set brand(String value) =>_brand = value;
  
  String get model => _model;
  set model(String value) => _model = value;
  
  Person get owner => _owner;
  set owner(Person value) => _owner = value;
  
  Engine get enginee => engine;
  set enginee(Engine value) => engine = value;
 
  void displayCarInfo(){
    print('brand: $_brand');
    print('model: $_model');
    print('Owner: ${_owner.name}');
//     print('speed: $Engine km/h');
  }
  
  void run(){
    print('Driving speed : ${engine.speed} km/h');
  }
}

class Honda extends Car{
  String color;
  
   Honda(String brand, String model, Person owner, Engine engine, this.color)
      : super(brand, model, owner, engine);
  
  @override
  void run() {
    print('Driving speed: 120 km/h'); 
  }
  
   @override
  void displayCarInfo() {
    print('Brand: $brand');
    print('Model: $model');
    print('Color: $color');
    print('Owner: ${owner.name}');
    print('Engine: ${engine.model}, ${engine.speed} km/h');
  }
  
}


void main() {
  // แสดง Person
  Person person = Person('Yaya');
  print('Name: ${person.name}');
  print('-----------------------------');
  
  // แสดง Engine
  Engine engine = Engine();
  
  engine._model = '6W2';
  engine.speed = 220;

  engine.displayEngineInfo();
  print('-----------------------------');
  
  // แสดง Car
Person owner = Person('Yaya');
  Engine engine2 = Engine(); 
  engine2._model = '6W2';
  engine2.speed = 200;

  Car car = Car('GWM', 'good cat', owner, engine2); 

  car.displayCarInfo();
  car.run();
  print('-----------------------------');
  
  // แสดง Car
  Person carOwner = Person('Yaya'); 
  Engine carEngine = Engine();
  carEngine.model = '6W2';
  carEngine.speed = 200;

  Honda honda = Honda('Honda', 'City', carOwner, carEngine, 'Red');
  
  honda.displayCarInfo();
  honda.run();
}
