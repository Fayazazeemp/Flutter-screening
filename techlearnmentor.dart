import "dart:io";
class techlearn
{
  String name;
  int age;
  String stack;
  bool ismentor;
  double stime;
  double etime;
  techlearn(String n,int a)
  {
    name=n;
    age=a;
  }
  addStacks(String stacks)
  {
    stack=stacks;
  }
  setMentorOrLearner(int x)
  {
    if(x==1)
    ismentor=true;
    else
    ismentor=false;
  }
  setAvailableTime(double s,double e)
  {
    stime=s;
    etime=e;
  }
  void getMentor(String sta,double st,double et)
  {
  
      if(ismentor==true && stack==sta && stime<=st && etime>=et)
      getName();
    
  }
  void getName()
  {
    print(name);
  }
}
main()
{
   var u1=techlearn("rahul",45);
   u1.addStacks("ui");
   u1.setMentorOrLearner(1);
   u1.setAvailableTime(10.00,16.00);
  var u2=techlearn("raju",45);
   u2.addStacks("flutter");
   u2.setMentorOrLearner(1);
   u2.setAvailableTime(4.00,10.00);
   var u3=techlearn("ramu",45);
   u3.addStacks("flutter");
   u3.setMentorOrLearner(0);
   u3.setAvailableTime(5.00,15.00);
   var u4=techlearn("ravi",45);
   u4.addStacks("python");
   u4.setMentorOrLearner(1);
   u4.setAvailableTime(6.00,14.00);
   var u5=techlearn("amal",45);
   u5.addStacks("python");
   u5.setMentorOrLearner(1);
   u5.setAvailableTime(6.00,14.00);
   print("search for mentors here:");
   print("enter the interested stack");
   var st=stdin.readLineSync();
   print("enter the starting time(24 hr format in the form hh.mm)");
   var sti=double.parse(stdin.readLineSync());
   print("enter the ending time(24 hr format in the form hh.mm)");
   var eti=double.parse(stdin.readLineSync());
   print("available mentors:");
   u1.getMentor(st,sti,eti);
   u2.getMentor(st,sti,eti);
   u3.getMentor(st,sti,eti);
   u4.getMentor(st,sti,eti);
   u5.getMentor(st,sti,eti);
}