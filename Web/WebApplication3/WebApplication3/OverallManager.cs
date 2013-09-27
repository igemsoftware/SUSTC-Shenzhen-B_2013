using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace WebApplication3
{
    class OverallManager
    {

        public static int errorState;
        public static string[] aTail;
        public static string[] stemloop;
        public static string[] spacerSequence;
        public static string[] tTail;
        public static double[] ttailscore;
        public static double[] hairpinscore;
        public static double[] dscore;
        public static double[] terminatorEfficiency;
        public static int[] traceBackNumber;
        public static int[][] recrusionTrackArray;
        public static int[][,] structure;
        public static int[] stemloopPosition;
        public static int[] ttailPosition;
        public static string terminatorSequence;
        public static void OverallManagerConstructor(string terminatorSequenceInput, int top, int minTTailSequenceLength, bool tailScoreAlgorithm, bool autoExtendTail, bool spacer, double HairpinscoreUpbounded, double ttailscoreUpbounded, bool forward, bool sbol, string path, string fileName)
        {
            terminatorSequence = "";
            terminatorSequence = getTerminatorSequence(forward, sbol, terminatorSequenceInput, path, fileName);
            errorState = 0;
            recrusionTrackArray = new int[top][];
            structure = new int[top][,];
            traceBackNumber = new int[top];
            terminatorEfficiency = new double[top];
            aTail = new string[top];
            stemloop = new string[top];
            spacerSequence = new string[top];
            tTail = new string[top];
            ttailscore = new double[top];
            hairpinscore = new double[top];
            dscore = new double[top];
            stemloopPosition = new int[top * 2];
            ttailPosition = new int[top];
            foreach (char A in terminatorSequence)
            {
                if (A != ' ' & A != 'u' & A != 'c' & A != 'g' & A != 't' & A != 'a' & A != 'U' & A != 'C' & A != 'G' & A != 'T' & A != 'A')
                {
                    errorState = 6; break;
                }
            }
            if (errorState != 6)
            {
                if (terminatorSequence.Length >= 150)
                {
                    errorState = 4;
                }
                else if (terminatorSequence.Length <= 11)
                {
                    errorState = 5;
                }
                else
                {
                    protentialTTail.protentialTtailCalculation(terminatorSequence, minTTailSequenceLength);

                    if (protentialTTail.getNoTTailWarning() == true)
                    {
                        errorState = 1;
                    }
                    else
                    {
                        calculationCore.terminatorSequence = terminatorSequence;
                        calculationCore.calculationCoreConstructor();
                        Stemloop.stemloopConstructor(terminatorSequence, spacer, top, HairpinscoreUpbounded);

                        if ((Stemloop.getArraySizeWarning() == false) && (Stemloop.getStemLoopMinSizeWarning() == false))
                        {


                            stemloopPosition = Stemloop.tophairpinScorePosition;
                            ttailPosition = Stemloop.topttailPosition;
                            for (int i = 0; i <= top - 1; i++)
                            {

                                calculationCore.traceBack(Stemloop.tophairpinScorePosition[2 * i], Stemloop.tophairpinScorePosition[2 * i + 1]);
                                recrusionTrackArray[i] = new int[calculationCore.recrusionTrackNumber * terminatorSequence.Length];
                                structure[i] = new int[calculationCore.recrusionTrackNumber, terminatorSequence.Length];
                                for (int j = 0; j <= calculationCore.recrusionTrackNumber * terminatorSequence.Length - 1; j++)
                                {

                                    recrusionTrackArray[i][j] = calculationCore.recrusionTrack[j];

                                }
                                for (int t = 0; t <= calculationCore.recrusionTrackNumber; t++)
                                {
                                    for (int j = 0; j <= calculationCore.recrusionTrackNumber * terminatorSequence.Length - 1; j++)
                                    {
                                        if ((j <= (t + 1) * terminatorSequence.Length - 1) && (j >= t * terminatorSequence.Length))
                                        {
                                            structure[i][t, j - t * terminatorSequence.Length] = recrusionTrackArray[i][j];
                                        }
                                    }
                                }
                                tTailScore.tTailScoreCal.tTailScoreConstructor(terminatorSequence.Substring(ttailPosition[i]), minTTailSequenceLength, tailScoreAlgorithm, autoExtendTail);
                                aTail[i] = terminatorSequence.Substring(0, stemloopPosition[2 * i]);
                                stemloop[i] = terminatorSequence.Substring(stemloopPosition[2 * i], stemloopPosition[2 * i + 1] - stemloopPosition[2 * i] + 1);
                                spacerSequence[i] = terminatorSequence.Substring(stemloopPosition[2 * i + 1] + 1, ttailPosition[i] - stemloopPosition[2 * i + 1] - 1);
                                tTail[i] = terminatorSequence.Substring(ttailPosition[i]);

                                ttailscore[i] = tTailScore.tTailScoreCal.getTailScore();
                                hairpinscore[i] = Stemloop.tophairpinScore[i];
                                traceBackNumber[i] = calculationCore.recrusionTrackNumber;
                                terminatorEfficiency[i] = Efficiency.terminatorEfficiencyCal(ttailscore[i], hairpinscore[i], stemloopPosition[2 * i + 1] - stemloopPosition[2 * i] + 1);
                                dscore[i] = Efficiency.dscore;


                            }
                        }
                        else
                        {
                            if (Stemloop.getArraySizeWarning() == true)
                            {
                                errorState = 2;
                            }
                            if (Stemloop.getStemLoopMinSizeWarning() == true)
                            {
                                errorState = 3;
                            }
                        }


                    }
                }



            }
        }

        public static string getTerminatorSequence(bool forward, bool sbol, string terminatorSequenceInput, string path, string fileName)
        {
            string terminatorSequence = "";
            if (sbol == true)
            {
                terminatorSequence = getSbolTerminatorSequence(path, fileName);

            }
            else
            {
                terminatorSequence = terminatorSequenceInput;
            }
            terminatorSequence= getForwardTerminatorSequence(terminatorSequence, forward);
            if (terminatorSequence == null) terminatorSequence = "a";
            terminatorSequence = terminatorSequence.ToUpper();
            return terminatorSequence;
        }

        public static string getForwardTerminatorSequence(string terminatorSequenceInput,bool forward)
        {
            if (forward == false)
            {
                terminatorSequenceInput = terminatorSequenceInput.ToUpper();
                string forwardSequence = null;
                for (int i = terminatorSequenceInput.Length - 1; i >= 0; i--)
                {
                    forwardSequence += Complete(terminatorSequenceInput[i]).ToString();
                }
                return forwardSequence;
            }
            else
            {
                string newTerminatorSequence = null;
                foreach (char A in terminatorSequenceInput)
                {
                    newTerminatorSequence += UtoT(A).ToString();
                }
                return newTerminatorSequence;
            }

        }

        public static string getSbolTerminatorSequence(string path, string fileName)
        {
            string terminatorSequence="";
            if (File.Exists(path))
            {
                StreamReader sr = new StreamReader(path);
                while (!sr.EndOfStream)
                {
                    string readline = sr.ReadLine();
                    string tempstring = readline.Trim();
                    if (tempstring.Length < 15) continue;
                    if (tempstring.Substring(0, 15) != "<s:nucleotides>") continue;
                    terminatorSequence = tempstring.Substring(15, tempstring.Length - 31);
                    break;
                }
                sr.Close();
            }
            return terminatorSequence;
        }

        public static char Complete(char A)
        {
            char T;
            if (A == 'A')
            {
                T = 'T';
            }
            else if (A == 'C')
            {
                T = 'G';
            }
            else if (A == 'G')
            {
                T = 'C';
            }
            else
            {
                T = 'A';
            }
            return T;
        }

        public static char UtoT(char U)
        {
            char T;
            if (U == 'U')
            {
                T = 'T';
            }
            else
            {
                T = U;
            }
            return T;
        }


    }
}

