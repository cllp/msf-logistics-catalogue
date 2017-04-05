using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using MSF.Logistics.Catalogue.Service;
using MSF.Logistics.Catalogue.Service.ViewModels;
using Microsoft.AspNetCore.Authorization;
using System.Security.Claims;

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
			
			var results = new JsonResult(from c in User.Claims select new { c.Type, c.Value });

			var name = User.Identity.Name;
			var isAuthenticated = User.Identity.IsAuthenticated;
			var authenticationType = User.Identity.AuthenticationType;
			var isValidator = User.IsInRole("validator");
			var userClaims = User.Claims;

			foreach (var claim in userClaims)
			{
				var cp = claim.Properties;
			}


			//return new JsonResult(User);
			return results;
		}

		/*[HttpGet]
		public IEnumerable<string> Get()
		{
			return new string[] { "value1", "value2" };
		}*/
	}
}
