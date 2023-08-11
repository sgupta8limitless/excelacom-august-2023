import 'product.dart';


void main()
{

  // Product product1=new Product(name:"Samsung M51",price: 24000,quantity: 34);
  // Product product2=new Product(name:"Iphone 14",price: 89000,quantity: 45);
  // Product product3=new Product(name:"Motorola A21",price: 23000,quantity: 27);

  var products=[
    new Product(name:"Samsung M51",price: 24000,quantity: 34),
    new Product(name:"Iphone 14",price: 89000,quantity: 45),
    new Product(name:"Motorola A21",price: 23000,quantity: 27)
  ];

 
    // for(Product p in products)
    // {
    //   p.displayDetails();
    // }


   var ps = products.where((p) => p.getPrice>30);

    ps.forEach((prod) {
      prod.displayDetails();
    });


 
  


}