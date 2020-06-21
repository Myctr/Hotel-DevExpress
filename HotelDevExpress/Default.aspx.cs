using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace HotelDevExpress
{
    public partial class Default : System.Web.UI.Page
    {
        DataSet1TableAdapters.TBLULKELERTableAdapter dt = new DataSet1TableAdapters.TBLULKELERTableAdapter();
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-VMG8RD7;Initial Catalog=HotelDxDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            baglanti.Open();
            SqlCommand komut = new SqlCommand("select top 10 ID,ULKE,SAYAC from TBLULKELER ORDER BY SAYAC DESC", baglanti);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                WebChartControl2.Series["Ulkeler"].Points.AddPoint(Convert.ToString(dr[1]),Convert.ToInt32(dr[2]));
            }
            baglanti.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ASPxCaptcha1.IsValid)
            {
                int oda = 0;
                if (Convert.ToInt32(ASPxSpinEdit1.Text) == 1)
                {
                    DataSet1TableAdapters.QueriesTableAdapter dtq = new DataSet1TableAdapters.QueriesTableAdapter();
                    oda = Convert.ToInt32(dtq.Tekodalar());
                    if (oda == 0)
                    {
                        ASPxLabel9.Text = "Aradığınız türde bir oda bulunmamaktadır.";
                    }
                    else
                    {
                        dt.UlkeSayac(Cmb1.SelectedItem.Text);
                        DataSet1TableAdapters.TBLISLEMTableAdapter dtb = new DataSet1TableAdapters.TBLISLEMTableAdapter();
                        dtb.ISLEMEKLE(oda,ASPxDateEdit1.Text, ASPxDateEdit2.Text, ASPxSpinEdit1.Text);
                        Response.Redirect("/Kayit.aspx");
                    }
                }
                if (Convert.ToInt32(ASPxSpinEdit1.Text) == 2)
                {
                    DataSet1TableAdapters.QueriesTableAdapter dtq = new DataSet1TableAdapters.QueriesTableAdapter();
                    oda = Convert.ToInt32(dtq.İkiliodalar());
                    if (oda == 0)
                    {
                        ASPxLabel9.Text = "Aradığınız türde bir oda bulunmamaktadır.";
                    }
                    else
                    {
                        dt.UlkeSayac(Cmb1.SelectedItem.Text);
                        DataSet1TableAdapters.TBLISLEMTableAdapter dtb = new DataSet1TableAdapters.TBLISLEMTableAdapter();
                        dtb.ISLEMEKLE(oda, ASPxDateEdit1.Text, ASPxDateEdit2.Text, ASPxSpinEdit1.Text);
                        Response.Redirect("/Kayit.aspx");
                    }
                }
                if (Convert.ToInt32(ASPxSpinEdit1.Text) == 3)
                {
                    DataSet1TableAdapters.QueriesTableAdapter dtq = new DataSet1TableAdapters.QueriesTableAdapter();
                    oda = Convert.ToInt32(dtq.Ucluodalar());
                    if (oda == 0)
                    {
                        ASPxLabel9.Text = "Aradığınız türde bir oda bulunmamaktadır.";
                    }
                    else
                    {
                        dt.UlkeSayac(Cmb1.SelectedItem.Text);
                        DataSet1TableAdapters.TBLISLEMTableAdapter dtb = new DataSet1TableAdapters.TBLISLEMTableAdapter();
                        dtb.ISLEMEKLE(oda, ASPxDateEdit1.Text, ASPxDateEdit2.Text, ASPxSpinEdit1.Text);
                        Response.Redirect("/Kayit.aspx");
                    }
                }
                if (Convert.ToInt32(ASPxSpinEdit1.Text) == 4)
                {
                    DataSet1TableAdapters.QueriesTableAdapter dtq = new DataSet1TableAdapters.QueriesTableAdapter();
                    oda = Convert.ToInt32(dtq.Dortluodalar());
                    if (oda == 0)
                    {
                        ASPxLabel9.Text = "Aradığınız türde bir oda bulunmamaktadır.";
                    }
                    else
                    {
                        dt.UlkeSayac(Cmb1.SelectedItem.Text);
                        DataSet1TableAdapters.TBLISLEMTableAdapter dtb = new DataSet1TableAdapters.TBLISLEMTableAdapter();
                        dtb.ISLEMEKLE(oda, ASPxDateEdit1.Text, ASPxDateEdit2.Text, ASPxSpinEdit1.Text);
                        Response.Redirect("/Kayit.aspx");
                    }
                }
            }
            else
            {
                ASPxLabel5.Text = "Valla billa robot değilim";
            }
        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLILETISIMTableAdapter tbi = new DataSet1TableAdapters.TBLILETISIMTableAdapter();
            tbi.Iletisim(TextBox1.Text, TextBox2.Text, TextBox3.Text);
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";

        }
    }
}