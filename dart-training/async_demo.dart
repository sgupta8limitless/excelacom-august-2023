
// 99%


void main()
{

  print("First");


  doSomething().then((value) {
    print(value);
  });


  print("Ended");

}


// completed 
// uncompleted 


Future<String> doSomething()
{

 Future<String> data = Future.delayed(Duration(seconds: 6),(){

      return "Some big task";
  });


return data;

}