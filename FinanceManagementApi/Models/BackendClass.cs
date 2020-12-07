using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FinanceManagementApi.Models
{
    public class BackendClass
    {
        SqlConnection sqlConn;
        String connection_String = "Data Source=DESKTOP-G2UGPMF\\SQLEXPRESS;Initial Catalog=FinanceManagementAPI;Integrated Security=True";
        SqlCommand sqlCmd;
        SqlDataReader sqlDatareader;


        //this statement is related to insert delete update query that is the main statement of any database record 
        public void contactTest(String statement)
        {

            sqlConn = new SqlConnection(connection_String);
            sqlConn.Open();


            sqlCmd = new SqlCommand(statement, sqlConn);
            sqlCmd.ExecuteNonQuery();

            sqlConn.Close();
            
        }


        // this code is used to in the details of a prticuar query from the table using the sql statement with the help of where clause 
        public int Head_LoginCheck(String statement)
        {
            DataTable tbl = new DataTable();


            sqlConn = new SqlConnection(connection_String);

            sqlConn.Open();
            sqlCmd = new SqlCommand(statement, sqlConn);

            sqlDatareader = sqlCmd.ExecuteReader();

            tbl.Load(sqlDatareader);

            sqlConn.Close();
            if (tbl.Rows.Count > 0)
            {
                return 1;
            }
            else
            {
                return 0;
            }

        }

    }
}