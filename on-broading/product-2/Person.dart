import 'dart:io';

class Person {
  String name;
  int age;
  Person(this.name, this.age);
  
  void introduce() {
    print("Hello, my name is $name and I am $age years old.");
  }
}

class Employee extends Person{
  String? position;
  int? salary;
  Employee(String name, int age, this.position , this.salary): super(name,age);
  
  String? pos(){
    print('Enter your position');
    position =stdin.readLineSync();
    return position;
   }

   int? sal(){
    print('Enter your salary');
    String? salInput = stdin.readLineSync();
    if (salInput != null) {
      salary = int.tryParse(salInput); 
      if (salary == null) {
        print("Invalid input for salary. Setting salary to 0.");
        salary = 0; 
      }
    }
    return salary ?? 0;
   }

    void work() {
    print("$name is working as a $position with salary of $salary.");
  }

}

void main(){

  Employee emp =Employee("zion", 23, 'developer', 3000);
  emp.pos();
  emp.sal();
  emp.work();
}