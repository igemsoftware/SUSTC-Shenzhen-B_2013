using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
namespace WebApplication3
{
  
    
    public partial class WebForm1 : System.Web.UI.Page
    {
        //new added: needn't to change
        private string seqs="";
        private string matches = "";
        private int color1 = 0xff0000;
        private int color2 = 0x00ff00;
        //
        public int getColor1() {return color1;  }
        public int getColor2() {return color2;  }
        public string getSeqs() { return seqs; }
        public string getMatches() { return matches; }
        //
        private void setColor1(int c) { color1 = c; }
        private void setColor2(int c) { color2 = c; }
        private void setSeqs(string s) { seqs = s; }
        private void setMatches(string s) { matches = s; }
        //
        private RNAViewer rnaViwer = new RNAViewer();
        private RNAViewer.Args rnaViwerArgs = new RNAViewer.Args();
        private const string rnaDir = "rnaImages";
        private const string errorlImg = "./" + rnaDir + "/default/error.gif";
        private const string defautlImg = "./" + rnaDir + "/default/default.gif";
        private string rnaImageName = defautlImg;
        public string getRNAImageName() { return rnaImageName; }
        private void setRNAImageName(string s) { rnaImageName = s; }
        public bool direction=true;
        //
        protected void Page_Load(object sender, EventArgs e)
        {
            Algorithm2.setStackData();            
            Algorithm2.setTStackIData();
            Algorithm2.setTStackHData();
            Algorithm2.setLoopSizeData();
            Algorithm2.setTriloopData();
            Algorithm2.setTetraloopData();                        
            Algorithm2.setInterior_1x2_Data();
            Algorithm2.setInterior2x2Data();

           
        }
        
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
        }
        private bool createRNAImage(int numFileLimit = 50)
        {
            string rootDir = Server.MapPath("~/").ToString();
            rootDir = rootDir.Substring(0, rootDir.Length - 1);
            string imageName = seqs + ".gif";
            string path = rootDir + "\\" + rnaDir;
            //Create it if not exist.
            if (!Directory.Exists(path)) Directory.CreateDirectory(path);
            string[] files = Directory.GetFiles(rootDir + "\\" + rnaDir);
            //Delete files when the number of file exceeds numFileLimit.
            if (files.Length > numFileLimit) for (int i = 0; i < files.Length; i++) File.Delete(files[i]);

            if (!File.Exists(path + "\\" + imageName))
            {
                //if haven't created it before,init rnaViwer and use rnaViwer to create one.
                if (!rnaViwer.init(seqs, matches))
                {
                    //if arg error,set the img to !!errorlImg!! sued by client.
                    setRNAImageName(errorlImg);
                    return false;
                }
                //now,create the file...
                rnaViwer.create(path + "\\" + imageName, rnaViwerArgs);
            }
            //set the fileName used by client.
            setRNAImageName("./" + rnaDir + "/" + imageName);
            return true;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (RadioButtonList1.SelectedIndex == 0)
            {
                direction = true;
            }
            else
            {
                direction = false;
            }
            string sequence;
            int i,j;
            j = 0;
            sequence = TextBox1.Text;
            if (sequence.Length <= 14) {
                Label1.Text = "Please input correct sequence!";
                Label2.Text = "";
                Label3.Text = "";
                Label4.Text = "";
                Label5.Text = "";
                Label6.Text = ""; RNAViewerLabel.Visible = false;
            }
            else
            {
                for (i = 0; i < sequence.Length; i++)

                    if (sequence.Substring(i, 1) != " " & sequence.Substring(i, 1) != "u" & sequence.Substring(i, 1) != "c" & sequence.Substring(i, 1) != "g" & sequence.Substring(i, 1) != "t" & sequence.Substring(i, 1) != "a" & sequence.Substring(i, 1) != "U" & sequence.Substring(i, 1) != "C" & sequence.Substring(i, 1) != "G" & sequence.Substring(i, 1) != "T" & sequence.Substring(i, 1) != "A")
                    {
                        Label1.Text = "Please input correct sequence!"; Label2.Text = "";
                        Label3.Text = "";
                        Label4.Text = "";
                        Label5.Text = "";
                        Label6.Text = ""; RNAViewerLabel.Visible = false; j = 1; break;
                    }
                if (j == 0)
                {
                    sequence.ToUpper();
                    sequence.Trim();
                    IO.Algorithm_Two(sequence,direction,false,"");
                    if (Algorithm1.Warn == false)
                    {
                        setSeqs(IO.terminatorSequence); setMatches(Algorithm2.Full_Structure); createRNAImage(50);
                        RNAViewerLabel.Visible = true;//this is just a label,you can delete it in aspx~

                        Label2.Text = IO.efficiency+"%";

                        Label3.Text = "";
                        Label6.Text = "";
                        Label5.Text = "Structure:";
                        Label4.Text = "Efficiency:";
                        Label1.Text = "";
                    }
                    else
                    {
                        Label1.Text = errorDisplay.Warning;
                    }
                }
               

            }
       
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "AAAAAAACCCCGCGGTTTTCCGCGGGGTTTTTTTTTTTTTTTTTTT";
        }

         protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {
            string sequence;
            int i, j;
            j = 0;
            sequence = TextBox1.Text;
            for (i = 0; i < sequence.Length; i++)

                if (sequence.Substring(i, 1) != "u" & sequence.Substring(i, 1) != "c" & sequence.Substring(i, 1) != "g" & sequence.Substring(i, 1) != "t" & sequence.Substring(i, 1) != "a" & sequence.Substring(i, 1) != "U" & sequence.Substring(i, 1) != "C" & sequence.Substring(i, 1) != "G" & sequence.Substring(i, 1) != "T" & sequence.Substring(i, 1) != "A")
                {
                    Label1.Text = "Please input correct sequence!";
                    j = 1; break;
                }
                else
                {
                    Label1.Text = "";
                }
             
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedIndex == 0)
            {
                direction = true;
            }
            else
            {
                direction = false;
            }
        }





    }
}