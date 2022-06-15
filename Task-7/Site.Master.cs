using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task_6
{
    public partial class Site : System.Web.UI.MasterPage
    {
        public string HeaderText {
            set { lblPageHeader.Text = value;  }
        }

      
    }
}