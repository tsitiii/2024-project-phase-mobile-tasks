import 'dart:io';
main(){
   var lst = new List.filled(3,0); 
   lst[0] = 12; 
   lst[1] = 13; 
   lst[2] = 11; 
   print(lst);
  var nums = [23,45,64, 'hi'];
  var ages = ["twenty", 'three'];
  
// var ls = new List.filled(34,5);
// ls.add(34);

String whole = ''; // Initialize whole as an empty string
  for (int i = 0; i < 3; i++) {
    print("Enter Your name: ");
    String? name = stdin.readLineSync();
    
    if (name != null) { // Check if name is not null or empty
      whole += name + ' '; 
      print("Your name is: $name");
    } else {
      print("No name entered.");
    }
  }
  print("Your whole name is: $whole");


}