<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddStaff.aspx.cs" Inherits="Evershine.AddStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Register a New Staff</div>
      <div class="card-body">
        
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputName">Name</label>
                <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="Enter Name"></asp:TextBox>
              </div>
                <div class="col-md-6">
                <label for="exampleConfirmPassword">Gender</label>
                    <div>
                    <asp:RadioButton ID="radiomale" runat="server" Text="Male" GroupName="Gender" CssClass="custom-checkbox"/>
                    <asp:RadioButton ID="radiofemale" runat="server" Text="Female" GroupName="Gender"/>
                </div>
              </div>
                </div>
              </div>
            <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputLastName">Address</label>
                <asp:TextBox ID="txtaddress" runat="server" class="form-control" placeholder="Enter Address" TextMode="MultiLine"></asp:TextBox>
              </div>
                <div class="col-md-6">
                <label for="exampleConfirmPassword">Aadhaar Number</label>
                    <asp:TextBox ID="txtaadhaarno" runat="server" class="form-control" placeholder="Enter Aadhaar Number"></asp:TextBox>
              </div>
            </div>
          </div>
             
          <div class="form-group">
              <div class="form-row">
                  <div class="col-md-6">
            <label for="exampleInputEmail1">Contact Number</label>
            <asp:TextBox ID="txtcontactno" runat="server" class="form-control" placeholder="Enter Contact number"></asp:TextBox>
              </div>
                 <div class="col-md-6">
            <label for="exampleInputEmail1">Monthly Salary</label>
            <asp:TextBox ID="txtmonsal" runat="server" class="form-control" placeholder="Enter Salary"></asp:TextBox>
              </div>
            </div>
            </div>
          
          <div class="form-group">
              <div class="form-row">
                  <div class="col-md-6">
            <label for="exampleInputEmail1">User Type</label>
            <div>
                <asp:DropDownList ID="ddltype" runat="server" CssClass="form-control"  >
                        <asp:ListItem>----Select Type-----</asp:ListItem>
                        <asp:ListItem>ADMIN</asp:ListItem>
                        <asp:ListItem>STAFF</asp:ListItem>
                    </asp:DropDownList>
            </div>
              </div>
                 <div class="col-md-6">
            <label for="exampleInputEmail1">User ID</label>
            <asp:TextBox ID="txtuserid" runat="server" class="form-control" placeholder="Enter User ID"></asp:TextBox>
              </div>
            </div>
            </div>
          <div class="form-group">
              <div class="form-row">
                  <div class="col-md-6">
            <label for="exampleInputEmail1">Password</label>
            <asp:TextBox ID="txtpswrd" runat="server" class="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
              </div>
                 <div class="col-md-6">
            <label for="exampleInputEmail1">Confirm Password</label>
            <asp:TextBox ID="txtconfmpswd" runat="server" class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
              </div>
            </div>
            </div>
         <asp:Button ID="btnregister" runat="server" Text="Register" class="btn btn-primary btn-block" OnClick="btnregister_Click"  />
          </div>
        </div>
          
       
      
      </div>
    
  
</asp:Content>
