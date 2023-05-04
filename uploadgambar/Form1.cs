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
using System.IO;

namespace uploadgambar
{
    public partial class Form1 : Form
    {
        SqlConnection connection = new SqlConnection("Server=LAPTOP-EFP6IB7A;Initial Catalog=data;Integrated Security=True");

        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            // Ambil gambar dari PictureBox
            Image gambar = pictureBox1.Image;

            if (gambar != null)
            {
                // Konversi gambar ke dalam format byte array
                byte[] gambarArray;
                using (MemoryStream stream = new MemoryStream())
                {
                    gambar.Save(stream, System.Drawing.Imaging.ImageFormat.Jpeg);
                    gambarArray = stream.ToArray();
                }

                // Buat koneksi ke SQL Server
                string connectionString = "Server=LAPTOP-EFP6IB7A;Initial Catalog=data;Integrated Security=True";
                SqlConnection connection = new SqlConnection(connectionString);

                // Buat perintah SQL untuk menyimpan data gambar ke tabel
                string query = "INSERT INTO upimage (gambar) VALUES (@gambar)";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@gambar", gambarArray);

                try
                {
                    // Buka koneksi ke SQL Server dan jalankan perintah SQL
                    connection.Open();
                    cmd.ExecuteNonQuery();
                    MessageBox.Show("Gambar berhasil diupload ke SQL Server!");
                    this.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Terjadi kesalahan saat mengupload gambar: " + ex.Message);
                }
                finally
                {
                    // Tutup koneksi ke SQL Server
                    connection.Close();
                }
            }
            else
            {
                MessageBox.Show("Tidak ada gambar yang dipilih!");
            }
        
    



        }

        private void button2_Click(object sender, EventArgs e)
        {
            String imageLocation = "";
            try
            {
                OpenFileDialog dialog = new OpenFileDialog();
                dialog.Filter = "jpg files(.*jpg)|*.jpg| PNG files(.*png)|*.png| All Files(*.*)|*.*";
                if (dialog.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    imageLocation = dialog.FileName;

                    pictureBox1.ImageLocation = imageLocation;
                }
            }
            catch(Exception)
            {
                MessageBox.Show("error", "error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }


        }
    }
}
