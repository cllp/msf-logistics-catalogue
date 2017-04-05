using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using MSF.Logistics.Catalogue.Service;
using MSF.Logistics.Catalogue.Service.ViewModels;
using Microsoft.AspNetCore.Authorization;

namespace MSF.Logistics.Catalogue.Api.Controllers
{
	[Route("[controller]")]
	//[Route("api/identity")]
	//[MSFAuthorityAttribute]
	[Authorize]
	public class IdentityController : ControllerBase
	{
		[HttpGet]
		public IActionResult Get()
		{
			return new JsonResult(from c in User.Claims select new { c.Type, c.Value });
			//return new JsonResult(User);
		}

		/*[HttpGet]
		public IEnumerable<string> Get()
		{
			return new string[] { "value1", "value2" };
		}*/
	}
}
