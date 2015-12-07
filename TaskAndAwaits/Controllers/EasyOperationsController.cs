using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;

namespace TaskAndAwaits.Controllers
{
    public class EasyOperationsController : ApiController
    {
        // GET: api/EasyOperations/5
        public async Task<IHttpActionResult> Get(int id)
        {
            int result = await Task.Run(() => 10 + 10);
            return Ok(result.ToString());
        }

        // POST: api/EasyOperations
        public IHttpActionResult Post([FromBody] string value)
        {
            return Ok(10 + 10);
        }

        // Put: api/EasyOperations
        public async Task<IHttpActionResult> Put(int id, [FromBody] string value)
        {
            return Ok(10 + 10);
        }

    }
}