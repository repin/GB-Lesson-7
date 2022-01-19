// Decompiled with JetBrains decompiler
// Type: myfirstapplication.Program
// Assembly: ConsoleApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 51A667C4-04AB-4219-A5D3-D47DC3304B8A
// Assembly location: C:\Users\sasha\source\repos\ConsoleApp1\ConsoleApp1\bin\Debug\ConsoleApp1.exe

using Newtonsoft.Json;
using System;
using System.IO;

namespace myfirstapplication
{
  internal class Program
  {
    private static void Main(string[] args)
    {
      ToDo toDo = new ToDo();
      if (toDo.fileExist)
        toDo = JsonConvert.DeserializeObject<ToDo>(File.ReadAllText("ToDo.json"));
      toDo.Hello();
      do
      {
        toDo.Command(Console.ReadLine());
      }
      while (!toDo.exit);
      string contents = JsonConvert.SerializeObject((object) toDo);
      File.WriteAllText("ToDo.json", contents);
      Console.WriteLine(contents);
      Console.ReadLine();
    }
  }
}
