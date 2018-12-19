using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Konto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Validate();
                textLabel();
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                textLabel();
            }
            else
            {
                lblmsg.Text = "Fill up all the fields";
            }
        }

        protected void textLabel()
        {
                if (Page.IsValid)
                {
                    string nazwiskotxt = nazwisko.Text;
                    string imietxt = imie.Text;
                    string emailtxt = email.Text;
                    string telefontxt = telefon.Text;

                    lblmsg.Text = "Label info:</br>";
                    lblmsg.Text += String.Format("Name: {0}{1}E-mail: {3}{1}Nazwisko: {2}{1}Telefon: {4}{1}", imietxt, "<br/>", nazwiskotxt, emailtxt, telefontxt);
                }
    
        }
    }
}