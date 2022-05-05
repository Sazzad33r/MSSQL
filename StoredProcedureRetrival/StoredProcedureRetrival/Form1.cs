using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;

namespace StoredProcedureRetrival
{
    public partial class Form1 : Form
    {
        SqlConnection con;
        public Form1()
        {
            InitializeComponent();
            con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-QPVPOT0;Initial Catalog=Test;Integrated Security=True";
            display();
        }

        private void display()
        {
            int userId = 102;
            string name = "";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("exec Retrive", con);
            da.Fill(dt);
            dataGridView1.DataSource = dt.DefaultView;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "[Test]";
            cmd.Parameters.AddWithValue("@ID", userId);
            cmd.Parameters.Add("@Name", SqlDbType.NVarChar, 150);
            cmd.Parameters["@Name"].Direction = ParameterDirection.Output;
            con.Open();
            cmd.ExecuteNonQuery();
            name = Convert.ToString(cmd.Parameters["@Name"].Value);
            label1.Text = name;
        }
    }
}
