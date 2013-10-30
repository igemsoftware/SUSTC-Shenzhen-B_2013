using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;

namespace WebApplication3
{
    class Stemloop
    {
        public static int[] hairpinScorePositionArray;
        public static int[] ttailPositionArray;

        public static bool arraySizeWarning;
        public static bool stemloopMinSizeWarning;
        public const int stemloopMinSize = 11;
        public static ArrayList hairpinScore;
        public static ArrayList hairpinScorePosition;
        public static ArrayList ttailPosition;
        public static double[] tophairpinScore;
        public static int[] tophairpinScorePosition;
        public static int[] topttailPosition;


        public static void stemloopConstructor(string terminatorSequence, bool spacer, int top, double upbounded)
        {
            hairpinScore = new ArrayList(0);
            hairpinScorePosition = new ArrayList(0);
            ttailPosition = new ArrayList(0);
            tophairpinScorePosition = new int[2 * top];
            topttailPosition = new int[top];
            tophairpinScore = new double[top];
            int stemloopMinSizeErrorState = 1;
            if (spacer == true)
            {
                for (int t = 0; t <= protentialTTail.protentialTtailPosition.Length - 1; t++)   //须保证protentialTTailPosition不是空数组
                {
                    if (protentialTTail.protentialTtailPosition[t] - 3 - stemloopMinSize + 1 >= 0)  //当所有的t都不能使得protentialTTailPosition[t]-3之前有至少stemloopMinSize个字符的时候警告
                    {
                        stemloopMinSizeErrorState = 0;
                        for (int j = protentialTTail.protentialTtailPosition[t] - 1; j >= protentialTTail.protentialTtailPosition[t] - 3; j--)
                        {
                            bool spacerNoT=true;
                            if (protentialTTail.protentialTtailPosition[t] - j == 3)
                            {
                                if (terminatorSequence[j + 2] == 'T')
                                {
                                    spacerNoT = false;
                                }
                            }
                            if (spacerNoT)
                            {
                                for (int i = 0; i <= j - stemloopMinSize - 1; i++)
                                {
                                    i = terminatorSequence.IndexOf(calculationCore.complementaryResidue(terminatorSequence.Substring(j, 1)), i, j - stemloopMinSize - i);
                                    if (i != -1)
                                    {
                                        double hairpinscoreToLength = calculationCore.getMatrix(i, j) / (j - i + 1);
                                        hairpinScore.Add(hairpinscoreToLength);//actually hairpinScore has only hairpinScoreToLengths
                                        hairpinScorePosition.Add(i);
                                        hairpinScorePosition.Add(j);
                                        ttailPosition.Add(protentialTTail.protentialTtailPosition[t]);
                                    }
                                    else
                                    {
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
                hairpinScorePositionArray = new int[hairpinScorePosition.Count];
                ttailPositionArray = new int[ttailPosition.Count];
                if (stemloopMinSizeErrorState == 0)
                {
                    stemloopMinSizeWarning = false;

                    hairpinScorePositionArray = (int[])hairpinScorePosition.ToArray(typeof(int));

                    ttailPositionArray = (int[])ttailPosition.ToArray(typeof(int));
                    arrayManipulation.arrayManipulation.arrayManipulationConstructor((double[])hairpinScore.ToArray(typeof(double)), top, upbounded);
                    arraySizeWarning = arrayManipulation.arrayManipulation.getArraySizeWarning();
                    if (arraySizeWarning == false)
                    {


                        tophairpinScore = arrayManipulation.arrayManipulation.sortedArray;
                        for (int i = 0; i <= top - 1; i++)
                        {
                            tophairpinScorePosition[2 * i] = hairpinScorePositionArray[2 * (arrayManipulation.arrayManipulation.sortedArrayPosition[i])];
                            tophairpinScorePosition[2 * i + 1] = hairpinScorePositionArray[2 * (arrayManipulation.arrayManipulation.sortedArrayPosition[i]) + 1];
                            topttailPosition[i] = ttailPositionArray[arrayManipulation.arrayManipulation.sortedArrayPosition[i]];
                        }
                    }
                }
                else
                {
                    stemloopMinSizeWarning = true;
                }
            }










            else
            {
                for (int t = 0; t <= protentialTTail.protentialTtailPosition.Length - 1; t++)   //须保证protentialTTailPosition不是空数组
                {
                    if (protentialTTail.protentialTtailPosition[t] - 1 - stemloopMinSize + 1 >= 0)  //当所有的t都不能使得protentialTTailPosition[t]-3之前有至少stemloopMinSize个字符的时候警告
                    {
                        stemloopMinSizeErrorState = 0;
                        for (int j = protentialTTail.protentialTtailPosition[t] - 1; j >= protentialTTail.protentialTtailPosition[t] - 3; j--)
                        {
                                for (int i = 0; i <= j - stemloopMinSize - 1; i++)
                                {
                                    i = terminatorSequence.IndexOf(calculationCore.complementaryResidue(terminatorSequence.Substring(j, 1)), i, j - stemloopMinSize - i);
                                    if (i != -1)
                                    {
                                        double hairpinscoreToLength = calculationCore.getMatrix(i, j) / (j - i + 1);
                                        hairpinScore.Add(hairpinscoreToLength);//actually hairpinScore has only hairpinScoreToLengths
                                        hairpinScorePosition.Add(i);
                                        hairpinScorePosition.Add(j);
                                        ttailPosition.Add(protentialTTail.protentialTtailPosition[t]);
                                    }
                                    else
                                    {
                                        break;
                                    }
                                }
                            }
                    }
                }
                hairpinScorePositionArray = new int[hairpinScorePosition.Count];
                ttailPositionArray = new int[ttailPosition.Count];
                if (stemloopMinSizeErrorState == 0)
                {
                    stemloopMinSizeWarning = false;

                    hairpinScorePositionArray = (int[])hairpinScorePosition.ToArray(typeof(int));

                    ttailPositionArray = (int[])ttailPosition.ToArray(typeof(int));
                    arrayManipulation.arrayManipulation.arrayManipulationConstructor((double[])hairpinScore.ToArray(typeof(double)), top, upbounded);
                    arraySizeWarning = arrayManipulation.arrayManipulation.getArraySizeWarning();
                    if (arraySizeWarning == false)
                    {


                        tophairpinScore = arrayManipulation.arrayManipulation.sortedArray;
                        for (int i = 0; i <= top - 1; i++)
                        {
                            tophairpinScorePosition[2 * i] = hairpinScorePositionArray[2 * (arrayManipulation.arrayManipulation.sortedArrayPosition[i])];
                            tophairpinScorePosition[2 * i + 1] = hairpinScorePositionArray[2 * (arrayManipulation.arrayManipulation.sortedArrayPosition[i]) + 1];
                            topttailPosition[i] = ttailPositionArray[arrayManipulation.arrayManipulation.sortedArrayPosition[i]];
                        }
                    }
                }
                else
                {
                    stemloopMinSizeWarning = true;
                }

            }
        }

        public static bool getStemLoopMinSizeWarning()
        {
            return stemloopMinSizeWarning;
        }

        public static bool getArraySizeWarning()
        {
            return arraySizeWarning;
        }

    }
}