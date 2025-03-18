class Car {
  String name;
  String model;
  int year;
  Car(this.name, this.model, this.year);

  void make(){
    print("in india");
  }
}

class Merchedis extends Car{
    Merchedis(String name, String model, int year) : super(name, model, year);
    void make(){
      print("child class calling");
    }
}
void main(){

}