mixin Basic
{

  String? _name;

  void doSomething()
  {
    print("Doing Something");
  }

}


class D1 with Basic {


  void set setName(String name)
  {
    this._name=name;
  }

  String? get getName
  {
    return this._name;
  }

}