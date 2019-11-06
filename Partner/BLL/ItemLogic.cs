using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
  public class ItemLogic
  {
    static PartnerEntities2 db = new PartnerEntities2();

    public static List<item> getItems()
    {
      List<item> Items = new List<item>();
      Items = db.items.ToList();
      return Items;
    }


  }
}


