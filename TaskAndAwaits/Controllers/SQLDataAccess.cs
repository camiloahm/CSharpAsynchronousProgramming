using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using Dapper;
using System.Threading.Tasks;

namespace TaskAndAwaits
{
    public class SqlDataAccess
    {
        public async Task<IEnumerable<T>> TableQueryAsync<T>(string sql, dynamic param = null)
        {
            IEnumerable<T> result = Enumerable.Empty<T>();
            var connectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            try
            {
                using (var connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    result = await connection.QueryAsync<T>(sql, param as object);
                }
            }
            catch (SqlException ex)
            {
                Console.Error.WriteLine(ex.ToString());
                throw;
            }
            catch (Exception ex)
            {
                Console.Error.WriteLine(ex.ToString());
                throw;
            }
            return result;
        }

        public IEnumerable<T> TableQuery<T>(string sql, dynamic param = null)
        {
            var result = Enumerable.Empty<T>();
            var connectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            try
            {
                using (var connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    result = connection.Query<T>(sql, param as object);
                }
            }
            catch (SqlException ex)
            {
                Console.Error.WriteLine(ex.ToString());
                throw;
            }
            catch (Exception ex)
            {
                Console.Error.WriteLine(ex.ToString());
                throw;
            }

            return result;
        }


        public async void ExecuteAsync(string sql, dynamic param = null)
        {

            var connectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            try
            {
                using (var connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    await connection.ExecuteAsync(sql, param as object);
                }
            }
            catch (SqlException ex)
            {
                Console.Error.WriteLine(ex.ToString());
                throw;
            }
            catch (Exception ex)
            {
                Console.Error.WriteLine(ex.ToString());
                throw;
            }
        }

        public void Execute(string sql, dynamic param = null)
        {

            var connectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            try
            {
                using (var connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    connection.Execute(sql, param as object);
                }
            }
            catch (SqlException ex)
            {
                Console.Error.WriteLine(ex.ToString());
                throw;
            }
            catch (Exception ex)
            {
                Console.Error.WriteLine(ex.ToString());
                throw;
            }
        }

        public string ExecuteEscalarStoreProcedure(string sql, dynamic param = null)
        {

            var connectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            try
            {
                using (var connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand command = new SqlCommand();
                    command.CommandText = sql;
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    command.Connection = connection;
                    if (param != null)
                        command.Parameters.AddRange(param);
                    return Convert.ToString(command.ExecuteScalar());
                }
            }
            catch (SqlException ex)
            {
                Console.Error.WriteLine(ex.ToString());
                throw;
            }
            catch (Exception ex)
            {
                Console.Error.WriteLine(ex.ToString());
                throw;
            }
        }

    }
}