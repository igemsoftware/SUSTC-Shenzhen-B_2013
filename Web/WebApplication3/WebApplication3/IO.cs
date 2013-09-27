using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3
{
    public class IO
    {
        public static string Score;
        public static string efficiency;
        public static string structure;
        public static string terminatorSequence;
        public static string Warning;
        public static bool Warn;

        public static void Algorithm_One(string inputsequence, bool sbol, string path)
        {
            inputsequence = inputsequence.ToUpper();
            Algorithm1.input(inputsequence, 1, 4, true, true, true, 1000, 1000, true, sbol, path, "");
            if (Algorithm1.Warn == false)
            {
                efficiency = Algorithm1.terminatorEfficiency[0].ToString("f1");
                structure = Algorithm1.structure_string[0][0];
            }
            terminatorSequence = Algorithm1.terminatorSequence;
        }

        public static void Algorithm_Two(string inputsequence, bool direction, bool sbol, string path)
        {
            inputsequence = inputsequence.ToUpper();
            Algorithm1.input(inputsequence, 1, 4, true, true, true, 1000, 1000, direction, sbol, path, "");
            terminatorSequence = Algorithm1.terminatorSequence;
            Warn = Algorithm1.Warn;
            if (Warn == false)
            {
                Algorithm2.Score(Algorithm1.aTail[0], Algorithm1.stemloop[0], Algorithm1.spacerSequence[0], Algorithm1.tTail[0]);
                Score = Algorithm2.dscore.ToString("f1");
                efficiency = Algorithm2.terminatorefficiency.ToString("f0");
                structure = Algorithm2.Full_Structure;
            }
            else
            {
                Warning = "There is something wrong with your sequence!";
            }
            
        }

        
        }
    }
