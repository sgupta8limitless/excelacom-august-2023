void main()
{

    var ls=[2,3,5,7,8];

  try 
  {
    int n=ls[9];
    print(n);
  }
  on RangeError catch(e){
    print(e.message);
    print("you are accessing wrong index");
  }
  on FormatException catch(e)
  {

  }
  catch(e)
  {
    print(e);
    print("Some exception occured");
  }
  finally{
    
  }

  

}