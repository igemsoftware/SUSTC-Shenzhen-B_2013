using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3
{
    public class Algorithm1
    {
        public static bool Warn;
        public static string Warning;
        public static string Help;
        public static string[] aTail;
        public static string[] stemloop;
        public static string[] spacerSequence;
        public static string[] tTail;
        public static int[] stemloopPosition;
        public static int[] ttailPosition;
        public static int[] traceBackNumber;
        public static int[][,] structure;
        public static double[] terminatorEfficiency;
        public static double[] hairpinscore;
        public static double[] ttailscore;
        public static double[] dscore;
        public static string[][] structure_string;
        public static string terminatorSequence;

        public static void input(string terminatorSequenceInput, int top, int minTTailSequenceLength, bool tailScoreAlgorithm, bool autoExtendTail, bool spacer, double HairpinscoreUpbounded, double ttailscoreUpbounded, bool forward, bool sbol, string path, string fileName)
        {
            Warning = null;
            Help = null;
            aTail = null;
            stemloop = null;
            spacerSequence = null;
            tTail = null;
            stemloopPosition = null;
            ttailPosition = null;
            traceBackNumber = null;
            structure = null;
            terminatorEfficiency = null;
            hairpinscore = null;
            ttailscore = null;
            dscore = null;
            OverallManager.OverallManagerConstructor(terminatorSequenceInput, top, minTTailSequenceLength, tailScoreAlgorithm, autoExtendTail, spacer, HairpinscoreUpbounded, ttailscoreUpbounded, forward, sbol, path, fileName);
            terminatorSequence = OverallManager.terminatorSequence;
            errorDisplay.errorDisplayConstructor();
            if (OverallManager.errorState != 0)
            {
                Warn = true;
            }
            else
            {
                Warn = false;
            }
            Warning = errorDisplay.Warning;
            Help = errorDisplay.Help;
            if (Warn == false)
            {
                aTail = new string[top];
                aTail = OverallManager.aTail;
                stemloop = new string[top];
                stemloop = OverallManager.stemloop;
                spacerSequence = new string[top];
                spacerSequence = OverallManager.spacerSequence;
                tTail = new string[top];
                tTail = OverallManager.tTail;
                stemloopPosition = new int[top * 2];
                stemloopPosition = OverallManager.stemloopPosition;
                ttailPosition = new int[top];
                ttailPosition = OverallManager.ttailPosition;
                traceBackNumber = new int[top];
                traceBackNumber = OverallManager.traceBackNumber;
                structure = new int[top][,];
                for (int i = 0; i < top; i++)
                {
                    structure[i] = new int[traceBackNumber[i], terminatorSequence.Length];
                }
                structure = OverallManager.structure;

                ttailscore = new double[top];
                ttailscore = OverallManager.ttailscore;
                hairpinscore = new double[top];
                hairpinscore = OverallManager.hairpinscore;
                dscore = new double[top];
                dscore = OverallManager.dscore;
                terminatorEfficiency = new double[top];
                terminatorEfficiency = OverallManager.terminatorEfficiency;
                structure_string = new string[top][];
                

                for (int i = 0; i < top; i++)
                {
                    structure_string[i] = new string[traceBackNumber[i]];
                    for (int t = 0; t < traceBackNumber[i]; t++)
                    {
                        for (int j = 0; j < terminatorSequence.Length; j++)
                        {
                            structure_string[i][t] += structure[i][t, j].ToString();
                        }
                    }
                }
            }


        }
    }
}