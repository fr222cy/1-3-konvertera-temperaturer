using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1_3_konventera_temperaturer
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ConvertButton_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                int startTemp = int.Parse(StartTemp.Text);
                int endTemp = int.Parse(EndTemp.Text);
                int tempStep = int.Parse(TempStep.Text);

               
               
                    for(int i = startTemp; i <= endTemp; i+=tempStep)
                    {   
                        //Create a new tablerow and 2 cells each time it loops.
                        TableRow  tableR  = new TableRow();
                        TableCell tableC1 = new TableCell();
                        TableCell tableC2 = new TableCell();
                        Table1.Rows.Add(tableR);
                        tableR.Cells.Add(tableC1);
                        tableR.Cells.Add(tableC2);

                        //If "Celsius to Fahreneit" is checked...
                        if(CelToFahr.Checked)
                        {
                            int cToF = Model.TemperatureConverter.CelsiusToFahrenheit(startTemp);
                            tableC1.Text = startTemp.ToString();
                            tableC2.Text = cToF.ToString();
                        }
                        //else "Fahrenheit to Celsius" is checked...
                        else
                        {
                            int fToC = Model.TemperatureConverter.FahrenheitToCelsius(startTemp);
                            tableC2.Text = startTemp.ToString();
                            tableC1.Text = fToC.ToString();
                            
                        }
                        startTemp += tempStep;
                    }
                    TableRow headerRow = new TableRow();
                    TableHeaderCell tHCell1 = new TableHeaderCell();
                    TableHeaderCell tHCell2 = new TableHeaderCell();
                    headerRow.Cells.Add(tHCell1);
                    headerRow.Cells.Add(tHCell2);
                    Table1.Rows.AddAt(0, headerRow);  
                    if (CelToFahr.Checked)
                    {
                        tHCell1.Text = "°C";
                        tHCell2.Text = "°F";
                    }
                    else
                    {
                        tHCell1.Text = "°F";
                        tHCell2.Text = "°C";
                    }
                    
                    Table1.Visible = true;
              
            }
           
        }
    }
}