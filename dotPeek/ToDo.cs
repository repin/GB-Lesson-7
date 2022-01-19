// Decompiled with JetBrains decompiler
// Type: myfirstapplication.ToDo
// Assembly: ConsoleApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 51A667C4-04AB-4219-A5D3-D47DC3304B8A
// Assembly location: C:\Users\sasha\source\repos\ConsoleApp1\ConsoleApp1\bin\Debug\ConsoleApp1.exe

using System;
using System.IO;

namespace myfirstapplication
{
  public class ToDo
  {
    public string[] title;
    public string[] isDone;
    private bool existFile = false;

    public bool exit { get; set; }

    public bool fileExist => this.existFile;

    public ToDo()
    {
      this.exit = false;
      if (File.Exists("ToDo.json"))
        this.existFile = true;
      else
        this.existFile = false;
    }

    public void Hello()
    {
      Console.WriteLine("Добрый день.");
      Console.WriteLine("Вас приветствует планировщик задач");
      if (this.fileExist)
        Console.WriteLine("В планировщик подгружены текущие задачи");
      else
        Console.WriteLine("Начнем планировщик с нуля");
      Console.WriteLine("Для получения списка команд введите \"HELP\"");
      this.exit = false;
    }

    public string Command(string command)
    {
      string str = command;
      if (!(str == "HELP"))
      {
        if (!(str == "ADD"))
        {
          if (!(str == "PRINT"))
          {
            if (!(str == "DELETE"))
            {
              if (!(str == "CHECK"))
              {
                if (!(str == "EXIT"))
                  return "true";
                this.exit = true;
                return "true";
              }
              this.ChekTask();
              return "true";
            }
            this.DeleteTask();
            return "true";
          }
          this.PrintTaskCs();
          return "true";
        }
        this.AddTask();
        return "true";
      }
      this.HelpPrint();
      return "true";
    }

    private void ChekTask()
    {
      Console.WriteLine("Введите номер выполненной задачи");
      int int32 = Convert.ToInt32(Console.ReadLine());
      if (this.isDone[int32] == "[X]")
        this.isDone[int32] = "   ";
      else
        this.isDone[int32] = "[X]";
    }

    public void DeleteTask()
    {
      Console.WriteLine("Укажите номер задачи, которую вы хотите удалить");
      int int32 = Convert.ToInt32(Console.ReadLine());
      this.title = this.DeletePosMassiveString(int32, this.title);
      this.isDone = this.DeletePosMassiveString(int32, this.isDone);
      this.PrintTaskCs();
    }

    private string[] DeletePosMassiveString(int n, string[] array)
    {
      int length = array.Length - 1;
      int index1 = 0;
      int index2 = 0;
      string[] strArray = new string[length];
      for (int index3 = 0; index3 <= length; ++index3)
      {
        if (index2 == n)
        {
          ++index2;
        }
        else
        {
          strArray[index1] = array[index2];
          ++index1;
          ++index2;
        }
      }
      return strArray;
    }

    public void PrintTaskCs()
    {
      Console.WriteLine("Список текущих задач:");
      for (int index = 0; index < this.title.Length; ++index)
        Console.WriteLine(string.Format("{0} {1} {2}", (object) index, (object) this.isDone[index], (object) this.title[index]));
    }

    public void AddTask()
    {
      Console.WriteLine("Введите задачу, которую необходимо добавить:");
      this.title = this.AddStringInMassive(this.title, Console.ReadLine());
      this.isDone = this.AddStringInMassive(this.isDone, "   ");
    }

    private string[] AddStringInMassive(string[] array, string txt)
    {
      if (array == null)
      {
        array = new string[1];
        array[0] = txt;
        return array;
      }
      int length = array.Length;
      string[] strArray = new string[length + 1];
      for (int index = 0; index <= length; ++index)
        strArray[index] = index >= length ? txt : array[index];
      return strArray;
    }

    public void HelpPrint() => Console.WriteLine("Справка по командам планировщика залач:" + Environment.NewLine + "HELP - вывод справки" + Environment.NewLine + "ADD - добавление задачи" + Environment.NewLine + "PRINT - вывод всех задач в консоль со статусом" + Environment.NewLine + "DELETE - удаление задачи из списка" + Environment.NewLine + "CHECK - Установить статус задачи выполненным" + Environment.NewLine + "EXIT - выйти из планировщика зада, внесенные задачи будут сохранены " + Environment.NewLine);
  }
}
