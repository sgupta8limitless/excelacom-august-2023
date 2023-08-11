void main()
{
  // doSomething();
  // printName("Saurabh",26);
  // printName("Ramesh",22);
  // printName("Thor",1500,country: "England",city: "Bakers Street");

    int res=doSomething(23,45);

    print(res);


  // int ans=add(23,45);
  // print(ans);

}

// lambda expressions 

 final doSomething=(int a,int b)=>a+b;

//  const - compile time 
// final 








// int add(int num1,int num2)
// {
//   int res=num1+num2;
//   return res;
  
// }


final add=(int num1,int num2)=>num1+num2;

printName(String name,int age,{city="Mumbai",country="India"})
{

  print("The name is $name and the age is $age and city is $city in $country");

}

// doSomething()
// {

//   plainText();

//   print("Some data fetched from internet");
// }
