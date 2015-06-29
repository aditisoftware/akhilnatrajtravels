<%@ Page Title="" Language="C#" MasterPageFile="~/adminarea/MasterPage.master" AutoEventWireup="true" CodeFile="packagemaster.aspx.cs" Inherits="packagemaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Package</h1>
    <hr />
     <div class="row">
        <div class="col-md-12">
            <form role="form" id="Form1" runat="server">
                <div class="row">
                    <div class="col-md-6 margin-bottom-15">
                        <asp:Label ID="lblStatus" runat="server" Text="Label" class="alert-danger" Visible="false"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 margin-bottom-15">
                        <label for="tourid" class="control-label">Tour</label>
                        <asp:DropDownList ID="tourid" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="tourname" DataValueField="Id"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConString %>" SelectCommand="SELECT * FROM [tourmaster]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 margin-bottom-15">
                        <label for="packagetitle" class="control-label">Package title</label>
                        <asp:TextBox runat="server" class="form-control" id="packagetitle" value="" name="packagetitle" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 margin-bottom-15">
                        <label for="Rate" class="control-label">Package Rate</label>
                        <asp:TextBox runat="server" class="form-control" id="rate" value="" name="rate" >00</asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 margin-bottom-15">
                        <label for="packageimage" class="control-label">Package image</label>
                        <asp:FileUpload class="form-control" id="packageimage" name="packageimage" value="" runat="server" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 margin-bottom-15">
                        <label for="pdffile" class="control-label">Gujarati PDF</label>
                        <asp:FileUpload class="form-control" id="pdffile" value="" name="pdffile" runat="server" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 margin-bottom-15">
                        <label for="itenary" class="control-label">Itenary</label>
                        <asp:FileUpload class="form-control" id="itenary" value="" name="itenary" runat="server" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 margin-bottom-15">
                        <label for="daynight" class="control-label">Day / Night(s)</label>
                        <asp:TextBox runat="server" class="form-control" id="daynight" value="" name="daynight" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 margin-bottom-15">
                        <label for="Destination" class="control-label">Destination</label>
                        <asp:TextBox runat="server" class="form-control" id="Destination" value="" name="Destination" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 margin-bottom-15">
                        <label for="Rate" class="control-label">Description</label>
                        <asp:TextBox runat="server" class="form-control" id="Description" value="" name="Description" rows="5" TextMode="multiline"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 margin-bottom-15">
                        &nbsp;
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <asp:HiddenField ID="id" Value="" runat="server" />
                        <asp:Button ID="Save" runat="server" type="submit" class="btn btn-primary" Text="Save" OnClick="save_Click" />
                        <asp:Button ID="Update" runat="server" class="btn btn-info" Text="Update" OnClick="Update_Click" />
                        <asp:Button ID="Delete" runat="server" class="btn btn-danger" Text="Delete" OnClick="Delete_Click" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 margin-bottom-15">
                        &nbsp;
                    </div>
                </div>
                <div class="row templatemo-form-buttons">
                <div class="col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">Tour list</div>
                        <div class="panel-body">
                            <asp:GridView ID="grdPackage" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" OnSelectedIndexChanged="grdPackage_SelectedIndexChanged" CssClass="table table-striped">
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" />
                                    <asp:BoundField DataField="packagetitle" HeaderText="Package" />
                                    <asp:BoundField DataField="TourName" HeaderText="Tour" >
                                    </asp:BoundField>
                                    <asp:BoundField DataField="destination" HeaderText="Destination" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </div>
</asp:Content>

