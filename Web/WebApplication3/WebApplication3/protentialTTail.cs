using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;

namespace WebApplication3
{
    class protentialTTail
    {
        public static ArrayList protentialTtailPositionArray;
        public static int[] protentialTtailPosition;
        public static bool noTTailWarning;
        public const int stemloopMinSize = 11;
        public static void protentialTtailCalculation(string terminatorSequence, int minTTailSequenceLength)
        {
            protentialTtailPositionArray = new ArrayList(terminatorSequence.Length);
            for (int i = stemloopMinSize; i <= terminatorSequence.Length - minTTailSequenceLength; i++)
            {
                i = terminatorSequence.IndexOf("T", i, terminatorSequence.Length - minTTailSequenceLength - i + 1);
                if (i != -1)
                {
                    int TCount = 0;
                    if (i <= terminatorSequence.Length - 8)
                    {
                        for (int t = i; t <= i + 7; t++)
                        {
                            if (terminatorSequence.Substring(t, 1) == "T")
                            {
                                TCount += 1;
                            }
                        }

                        if (TCount >= 4)
                        {
                            protentialTtailPositionArray.Add(i);
                        }
                    }
                    else if ((i > terminatorSequence.Length - 8) && (i <= terminatorSequence.Length - 4))
                    {
                        for (int t = i; t <= terminatorSequence.Length - 1; t++)
                        {
                            if (terminatorSequence.Substring(t, 1) == "T")
                            {
                                TCount += 1;
                            }
                        }
                        if (TCount >= 0.5 * (terminatorSequence.Length - i))
                        {
                            protentialTtailPositionArray.Add(i);
                        }
                    }

                }
                else
                {
                    break;
                }
            }
            for (int j = protentialTtailPositionArray.Count - 1; j >= 1; j--)
            {
                if (Convert.ToInt32(protentialTtailPositionArray[j]) == Convert.ToInt32(protentialTtailPositionArray[j - 1]) + 1)
                {
                    protentialTtailPositionArray.RemoveAt(j);
                }
            }

            if (protentialTtailPositionArray.Count != 0)
            {
                noTTailWarning = false;
                protentialTtailPosition = (int[])protentialTtailPositionArray.ToArray(typeof(int));
            }
            else
            {
                noTTailWarning = true;
                protentialTtailPosition = null;
            }
        }

        public static bool getNoTTailWarning()
        {
            return noTTailWarning;
        }
    }
}