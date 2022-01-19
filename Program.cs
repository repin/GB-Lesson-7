using System;
using System.IO;
using Newtonsoft.Json;


namespace myfirstapplication
{
    class Program
    {
        static void Main(string[] args)
        {
            //задание 5
            {
                ToDo toDo = new ToDo();
                if (toDo.fileExist)
                {
                    string json = File.ReadAllText("ToDo.json");
                    toDo = Newtonsoft.Json.JsonConvert.DeserializeObject<ToDo>(json);

                }
                toDo.Hello();
                while (true)
                {
                    string resume;
                    resume = toDo.Command(Console.ReadLine());
                    if (toDo.exit)
                    {
                        string jsonOut = JsonConvert.SerializeObject(toDo);
                        File.WriteAllText("ToDo.json", jsonOut);
                        Console.WriteLine(jsonOut);
                        Console.ReadLine();
                        break;
                    }
                }
            }

        }
    }
}
