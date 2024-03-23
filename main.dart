// create a teacher and student classes
// initialize the classes with appropriate attributes
// create a third class that will call their methods by creating teacher and student  objects.



// i'll achieve the third part by creating a School class with a displayInfo method that the other two classes can inherit.
// i'll then use this class in a function to create student and teacher objects that will output their respective infomation.
// in short i'll use polymorphism to solve this task.


// The School base class
 class School{
    void displayInfo(){
      print("Loading info...");
}
}

// A student child class
class Student extends School{
  String name;
  int age;
  String grade;

  Student(this.name, this.age, this.grade);

  @override
  void displayInfo(){
    print("The student's name is $name and is $age years old. Currently the student is in $grade grade ");
  }
}
//The teacher child class
class Teacher extends School{
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  @override
  void displayInfo(){
    print("The teacher's name is $name and is $age years old. The teacher teaches  $subject.");
  }
}
// The aforementioned  function that will use the base class to produce generic code that can work with different objects.
void showInfo(School school){
  return school.displayInfo();

}


void main(){
  // create objects and treat them uniformly using polymorphism
  School student = Student("John", 14, "11nth");
  School teacher = Teacher("Mercy", 30, "Physics");

  showInfo(student);
  showInfo(teacher);
}