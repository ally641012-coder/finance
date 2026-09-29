using System;

namespace finance
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCheck_Click(object sender, EventArgs e)
        {
            string openInterest = ddlOpenInterest.SelectedValue;
            string price = ddlPrice.SelectedValue;

            if (openInterest == "" || price == "")
            {
                lblResult.Text = "請選擇完整資料";
            }
            else if (openInterest == "增加" && price == "上漲")
            {
                lblResult.Text = "新買方積極介入，屬強勢上漲格局。";
            }
            else if (openInterest == "增加" && price == "下跌")
            {
                lblResult.Text = "新空方進入市場，屬弱勢格局。";
            }
            else if (openInterest == "減少" && price == "上漲")
            {
                lblResult.Text = "原有多單進行平倉，盤勢可能由強轉弱。";
            }
            else if (openInterest == "減少" && price == "下跌")
            {
                lblResult.Text = "原有空單進行平倉，盤勢可能由弱轉強。";
            }
        }
    }
}