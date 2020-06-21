using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelDevExpress
{
    public partial class Kayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            if (ASPxTextBox1.Text != "" || ASPxTextBox2.Text != "" || ASPxTextBox3.Text != "" || ASPxTextBox4.Text != "") {
                DataSet1TableAdapters.TBLMUSTERITableAdapter dt = new DataSet1TableAdapters.TBLMUSTERITableAdapter();
                dt.MusteriEkle(ASPxTextBox1.Text, ASPxTextBox2.Text, ASPxTextBox3.Text, ASPxDateEdit1.Text, ASPxRadioButtonList1.SelectedItem.Text, ASPxTextBox4.Text);
                String odano;
                DataSet1TableAdapters.QueriesTableAdapter dto = new DataSet1TableAdapters.QueriesTableAdapter();
                odano = Convert.ToString(dto.odano());
                ASPxLabel6.Text = "Kayıt Başarılı. Oda Numaranız : "+ odano;
                ASPxTextBox1.Text = "";
                ASPxTextBox2.Text = "";
                ASPxTextBox3.Text = "";
                ASPxTextBox4.Text = "";
                DataSet1TableAdapters.TBLODATableAdapter dton = new DataSet1TableAdapters.TBLODATableAdapter();
                dton.Odadurum(odano);
            }
            else
            {
                ASPxLabel6.Text = "Lütfen * ile belirtilen kısımları doldurunuz.";
            }
        }

    }
}