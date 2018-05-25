<%@ Page Title="" Language="C#" MasterPageFile="~/Regist.Master" AutoEventWireup="true" CodeBehind="New Student.aspx.cs" Inherits="ssss.New_Student" %>
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
                                    Admission No
                                    <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:TextBox ID="txtadno" runat="server" CssClass="form-control" AutoCompleteType="Disabled"  />    
                                    </div>
                                </td>
                                 <td valign="middle">
                                   
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                        
                                    </div>
                                </td>
                             </tr>
                             <tr>
                                <td valign="middle">
                                    First Name
                                    <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:TextBox ID="txtfname" runat="server" CssClass="form-control" AutoCompleteType="Disabled"  />    
                                    </div>
                                </td>
                                
                                <td valign="middle">
                                    Last Name
                                    <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:TextBox ID="txtlname" runat="server" CssClass="form-control" AutoCompleteType="Disabled"  />    
                                    </div>                         
                                </td>                           
                             </tr>


                             <tr>
                                <td valign="middle">
                                    Date of Birth
                                    <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:TextBox ID="txtdob" runat="server" CssClass="form-control" AutoCompleteType="Disabled" TextMode="Date" />    
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
                                    Gender
                                    <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:RadioButton ID="male" runat="server" GroupName="Gender" Text="MALE" />
                                    <asp:RadioButton ID="female" runat="server"  GroupName="Gender" Text="FEMALE" />    
                                    </div>
                                </td>
                                
                                
                                
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
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                  </asp:RegularExpressionValidator>

                       </div>
                      </td>                        
                             </tr>
                            
                          
                             <tr>
                                <td valign="middle">
                                    Image <span class="auto-style3"></span>
                                </td>  
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:Image ID="img_fac" runat="server" Height="200px" Width="200px" />
                                    <asp:FileUpload ID="upld_photo" runat="server" />
                                </div>
                                </td>
                            
                                <td valign="middle">
                                   
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                      
                                    </div>
                                </td>
                            </tr>                     
        </table>
                         

                         <asp:Button runat="server" ID="btnSave" CssClass="btn btn-theme" 
                            Width="100px" Text="Register" OnClick="btnSave_Click"   />
                      &nbsp;
                              
                        <br /><br /><br /><br /><br /><br />
                              
                              
                                  <asp:Label ID="Label1" runat="server" ></asp:Label>
                              &nbsp;
                                  
                      &nbsp;
 </div></div></div>
    </div>
</asp:Content>
