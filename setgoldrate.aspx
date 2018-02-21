<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="setgoldrate.aspx.cs" Inherits="Evershine.setgoldrate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Set GoldRate</div>
      <div class="card-body">
         <form>
          <div class="form-group">
            <label for="exampleInputDate">Date</label>
            <asp:TextBox ID="txtratedate" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
          </div>
          <div class="form-group">
              <label for="exampleInputRate">Rate</label>
            <asp:TextBox ID="txtrate" runat="server" TextMode="SingleLine" class="form-control"></asp:TextBox>
            </div>
          </div>
          <asp:Button ID="btnrate" runat="server" Text="Set" class="btn btn-primary btn-block" OnClick="btnrate_Click"  />
        </form>
      </div>
    </div>
 

</asp:Content>
