<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GoldLoanIssual.aspx.cs" Inherits="Evershine.GoldLoanIssual" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="card-header"><b>GOLD LOAN ISSUE</b></div>
     <div class="col-8">
     <h1 class="form-control" ><b>CUSTOMER DETAILS</b></h1>  
         <div class="form-group">
             <div class="form-row">
                 <div class="col-md-6">
                     <label for="exampleInputPassword1">Customer Name</label>
                     <asp:TextBox ID="txtcustname" runat="server" class="form-control" placeholder="Enter Customer Name" TextMode="SingleLine"></asp:TextBox>
                     <asp:HiddenField ID="hdempid" runat="server" />
                 </div>
                 <div class="col-md-6">
                     <label></label>
                     <asp:Button ID="btnsearch" runat="server" Text="Search" class="btn btn-primary btn-block" Width="120px" OnClick="btnsearch_Click"  />
                 </div>
             </div>
         </div>
         <div class="form-group">
             <div class="form-row">
                 <div class="col-md-6">
                     <label for="exampleInputPassword1">Customer Phone Number</label>
                     <asp:TextBox ID="txtphno" runat="server" CssClass="form-control" TextMode="SingleLine" Enabled="False"></asp:TextBox>
                 </div>
                 <div class="col-md-6">
                     <div>
                     <label> Customer Address</label></div>
                     <asp:TextBox ID="txtcustaddress" runat="server" CssClass="form-control"  TextMode="MultiLine" Enabled="False" ></asp:TextBox>
                 </div>
             </div>
         </div>            
         <h1 class="form-control"><b>GOLD DETAILS</b></h1> 
         <div class="form-group" >
         <div class="form-row">
              <div class="col-md-6">
                   <label for="exampleInputPassword1">Today's Gold rate is </label>
             <asp:Label ID="lblrate" runat="server" Text="Label" ></asp:Label>
             <asp:HiddenField ID="hdrate" runat="server" />
                  </div>
             </div>
             </div>
         <div class="form-group" >
         <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputPassword1">Gl Number</label>
               <asp:TextBox ID="txtglno" runat="server" class="form-control" placeholder="Enter Gl Number" TextMode="SingleLine"></asp:TextBox>
              </div>
              <div class="col-md-6">
                <label for="exampleConfirmPassword">Issuing Date</label>
               <asp:TextBox ID="txtissuedate" runat="server" class="form-control" placeholder="Enter Issuing Date" TextMode="Date"></asp:TextBox>
              </div>
             </div>
              </div>
            <div class="form-group">
             <div class="form-row">
              <div class="col-md-6">
               <asp:GridView ID="gvgoldloan" runat="server" AutoGenerateColumns="False"  CssClass=" form-control" >                  
                   <Columns>
                       <asp:TemplateField HeaderText="">
                             <ItemTemplate>
                              <asp:CheckBox ID="chkSelect" runat="server" Checked='<%# Eval("IsSelected") %>' />
                             </ItemTemplate>
                           </asp:TemplateField>
                       <asp:BoundField DataField="item_name" HeaderText="Item Name" ItemStyle-Width="150px" />
                   <%--<asp:TemplateField HeaderText="Item Name">
                            
                           </asp:TemplateField>--%>
                          </Columns>
                   <Columns>
                     <asp:TemplateField HeaderText="Weight">
                       <ItemTemplate >
                              <asp:TextBox ID="txtweight" CssClass="form-control" runat="server" ></asp:TextBox>
                       </ItemTemplate>
                     </asp:TemplateField>
                    </Columns>
                    <Columns>
                        <asp:TemplateField HeaderText="Count">
                           <ItemTemplate >
                             <asp:TextBox ID="txtcount"  runat="server" CssClass="form-control" ></asp:TextBox>
                               
                           </ItemTemplate>
                         </asp:TemplateField>
                    </Columns>
                           
                    <Columns>
                          <asp:TemplateField HeaderText="Amount">
                             <ItemTemplate >
                               <asp:TextBox ID="txtamount" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                 <%--<script type="text/javascript">
                                     function SetAmount() {
                                         alert("JS");
                                         alert(document.getElementById("txtcount").value);
                                         var wt = document.getElementById('txtweight').value;
                                         alert(wt);
                                         var count = document.getElementById('txtcount').value;
                                         var amt = wt * count;
                                         document.getElementById('txtamount').value = amt;
                                     }

                                 </script>--%>
                             </ItemTemplate>
                          </asp:TemplateField>
                    </Columns>   
                </asp:GridView>
              </div>
            </div>
         </div>
         <div class="form-group" >
         <div class="form-row">
              <div class="col-md-6">
                   <asp:TextBox ID="txttotal" runat="server" CssClass="form-control" placeholder="Total Amount" TextMode="SingleLine" Enabled="False"></asp:TextBox>
              </div>
             </div></div>
          <div class="form-group">
             <div class="form-row">
         <div class="col-md-6">
             <asp:Button ID="btntotal" runat="server" Text="OK" class="btn btn-primary btn-block" OnClick="btntotal_Click" />
         </div>       
          </div>
        </div>
     </div>
</asp:Content>
