
class Person
{

  String? name;
  int? age;

  Person({name,age})
  {
    this.name=name;
    this.age=age;
  }

  
  void printDetails()
  {
    print("The name is ${this.name}");
    print("The age is ${this.age}");
  }




}


class Student extends Person
{
 
  String? course;
  String? activity;

  Student({name,age,course,activity}):super(name:name,age:age)
  {

    this.course=course;
    this.activity=activity;
  }


  void printStudent()
  {
    this.printDetails();
    print("course ${this.course}");
    print("activity ${this.activity}");
  }





}


class Teacher extends Person
{
  
  String? subject;
  String? position;


  Teacher({name,age,subject,position}):super(name:name,age:age)
  {
    
    this.subject=subject;
    this.position=position;
  }

  void printTeacher()
  {
    this.printDetails();
    print("subject ${this.subject}");
    print("position ${this.position}");
  }


}



class Dummy
{

  void playSport()
  {
    print("i play crcket");
  }

}

// class Demo extends Dummy
// {
//   void playSport()
//   {
//     print("i play football");
//   }

//   doSomething()
//   {
//     super.playSport();
//   }
// }



// abstract classes in dart 


abstract class ProductDetail
{

    void createProduct();
    void displayProduct();

}


abstract class Demo1
{
  void doSomething();
  
}

abstract class Demo2
{
  void doSomething();
}

class Child implements Demo1,Demo2 
{
  @override
  void doSomething() {
    // TODO: implement doSomething
  }
  
}

Child c= new Child();





class Products implements ProductDetail
{
  @override
  void createProduct() {
    print("Product Creation Logic");
  }

  @override
  void displayProduct() {
    print("Product Display Logic");
  }

}






void main()
{

  Products p = new Products();

  p.createProduct();
  p.displayProduct();



  // Demo d=new Demo();

// d.playSport();

// d.doSomething();


  // Student s=new Student(name:"Saurabh",age:22,course: "Web Dev",activity:"Crikcet");

  
  
  // s.printStudent();


  // Teacher t=new Teacher(name:"Satish",age:34,subject: "C++",position: "Head");
  // t.printTeacher();






}


// interfaces - abstraction / blueprint for the classes

