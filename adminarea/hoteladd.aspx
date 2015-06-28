<%@ Page Title="" Language="C#" MasterPageFile="~/adminarea/MasterPage.master" AutoEventWireup="true" CodeFile="hoteladd.aspx.cs" Inherits="hoteadd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Hotel</h1>
    <p class="margin-bottom-15">Enter Hotel Information.</p>
    <div class="row">
        <div class="col-md-12">
        <form role="form" id="Form1" runat="server">
            <div class="row">
            <div class="col-md-12 margin-bottom-15">
                <label for="hotelname" class="control-label">Name</label>
                <asp:TextBox runat="server" class="form-control" id="hotelname" value="" name="hotelname" />
            </div>
            </div>
            <div class="row">
            <div class="col-md-6 margin-bottom-15">
                <label>Address1</label>
                <asp:TextBox TextMode="multiline" runat="server" name="address1" id="address1" class="form-control" cols="30" rows="5" />
            </div>
            <div class="col-md-6 margin-bottom-15">
                <label>Address2</label>
                <asp:TextBox TextMode="multiline" runat="server" name="address2" id="address2" class="form-control" cols="30" rows="5" />
            </div>
            </div>
            <div class="row">
            <div class="col-md-6 margin-bottom-15">
                <label for="City" class="control-label">City</label>
                <asp:TextBox runat="server" class="form-control" id="city" value="" name="city" />
            </div>
            <div class="col-md-6 margin-bottom-15">
                <label for="zipcode" class="control-label">Zipcode</label>
                <asp:TextBox runat="server" class="form-control" id="zipcode" value="" name="zipcode" />
            </div>
            </div>
            <div class="row">
            <div class="col-md-6 margin-bottom-15">
                <label for="state" class="control-label">State</label>
                <asp:DropDownList runat="server" class="form-control margin-bottom-15" id="state" name="state">
                    <asp:ListItem Value="1">HTML</asp:ListItem>
                    <asp:ListItem Value="2">CSS</asp:ListItem>
                    <asp:ListItem Value="3">JavaScript</asp:ListItem>
                    <asp:ListItem Value="4">jQuery</asp:ListItem>
                    <asp:ListItem Value="5">Bootstrap</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-md-6 margin-bottom-15">
                <label for="country" class="control-label">Country</label>
                <asp:DropDownList runat="server" class="form-control margin-bottom-15" id="country" name="country">
                    <asp:ListItem>HTML</asp:ListItem>
                    <asp:ListItem>CSS</asp:ListItem>
                    <asp:ListItem>JavaScript</asp:ListItem>
                    <asp:ListItem>jQuery</asp:ListItem>
                    <asp:ListItem>Bootstrap</asp:ListItem>
                </asp:DropDownList>
            </div>
            </div>
            <div class="row">
            <div class="col-md-6 margin-bottom-15">
                <label for="Star" class="control-label">Star</label>
                <asp:DropDownList runat="server" class="form-control margin-bottom-15" id="star" name="star">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </div>
            </div>
            <div class="row">
            <div class="col-md-6 margin-bottom-15">
                <label for="cellphone" class="control-label">Cell phone</label>
                <asp:TextBox runat="server" class="form-control" id="cellphone" value="" name="cellphone" />
            </div>
            </div>
            <div class="row">
            <div class="col-md-6 margin-bottom-15">
                <label for="phone1" class="control-label">Phone1</label>
                <asp:TextBox runat="server" class="form-control" id="phone1" value="" name="phone1" />
            </div>
            <div class="col-md-6 margin-bottom-15">
                <label for="phone2" class="control-label">Phone2</label>
                <asp:TextBox runat="server" class="form-control" id="phone2" value="" name="phone2" />
            </div>
            </div>
            <div class="row">
            <div class="col-md-6 margin-bottom-15">
                <label for="email" class="control-label">Email</label>
                <asp:TextBox runat="server" class="form-control" id="email" value="" name="email" />
            </div>
            <div class="col-md-6 margin-bottom-15">
                <label for="website" class="control-label">Website</label>
                <asp:TextBox runat="server" class="form-control" id="website" value="" name="website" />
            </div>
            </div>
            <div class="row">
            <div class="col-md-6 margin-bottom-15">
                <label>Description</label>
                <asp:TextBox TextMode="multiline" runat="server" name="description" id="description" class="form-control" cols="30" rows="5" />
            </div>
            </div>
            <div class="row">
            <div class="col-md-6 margin-bottom-15">
                <label>Single day rate AC</label>
                <asp:TextBox runat="server" class="form-control" id="singledayrateac" value="" name="singledayrateac" />
            </div>
            </div>
            <div class="row">
            <div class="col-md-6 margin-bottom-15">
                <label>Single day rate Non/AC</label>
                <asp:TextBox runat="server" class="form-control" id="singledayratenonac" value="" name="singledayratenonac" />
            </div>
            </div>
            <%--<div class="row">
            <div class="col-md-12 margin-bottom-30">
                <label for="exampleInputFile">File input</label>
                <input type="file" id="exampleInputFile">
                <p class="help-block">You can upload file here.</p>
            </div>
            </div>--%>
            <div class="row templatemo-form-buttons">
            <div class="col-md-12">
                <asp:Button ID="Save" runat="server" type="submit" class="btn btn-primary" Text="Save" OnClick="save_Click" />
                <asp:Button ID="back" runat="server" type="back" class="btn btn-default" Text="Back"/>
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="hotelname" HeaderText="hotelname" SortExpression="hotelname" />
                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:BoundField DataField="website" HeaderText="website" SortExpression="website" />
                        <asp:BoundField DataField="cellphone" HeaderText="cellphone" SortExpression="cellphone" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConString %>" SelectCommand="SELECT [hotelname], [state], [city], [website], [cellphone], [email] FROM [hotel]"></asp:SqlDataSource>
            </div>
            </div>
        </form>
        </div>
    </div>
</asp:Content>

