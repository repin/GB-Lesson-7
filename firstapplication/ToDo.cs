using System;
using System.Collections.Generic;
using System.Text;
using System.IO;

namespace myfirstapplication
{

    public class ToDo
    {
        public string[] title;
        public string[] isDone;
        private bool existFile = false;
        public bool exit { get; set; }

        public bool fileExist
        {
            get { return existFile; }
        }
        public ToDo()
        {
            exit = false;
            if (File.Exists("ToDo.json"))
            {
                existFile = true;
            }
            else
            {
                existFile = false;
            }

        }
        public void Hello()
        {
            Console.WriteLine("Добрый день.");
            Console.WriteLine("Вас приветствует планировщик задач");
            if (fileExist)
            {
                Console.WriteLine("В планировщик подгружены текущие задачи");
            }
            else
            {
                Console.WriteLine("Начнем планировщик с нуля");
            }
            Console.WriteLine("Для получения списка команд введите \"HELP\"");
            exit = false;
        }

        public string Command(string command)
        {
            switch (command)
            {
                case "HELP":
                    HelpPrint();
                    return "true";
                case "ADD":
                    AddTask();
                    return "true";
                case "PRINT":
                    PrintTaskCs();
                    return "true";
                case "DELETE":
                    DeleteTask();
                    return "true";
                case "CHECK":
                    ChekTask();
                    return "true";
                case "EXIT":
                    exit = true;
                    return "true";
                default:
                    return "true";
            }
        }
        private void ChekTask()
        {
            Console.WriteLine("Введите номер выполненной задачи");
            int nTask = Convert.ToInt32(Console.ReadLine());
            if (isDone[nTask] == "[X]")
            {
                isDone[nTask] = "   ";
            }
            else
            {
                isDone[nTask] = "[X]";
            }

        }
        public void DeleteTask()
        {
            Console.WriteLine("Укажите номер задачи, которую вы хотите удалить");
            int nTask = Convert.ToInt32(Console.ReadLine());
            title = DeletePosMassiveString(nTask, title);
            isDone = DeletePosMassiveString(nTask, isDone);
            PrintTaskCs();
        }
        private string[] DeletePosMassiveString(int n, string[] array)
        {
            int k = array.Length - 1;
            int i = 0, o = 0;
            string[] arrayp = new string[k];
            for (int z = 0; z <= k; z++)
            {
                if (o == n)
                {
                    o++;
                    continue;
                }
                else
                {
                    arrayp[i] = array[o];
                    i++;
                    o++;
                }
            }
            return arrayp;
        }

        public void PrintTaskCs()
        {
            Console.WriteLine("Список текущих задач:");
            for (int i = 0; i < title.Length; i++)
            {
                //так как тут скорее всего не будут тестировать больше 10 задач - то не буду форматирование прорабатывать для многоцифровых строк
                Console.WriteLine($"{i} {isDone[i]} {title[i]}");
            }
        }

        public void AddTask()
        {
            Console.WriteLine("Введите задачу, которую необходимо добавить:");
            string inputtxt = Console.ReadLine();
            title = AddStringInMassive(title, inputtxt);
            isDone = AddStringInMassive(isDone, "   ");
        }

        private string[] AddStringInMassive(string[] array, string txt)
        {
            int k;
            if (array == null)
            {
                k = 0;
                array = new string[1];
                array[0] = txt;
                return (array);
            }
            else
            {
                k = array.Length;
            }
            string[] arrayp = new string[k + 1];
            for (int i = 0; i <= k; i++)
            {
                if (i < k)
                {
                    arrayp[i] = array[i];
                }
                else
                {
                    arrayp[i] = txt;
                }
            }
            return arrayp;
        }

        public void HelpPrint()
        {
            Console.WriteLine(@"Справка по командам планировщика залач:" + Environment.NewLine +
                                "HELP - вывод справки" + Environment.NewLine +
                                "ADD - добавление задачи" + Environment.NewLine +
                                "PRINT - вывод всех задач в консоль со статусом" + Environment.NewLine +
                                "DELETE - удаление задачи из списка" + Environment.NewLine +
                                "CHECK - Установить статус задачи выполненным" + Environment.NewLine +
                                "EXIT - выйти из планировщика зада, внесенные задачи будут сохранены " + Environment.NewLine
                                );
        }

    }
}
