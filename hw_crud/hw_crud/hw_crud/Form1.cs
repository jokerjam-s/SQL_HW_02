using System.Configuration;
using System.Data;
using MySql.Data.MySqlClient;


namespace hw_crud
{
    public partial class Form1 : Form
    {
        //строка соединения с БД
        private string strConnect = "";
        // соединение с mySQL
        private MySqlConnection conn = new MySqlConnection();

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            strConnect = "Database=HW_02;Data Source=localhost;User Id=root;Password=''";
            conn.ConnectionString = strConnect;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand {
                Connection = conn,
                CommandText = "SELECT sale_id, order_date, count_product FROM sales;",
                CommandType = System.Data.CommandType.Text
            };

            MySqlDataAdapter dataAdapter = new MySqlDataAdapter(cmd);
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);

            grData.DataSource = dataSet.Tables[0];

        }
    }
}