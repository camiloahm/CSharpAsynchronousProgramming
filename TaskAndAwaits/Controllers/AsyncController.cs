using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;


namespace TaskAndAwaits.Controllers
{
    public class AsyncController : ApiController
    {
        private readonly Lazy<SqlDataAccess> _sqlDataAccess;

        public SqlDataAccess SqlDataAccessvalue
        {
            get { return _sqlDataAccess.Value; }
        }

        public AsyncController()
        {
            _sqlDataAccess = new Lazy<SqlDataAccess>();
        }


        // GET: api/Async/5
        public async Task<IHttpActionResult> Get(int id)
        {
            const string sql = @"SELECT * FROM [dbo].[Message]";
            IEnumerable<MyMessage> messages = await SqlDataAccessvalue.TableQueryAsync<MyMessage>(sql);

            return Ok(messages);
        }

        // POST: api/Async
        public IHttpActionResult Post([FromBody] string value)
        {
            const string sql = @"SELECT * FROM [dbo].[Message]";
            IEnumerable<MyMessage> messages = SqlDataAccessvalue.TableQuery<MyMessage>(sql);

            return Ok(messages);
        }
    }
}