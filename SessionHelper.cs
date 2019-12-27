using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Shopping_Cart
{
    public class SessionHelper
    {
        public static int UserId
        {
            get
            {
                if(HttpContext.Current.Session[SessionHelperVariables.UserId] == null) { return 0; }
                return Convert.ToInt32(HttpContext.Current.Session[SessionHelperVariables.UserId]);
            }
        }
        public static void setUserId(int userId)
        {
            HttpContext.Current.Session[SessionHelperVariables.UserId] = userId;
        }
    }
    public class SessionHelperVariables
    {
        public static readonly string UserId = "UserID";
    }
}