<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="EditStaff.aspx.cs" Inherits="Evershine.EditStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
     <div class="card-header"><b>Staff Details</b></div>
     <div class="card card-register">
      <div class="card-body">
     <div class="col-md-6">
          <table>
                              <tr>
                                  <td> 
                                      <asp:TextBox ID="txtname" runat="server" CssClass="form-control" placeholder="Enter Staff Name "></asp:TextBox>
                                  </td>
                                  <td>
                                      <asp:Button ID="btnsearch" runat="server" Text="Search" class="btn btn-primary btn-block" OnClick="btnsearch_Click" />
                                  </td>
                              </tr>
           </table>
                    <%--<div>
                      <asp:TextBox ID="txtname" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
         <div>
             <div>
               <asp:Button ID="btnsearch" runat="server" Text="Search" class="btn btn-primary btn-block" />
             </div>
             
         </div>--%>
         </div>
          <div class="form-group">
             <div class="form-row">
                 <div class=" col-12">
                 <div class="col-md-6">
                     <label for="exampleInputPassword1">Phone Number</label>
                     <asp:TextBox ID="txtphno" runat="server" CssClass="form-control" TextMode="SingleLine"  placeholder=" Enter Phone Number"></asp:TextBox>
                 </div>
                       <div class="col-md-6">
                     <div>
                     <label>Aadhaar Number</label></div>
                     <asp:TextBox ID="txtaadhaar" runat="server" CssClass="form-control"  TextMode="SingleLine" placeholder="Enter Aadhaar Number" ></asp:TextBox>
                 </div>
                 <div class="col-md-6">
                     <div>
                     <label>Address</label></div>
                     <asp:TextBox ID="txtcustaddress" runat="server" CssClass="form-control"  TextMode="MultiLine" placeholder="Enter Address" ></asp:TextBox>
                 </div>
                      <div class="col-md-6">
                     <div>
                     <label>Salary</label></div>
                     <asp:TextBox ID="txtsal" runat="server" CssClass="form-control"  TextMode="SingleLine" placeholder="Enter Salary" ></asp:TextBox>
                 </div>
                    
                     <div class="col-md-6">
                     <div>
                     <label>User ID</label></div>
                     <asp:TextBox ID="txtuserid" runat="server" CssClass="form-control"  TextMode="SingleLine" placeholder="Enter User ID" ></asp:TextBox>
                 </div>
                     <div class="col-md-6">
                     <div>
                     <label>Password</label></div>
                     <asp:TextBox ID="txtpswd" runat="server" CssClass="form-control"  TextMode="SingleLine" placeholder="Enter Password" ></asp:TextBox>
                 </div>
                     <div class="col-md-6">
                     <div>
                     <label>Confirm Password</label></div>
                     <asp:TextBox ID="txtconfrmpswd" runat="server" CssClass="form-control"  TextMode="SingleLine" placeholder="Confirm Password" ></asp:TextBox>
                 </div>
                     <div class="col-md-6">
                         <div>
                             <label></label>
                             <asp:Button ID="btnsave" runat="server" Text="SAVE CHANGES" class="btn btn-primary btn-block"  OnClick="btnsave_Click" />
                         </div>
                         </div>
             </div>      
           </div>
         </div>         
          </div>
        </div>
        </div>
        
        
                 <%--<asp:GridView ID="gvsearch" runat="server" OnSelectedIndexChanged="gvsearch_SelectedIndexChanged"  AutoGenerateColumns="False" AutoGenerateEditButton="True" DataKeyNames="staff_userid" DataSourceID="SqlDataSource1" >
                     <Columns>
                         <asp:BoundField DataField="staff_name" HeaderText="Name" SortExpression="staff_name" ></asp:BoundField>   
                         <asp:BoundField DataField="staff_address" HeaderText="Address" SortExpression="staff_address"></asp:BoundField>
                         <asp:BoundField DataField="staff_phno" HeaderText="Phone Number" SortExpression="staff_phno"></asp:BoundField>
                         <asp:BoundField DataField="staff_sal" HeaderText="Salary" SortExpression="staff_sal"></asp:BoundField>
                         <asp:BoundField DataField="staff_userid" HeaderText="UserId" SortExpression="staff_userid"  ></asp:BoundField>
                         <asp:BoundField DataField="staff_pswd" HeaderText="Password" SortExpression="staff_pswd"></asp:BoundField>
                         <asp:BoundField DataField="staff_confrmpswd" HeaderText="Confirm Password" SortExpression="staff_confrmpswd" />
                     </Columns>
                  </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:financeConnectionString %>" SelectCommand="SELECT [staff_name], [staff_address], [staff_phno], [staff_sal], [staff_userid], [staff_pswd], [staff_confrmpswd] FROM [tbl_staff]" UpdateCommand="UPDATE [tbl_staff] Set [staff_name]=@staff_name, [staff_address]=@staff_address,[staff_phno]=@staff_phno,[staff_sal]=@staff_sal,[staff_userid]=@staff_userid,[staff_pswd]=@staff_pswd,[staff_confrmpswd]=@staff_confrmpswd Where [staff_name]=@staff_name" ></asp:SqlDataSource>--%>
                     
</asp:Content>
