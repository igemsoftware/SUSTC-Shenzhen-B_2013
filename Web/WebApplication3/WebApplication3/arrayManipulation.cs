using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace arrayManipulation
{
    class arrayManipulation
    {
        public static bool arraySizeWarning;
        public static double[] sortedArray;
        public static int[] sortedArrayPosition;
        public static void arrayManipulationConstructor(double[] arrayEnter, int top, double upbounded)
        {
            double[] array = new double[arrayEnter.Length];
            int[] arrayPosition = new int[arrayEnter.Length];
            for (int i = 0; i <= arrayEnter.Length - 1; i++)
            {
                arrayPosition[i] = i;
            }

            int k = 0;
            for (int i = 0; i <= arrayEnter.Length - 1; i++)
            {
                if (arrayEnter[i] <= upbounded)
                {
                    array[k] = arrayEnter[i];
                    arrayPosition[k] = arrayPosition[i];
                    k++;
                }
            }


            if (k < top)
            {
                arraySizeWarning = true;
            }
            else
            {
                arraySizeWarning = false;
                for (int i = 1; i <= k - 1; i++)
                {
                    double array_i = array[i];
                    int arrayPosition_i = arrayPosition[i];
                    int j = i;
                    while ((j > 0) && (array[j - 1] > array_i))
                    {
                        array[j] = array[j - 1];
                        arrayPosition[j] = arrayPosition[j - 1];
                        --j;
                    }
                    array[j] = array_i;
                    arrayPosition[j] = arrayPosition_i;
                }
                sortedArray = new double[top];
                sortedArrayPosition = new int[top];
                for (int i = 0; i <= top - 1; i++)
                {
                    sortedArray[i] = array[i];
                    sortedArrayPosition[i] = arrayPosition[i];
                }
            }
        }



        public static bool getArraySizeWarning()
        {
            return arraySizeWarning;
        }
    }
}
