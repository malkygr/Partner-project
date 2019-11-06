using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using Newtonsoft.Json.Linq;
using System.Web.Http.Cors;
using BLL;
using DAL;

namespace UI.Controllers
{
  [EnableCors(origins: "*", headers: "*", methods: "*")]
  [RoutePrefix("api/Items")]
  public class ItemController : ApiController
  {
    static PartnerEntities2 db = new PartnerEntities2();

    [HttpGet]
    [Route("getItems")]
    public List<item> GetItem()
    {
      return BLL.ItemLogic.getItems();
    }

  }
}

