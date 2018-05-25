<%@ Page Title="" Language="C#" MasterPageFile="~/Regist.Master" AutoEventWireup="true" CodeBehind="Edit Student.aspx.cs" Inherits="ssss.Edit_Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row mt">
          		<div class="col-lg-12">
          			<div class="form-panel">
                  	  <h4 class="mb">Student Registration</h4>
                      <div>
                          <table class="table" align="left">
                             <tr>
                                <td valign="middle">
                                     Name / Amission No.
                                    <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:TextBox ID="txtname" runat="server" CssClass="form-control" AutoCompleteType="Disabled"  />   
                                                             <asp:HiddenField ID="hdempid" runat="server" /> 
                                    </div>
                                </td>
                                
                                
                                <td valign="middle">
                                    <div class="form-group">
                                        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                                    </div>                         
                                </td>  
                                 <td valign="middle">
                                     
                                </td>                         
                             </tr>

                              <tr>
                                <td valign="middle">
                                    Date of Birth
                                    <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:TextBox ID="txtdob" runat="server" CssClass="form-control" AutoCompleteType="Disabled"  />    
                                    </div>
                                </td>
                                
                                <td valign="middle">
                                    Age
                                    <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:TextBox ID="txtage" runat="server" CssClass="form-control" AutoCompleteType="Disabled"  />    
                                    </div>                         
                                </td>                           
                             </tr>
                            


                             <tr>                              
                                <td valign="middle">
                                    Email_id <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:TextBox ID="txtmail" runat="server" CssClass="form-control" AutoCompleteType="Disabled"  />                      
                          <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
              ErrorMessage="enter a email id" ControlToValidate="txtmail"
                  ValidationGroup="vgSubmit" ForeColor="Red"></asp:RequiredFieldValidator>


              <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
              runat="server" ErrorMessage="Please Enter Valid Email ID"
                  ValidationGroup="vgSubmit" ControlToValidate="txtmail"
                  CssClass="requiredFieldValidateStyle"
                  ForeColor="Red"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"> </asp:RegularExpressionValidator>

                       </div>
                      </td>   
                                 <td valign="middle">
                                   Course
                                    <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:TextBox ID="txtcourse" runat="server" CssClass="form-control" AutoCompleteType="Disabled"  />    
                                    </div> 
                                </td>
                                
                                                     
                             </tr>
                            
                       
                             <tr>
                                <td valign="middle">
                                    Username
                                    <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:TextBox ID="txtusername" runat="server" CssClass="form-control" AutoCompleteType="Disabled"  />    
                                    </div>
                                </td>
                                   
                             </tr>


                             <tr>
                                <td valign="middle">
                                    Password
                                    <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" AutoCompleteType="Disabled"  />    
                                    </div>
                                </td>
                                                          
                             </tr>


                           
                                           
        </table>

                        
                          <asp:Button runat="server" ID="btnDelete" CssClass="btn btn-theme" 
                            Width="100px" Text="Delete" OnClick="btnDelete_Click"   />
                          <asp:Button runat="server" ID="btnSave" CssClass="btn btn-theme" 
                            Width="100px" Text="Save" OnClick="btnSave_Click"   />
                      &nbsp;
                              

                          </div>
                        </div>
        </div>
</asp:Content>
