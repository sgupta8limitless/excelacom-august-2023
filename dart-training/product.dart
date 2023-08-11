class Product
{
  late String _name;
  late int _price;
  late int _quantity;


  Product({name,price,quantity})
  {
    this._name=name;
    this._price=price;
    this._quantity=quantity;
  }

  String get getName
  {
    return this._name;
  }

  int get getPrice
  {
    return this._price;
  }

  int get getQuantity
  {
    return this._quantity;
  }



  void displayDetails()
  {
    print("name: ${this._name}  price ${this._price}  quantity:${this._quantity}");
  }
  
}