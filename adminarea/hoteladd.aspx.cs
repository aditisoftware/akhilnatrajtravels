using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using oper;

public partial class hoteadd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void save_Click(object sender, EventArgs e)
    {

        string str = "insert into hotel(hotelname,star,description,singledayrateac,singledayratenonac,address1,address2,state,city,zipcode,country,phone1,phone2,cellphone,website,email)VALUES('"+hotelname.Text+"',"+star.Text+",'"+description.Text+"',"+singledayrateac.Text+","+singledayratenonac.Text+",'"+address1.Text+"','"+address2.Text+"',"+state.Text+",'"+city.Text+"','"+zipcode.Text+"','"+country.Text+"','"+phone1.Text+"','"+phone2.Text+"','"+cellphone.Text+"','"+website.Text+"','"+email.Text+"')";
        
        int i = oper.DBOperation.execute(str);
    }
}