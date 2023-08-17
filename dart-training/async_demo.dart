
// 99%


void main() 
{

  print("First");

  doSomething();

  print("Ended");

}


void doSomething() async 
{
   var data = await getData();
   print(data);
}




Future<String> getData()
{

 Future<String> data = Future.delayed(Duration(seconds: 6),(){

      return "Some big task";
  });


  return data;

}