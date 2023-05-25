<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Ajax.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <style>
        .table{
            width: 90vw;
            height: 60vh;
            background-color: cadetblue;
            border-radius: 2rem;
            border: ridge red 2px;
        }
        td,tr{
            border: solid #000000;
            text-align: center;
           text-align: left;
        }
        .tr1{
            font-size: 2rem;
            padding: 0;
            margin: 0;
        }
       
        .btn{
            width: fit-content;
            padding: .3rem 1rem;
            border-radius: 0 1rem 0 1rem;
            background: #221bbe;
            box-shadow: 0 0 0 1px #ff6a00;
            color: aliceblue;
        }
        .btn:hover {
            background: green;
        }
        .td-btn {
            text-align: center;
        }
       
    </style>
    <title></title>
</head>
<body>
    
    
    <form id="form1" runat="server">
        <asp:ScriptManager ID="sm1" runat="server"></asp:ScriptManager>
        <div>
            <table class="table" align="center">
                <tr>
                    <td class="tr1" colspan="2">Employee Registration</td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Employee ID</td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                       
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                                <asp:Button CssClass="btn" ID="btncheck" Text="Check" runat="server" OnClick="btncheck_Click" />

                                &nbsp;&nbsp;<asp:Label ID="lblmsg" Text="" runat="server" />

                                </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="btncheck" EventName="Click" />
                            </Triggers>
                            </asp:UpdatePanel>
                          
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Employee Email ID</td>
             
                    <td> 
                        &nbsp; 
                        &nbsp;&nbsp;&nbsp; 
                        <asp:TextBox ID="txtemail" runat ="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Employee Name</td>
                    <td>
                        &nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID ="txtname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Employee Department</td>
                    <td>
                        &nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:DropDownList ID ="Dd1" runat ="server">
                            <asp:ListItem>--Select Department--</asp:ListItem>
                              <asp:ListItem>Testing</asp:ListItem>
                              <asp:ListItem>Accounts</asp:ListItem>
                              <asp:ListItem>Development</asp:ListItem>

                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="td-btn">
                        <asp:Button CssClass="btn" ID ="btnadd" Text ="ADD" runat ="server" OnClick="btnadd_Click" /> &nbsp; &nbsp; 
                        <asp:Button CssClass="btn" ID ="btndelete" Text ="DELETE" runat ="server" OnClick="btndelete_Click" /> &nbsp; &nbsp; 
                        <asp:Button CssClass="btn" ID ="btnupdate" Text ="UPDATE" runat ="server" OnClick="btnupdate_Click" />&nbsp; &nbsp; 
                        <asp:Button CssClass="btn" ID ="btnfind" Text ="FIND" runat ="server" OnClick="btnfind_Click" />
                        &nbsp; &nbsp; 
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
