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
                    <div class="col-md-12 margin-bottom-30">
                        <a href="javascript:void(0);" id="addmoreprice" class="btn btn-default">Price</a>
                    </div>
                </div>
                <div class="row" id="pricerate">
                    <div>
                        <div class="col-md-6 margin-bottom-30" id="priceblock">
                            <asp:TextBox runat="server" class="form-control" id="ratetitle1" value="" name="ratetitle1" />
                        </div>
                        <div class="col-md-6 margin-bottom-30" id="priceblock">
                            <asp:TextBox runat="server" class="form-control" id="rate1" value="" name="rate1" />
                        </div>
                    </div>
                </div>
                <div class="row" id="pricerate">
                    <div>
                        <div class="col-md-6 margin-bottom-30" id="priceblock">
                            <asp:TextBox runat="server" class="form-control" id="ratetitle2" value="" name="ratetitle2" />
                        </div>
                        <div class="col-md-6 margin-bottom-30" id="priceblock">
                            <asp:TextBox runat="server" class="form-control" id="rate2" value="" name="rate2" />
                        </div>
                    </div>
                </div>
                <div class="row" id="pricerate">
                    <div>
                        <div class="col-md-6 margin-bottom-30" id="priceblock">
                            <asp:TextBox runat="server" class="form-control" id="ratetitle3" value="" name="ratetitle3" />
                        </div>
                        <div class="col-md-6 margin-bottom-30" id="priceblock">
                            <asp:TextBox runat="server" class="form-control" id="rate3" value="" name="rate3" />
                        </div>
                    </div>
                </div>
                <div class="row" id="pricerate">
                    <div>
                        <div class="col-md-6 margin-bottom-30" id="priceblock">
                            <asp:TextBox runat="server" class="form-control" id="ratetitle4" value="" name="ratetitle4" />
                        </div>
                        <div class="col-md-6 margin-bottom-30" id="priceblock">
                            <asp:TextBox runat="server" class="form-control" id="rate4" value="" name="rate4" />
                        </div>
                    </div>
                </div>
                <div class="row" id="pricerate">
                    <div>
                        <div class="col-md-6 margin-bottom-30" id="priceblock">
                            <asp:TextBox runat="server" class="form-control" id="ratetitle5" value="" name="ratetitle5" />
                        </div>
                        <div class="col-md-6 margin-bottom-30" id="priceblock">
                            <asp:TextBox runat="server" class="form-control" id="rate5" value="" name="rate5" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 margin-bottom-30">
                        <a href="javascript:void(0);" id="addmoreinclusion" class="btn btn-default">Inclusions</a>
                    </div>
                </div>
                <div class="row" id="inclusions">
                    <div>
                        <div class="col-md-6 margin-bottom-30" id="priceblock">
                            <asp:TextBox runat="server" class="form-control" id="inclusiontitle1" value="" name="inclusiontitle1" />
                        </div>
                        <div class="col-md-6 margin-bottom-30" id="priceblock">
                            <asp:CheckBox id="togglefield1" runat="server" name="togglefield1" class="form-control" value="1"/>
                        </div>
                    </div>
                </div>
                <div class="row" id="inclusions">
                    <div>
                        <div class="col-md-6 margin-bottom-30" id="priceblock">
                            <asp:TextBox runat="server" class="form-control" id="inclusiontitle2" value="" name="inclusiontitle2" />
                        </div>
                        <div class="col-md-6 margin-bottom-30" id="priceblock">
                            <asp:CheckBox id="togglefield2" runat="server" name="togglefield2" class="form-control" value="1"/>
                        </div>
                    </div>
                </div>
                <div class="row" id="inclusions">
                    <div>
                        <div class="col-md-6 margin-bottom-30" id="priceblock">
                            <asp:TextBox runat="server" class="form-control" id="inclusiontitle3" value="" name="inclusiontitle3" />
                        </div>
                        <div class="col-md-6 margin-bottom-30" id="priceblock">
                            <asp:CheckBox id="togglefield3" runat="server" name="togglefield3" class="form-control" value="1"/>
                        </div>
                    </div>
                </div>
                <div class="row" id="inclusions">
                    <div>
                        <div class="col-md-6 margin-bottom-30" id="priceblock">
                            <asp:TextBox runat="server" class="form-control" id="inclusiontitle4" value="" name="inclusiontitle4" />
                        </div>
                        <div class="col-md-6 margin-bottom-30" id="priceblock">
                            <asp:CheckBox id="togglefield4" runat="server" name="togglefield4" class="form-control" value="1"/>
                        </div>
                    </div>
                </div>
                <div class="row" id="inclusions">
                    <div>
                        <div class="col-md-6 margin-bottom-30" id="priceblock">
                            <asp:TextBox runat="server" class="form-control" id="inclusiontitle5" value="" name="inclusiontitle5" />
                        </div>
                        <div class="col-md-6 margin-bottom-30" id="priceblock">
                            <asp:CheckBox id="togglefield5" runat="server" name="togglefield5" class="form-control" value="1"/>
                        </div>
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
    <script>
        $("#addmoreprice").click(function(){
            var objarr = "#pricerate";
            var arrDiv = $(objarr+" > div");
            var id = arrDiv.length;
            id++;
            var objDiv = arrDiv[arrDiv.length-1];
            objDiv = $(objDiv).clone();
            $(objDiv).find("[id=ratetitle"+(id-1)+"]").attr({name:"ratetitle"+id,id:"ratetitle"+id}).val("");
            $(objDiv).find("[id=rate"+(id-1)+"]").attr({name:"rate"+id,id:"rate"+id}).val("");
            $(objDiv).appendTo(objarr);
        });
        $("#addmoreinclusion").click(function(){
            var objarr = "#inclusions";
            var arrDiv = $(objarr+" > div");
            var id = arrDiv.length;
            id++;
            var objDiv = arrDiv[arrDiv.length-1];
            objDiv = $(objDiv).clone();
            $(objDiv).find("[id=inclusiontitle"+(id-1)+"]").attr({name:"inclusiontitle"+id,id:"inclusiontitle"+id}).val("");
            $(objDiv).find("[id=togglefield"+(id-1)+"]").attr({name:"togglefield"+id,id:"togglefield"+id}).val("");
            $(objDiv).appendTo(objarr);
        });        
    </script>
</asp:Content>

