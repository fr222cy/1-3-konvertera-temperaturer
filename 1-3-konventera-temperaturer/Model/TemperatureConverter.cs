using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _1_3_konventera_temperaturer.Model
{
    public class TemperatureConverter
    {

        public static int CelsiusToFahrenheit(int degreeC)
        {
            int fahrenheit = Convert.ToInt32(degreeC * 1.8 + 32);
            return fahrenheit;
        }
        public static int FahrenheitToCelsius(int degreeF)
        {
            
            int celsius = Convert.ToInt32((degreeF - 32) * 5 / 9);
            return celsius;
        }
    }
}