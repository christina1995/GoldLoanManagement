<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="addcustomer.aspx.cs" Inherits="Evershine.addcustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Register a New Customer</div>
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
                <label for="exampleConfirmPassword">District</label>
                    <div>
                         <asp:DropDownList ID="dropdowndis" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="dropdowndis_SelectedIndexChanged">
                    <asp:ListItem>---Select District---</asp:ListItem>
                    </asp:DropDownList>
                    </div>
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
            <label for="exampleInputEmail1">Area</label>
            <div>
                         <asp:DropDownList ID="dropdownarea" runat="server" CssClass="form-control" OnSelectedIndexChanged="dropdownarea_SelectedIndexChanged" >
                    <asp:ListItem>---Select Area---</asp:ListItem>
                    </asp:DropDownList>
                    </div>
              </div>
            </div>
            </div>
          
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputPassword1">Aadhaar Number</label>
               <asp:TextBox ID="txtaadhaar" runat="server" class="form-control" placeholder="Enter Aadhaarnumber" TextMode="SingleLine"></asp:TextBox>
              </div>
              <div class="col-md-6">
                <label for="exampleConfirmPassword">Pincode</label>
               <asp:TextBox ID="txtpincode" runat="server" class="form-control" placeholder="Enter Pincode" TextMode="SingleLine"></asp:TextBox>
              </div>
            </div>
          </div>
           <asp:Button ID="btnregister" runat="server" Text="Register" class="btn btn-primary btn-block" OnClick="btnregister_Click"  />
       </div>
      
      </div>
    </div>
  
 
</asp:Content>
