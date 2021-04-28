using System;
using System.Collections.Generic;

namespace DOCKER_GANG
{
    class Program
    {
        static void Main(string[] args)
        {
            Random rnd = new Random();

            List<string> answerList = new List<string>() 
            {
                "As I see it, yes.",
                "Ask again later.",
                "Better not tell you now.",
                "Cannot predict now.",
                "Concentrate and ask again.",
                "Don’t count on it.",
                "It is certain.",
                "It is decidedly so.",
                "Most likely.",
                "My reply is no.",
                "My sources say no.",
                "Outlook not so good.",
                "Outlook good.",
                "Reply hazy, try again.",
                "Signs point to yes.",
                "Very doubtful.",
                "Without a doubt.",
                "Yes.",
                "Yes – definitely.",
                "You may rely on it."
            };

            while (true)
            {
                Console.Write("What is your question? ");
                string input = Console.ReadLine();

                Console.WriteLine("The answer to your question is: " + answerList[rnd.Next(0, answerList.Count)]);
            }

        }
    }
}
