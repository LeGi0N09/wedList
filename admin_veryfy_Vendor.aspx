﻿<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.master"  EnableEventValidation="false"  AutoEventWireup="true" CodeFile="admin_veryfy_Vendor.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Label ID="Label100" runat="server" ></asp:Label>
      <section id="couple-profile" class="couple-profile-main-page">
    <div class="container">
      <div class="couple-profile-tabs general-nav-tabs tabs">
        <a href="admin_dashboard.aspx" class=" btn btn-default"><span class="badge">Dashboard</span></a>
        <a href="admin_view_orders.aspx" class=" btn btn-default"><span class="badge">View Orders</span></a>
        <a href="#" class=" btn btn-default"><span class="badge">Manage Vendors</span></a>
        <a href="a_manage_customers.aspx" class="btn btn-default"><span class="badge">Manage Customer</span></a>
       <a href="ans_query.aspx" class=" btn btn-default"><span class="badge">Queries</span></a>
     <a href="admin_veryfy_Vendor.aspx" class="active btn btn-default"><span class="badge">Verify vendor</span></a>


           <div class="row">
            <div class="col-md-8">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1"  >
          <ItemTemplate> 
                <%--<div class="panel panel-default">
            <table style="width:100%">
                      <tr>
                          <td ><h6 style="margin:5% 0% 5% 5%"><%# DataBinder.Eval(Container,"DataItem.customer_name") %></h6> </td>
                          <td><h6 style="margin:0% 0% 2% 5%"><%# DataBinder.Eval(Container,"DataItem.email") %></h6></td>
                          <td ><h6 style="margin:0% 0% 0% 5%"><%# DataBinder.Eval(Container,"DataItem.contact") %></h6></td>
                          <td ><h6 style="margin:0% 0% 0% 5%"><%# DataBinder.Eval(Container,"DataItem.date") %></h6></td>
                          <td ><h6 style="margin:0% 0% 0% 5%"><%# DataBinder.Eval(Container,"DataItem.city") %></h6></td>
                          <td ><h6 style="margin:0% 0% 0% 5%"><div class="uiverse">
    <span class="tooltip"><%# DataBinder.Eval(Container,"DataItem.status") %></span>
    <span>
        <%# DataBinder.Eval(Container,"DataItem.status") %>
    </span>
</div></h6></td>
                      </tr>
                  </table>
                </div>--%>
            

                
                  <div class="panel panel-default" style=" margin-left:2%">
                  <div class="panel-heading" role="tab" id="headingTwo">
                    <h4 class="panel-title to-do-list-heading">
                    
                    <spam style="font-size:larger">Vendor Name:<%# DataBinder.Eval(Container,"DataItem.name") %></spam>  
               
                      
                    </h4>
                  </div>
                  <div class="panel-collapse collapse in" role="tabpanel" >
                    <div class="panel-body to-do-list-dtl">
                      <div class="row"> 
                           
                      <div class="col-sm-10 input-group">
                       <span class="input-group-addon" > ID:</span> 
                        <asp:Label ID="Label5" runat="server" CssClass="form-control" style="padding-top:1.5%" Text='<%# DataBinder.Eval(Container,"DataItem.Id") %>' ></asp:Label>
                        </div>
                      <br/>
                        <div class="col-sm-10 input-group">
                       <span class="input-group-addon" > Email:</span> 
                         <asp:Label ID="Label2" runat="server" CssClass="form-control" style="padding-top:1.5%" Text='<%# DataBinder.Eval(Container,"DataItem.email") %>' ></asp:Label> <br /><br />
                         
                        </div>
                          <br />
                        <div class="col-sm-10 input-group">
                         <span class="input-group-addon"> Contact:</span> 
                            <span class="form-control" style="padding-top:2.5%" ><%# DataBinder.Eval(Container,"DataItem.phone") %></span>
                           
                        </div>
                         <br />
                           
                          
                             <div class="col-sm-10 input-group">
                    <span class="input-group-addon">Query</span>
                               
                                  <asp:Label  ID="Label1" runat="server" CssClass="form-control" style="padding-top:1.5%" Text='<%# DataBinder.Eval(Container,"DataItem.status") %>' ></asp:Label>
             </div>
                          <br /> 
                     <%--            <div class="col-sm-10 input-group">
                    <span class="input-group-addon">Respond</span>
                                <asp:TextBox ID="TextBox1" placeholder="Response queries here" runat="server" Textmode="MultiLine"  CssClass="form-control"></asp:TextBox>       
             </div>
                     --%>    <%-- <br />
                      <div class="col-sm-3 ">
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-pink" Text="Submit" onclick="Button1_Click"/>
                              <asp:Label ID="Label4" runat="server"  style="padding-top:1.5%" visible="false" Text="Success" ></asp:Label>
                         </div>--%>
             
                         
                      </div>
                    </div>
                  </div>
                </div>
            <br/>
                
</ItemTemplate>
                    </asp:Repeater>
            </div>
         <style>

             div.sticky{
                 position:-webkit-sticky;
                 position:sticky;
                 top:0;
             }
         </style>
       
            <div class="col-md-4 offset-md-4 " >
                 
          <div class="vendor-enquery-block sticky "  >
            <h4 class="vendor-enquery-heading">Verify Vendor</h4>
            <p class="vendor-enquery-sub-heading">Select the verification of  Vendor here.</p>
            <div class="form-group">
              <form id="vendor-profile-form" action="#">
                 <asp:TextBox ID="TextBox1" placeholder="Email" runat="server" Textmode="SingleLine"  CssClass="form-control"></asp:TextBox> 
                  <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">

                      <asp:ListItem>PENDING</asp:ListItem>
                      <asp:ListItem>CONFIRM</asp:ListItem>
                      <asp:ListItem>DECLINE</asp:ListItem>
                  </asp:DropDownList>
             <Br/>
               <asp:Button ID="Button1" runat="server" CssClass="btn btn-pink" Text="Submit" ForeColor="White" OnClick="Button1_Click" />
                  <br/>
                  <asp:Label ID="Label4" runat="server"  CssClass="alert alert-danger
                      " style="padding-top:1.5%" visible="false" Text="Please Fill details Properly" ></asp:Label>
              </form>
            </div>
          </div>
        </div>
            
            </div>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [vendor_signup] WHERE ([status] = @status)">
              <SelectParameters>
                  <asp:Parameter DefaultValue="PENDING" Name="status" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:SqlDataSource>


        </div>
        </section>

</asp:Content>

