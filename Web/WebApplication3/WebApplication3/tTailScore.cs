using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace tTailScore
{
    public class tTailScoreCal
    {
        public static bool shortLengthWarning;
        public static double tailScore;

        public static int min(int a, int b)
        {
            if (a > b)
            {
                a = b;
            }
            return a;
        }
        public static void tTailScoreConstructor(string tTailSequence, int minTTailSequenceLength, bool tailScoreAlgorithm, bool autoExtendTail)
        {
            tailScore = 0;
            if (tTailSequence.Length < minTTailSequenceLength)
            {
                shortLengthWarning = true;
            }
            else
            {
                shortLengthWarning = false;
                double[] xn = new double[15];
                if (tailScoreAlgorithm == true)
                {
                    xn[0] = 1;
                }
                else
                {
                    xn[0] = 0.9;
                }
                tailScore = xn[0];
                if (autoExtendTail == true)
                {
                    tTailSequence = tTailSequence.PadRight(15, ' ');
                    for (int i = 1; i <= 14; i++)
                    {
                        if (tTailSequence.Substring(i, 1) == "T")
                        {
                            xn[i] = 0.9 * xn[i - 1];
                        }
                        else
                        {
                            xn[i] = 0.6 * xn[i - 1];
                        }
                        tailScore += xn[i];
                    }
                }
                if (autoExtendTail == false)
                {
                    for (int i = 1; i <= min(15, tTailSequence.Length)-1; i++)
                    {
                        if ((tTailSequence.Substring(i, 1) == "T"))
                        {
                            xn[i] = 0.9 * xn[i - 1];
                        }
                        else
                        {
                            xn[i] = 0.6 * xn[i - 1];
                        }
                        tailScore += xn[i];
                    }
                }
            }
        }
        public static double getTailScore()
        {
            return tailScore;
        }
        public static bool getShortLengthWarning()
        {
            return shortLengthWarning;
        }


    }
}
