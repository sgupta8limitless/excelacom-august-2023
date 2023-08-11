class Student
{

 
  String? _name;
  int? _age;

  Student(){}

  Student.initDetails(String name,int age)
  {
    this._name=name;
    this._age=age;
  }

  // String? get getName
  // {
  //   return this._name;
  // }

  String? getName()
  {
    return this._name;
  }

  // void set setName(String name)
  // {
  //   this._name=name;
  // }

  void setName(String name)
  {
    this._name=name;
  }

  void printDetails()
  {
    print("the name is ${this._name}");
    print("the age is ${this._age}");
  }




}
