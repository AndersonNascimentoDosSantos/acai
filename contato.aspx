<%@ Page Title="" Language="C#" MasterPageFile="~/modelo.master" AutoEventWireup="true" CodeFile="contato.aspx.cs" Inherits="contato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <ul>
        <li>
    <asp:Label ID="nome" runat="server" Text="Nome:"></asp:Label>
            <asp:SqlDataSource ID="sqlcadastro_cliente" runat="server" ConnectionString="<%$ ConnectionStrings:yogaConnectionString %>" DeleteCommand="DELETE FROM [contato] WHERE [numero_contato] = @numero_contato" InsertCommand="INSERT INTO [contato] ([nome], [email_contato], [informacoes]) VALUES (@nome, @email_contato, @informacoes)" SelectCommand="SELECT * FROM [contato]" UpdateCommand="UPDATE [contato] SET [nome] = @nome, [email_contato] = @email_contato, [informacoes] = @informacoes WHERE [numero_contato] = @numero_contato">
                <DeleteParameters>
                    <asp:Parameter Name="numero_contato" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="Txtnome" Name="nome" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TxtEmail" Name="email_contato" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtTexto" Name="informacoes" PropertyName="Text" Type="String" />
                     <asp:ControlParameter ControlID="Txtuser Name="usuario" PropertyName="Text" Type="String" />
                     <asp:ControlParameter ControlID="Txtsenha" Name="senha" PropertyName="Text" Type="String" />
                     <asp:ControlParameter ControlID="Txtrua" Name="rua" PropertyName="Text" Type="String" />       
                        <asp:ControlParameter ControlID="Txtbairro" Name="bairro" PropertyName="Text" Type="String" />     
                         <asp:ControlParameter ControlID="Dropdown" Name="cidade" PropertyName="Text" Type="String" />                                                                                                                   
                                                                                                                      
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nome" Type="String" />
                    <asp:Parameter Name="email_contato" Type="String" />
                    <asp:Parameter Name="informacoes" Type="String" />
                    <asp:Parameter Name="numero_contato" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
    <li><asp:Label ID="user" runat="server" Text="Usuario:"></asp:Label> </li>
        <li><asp:TextBox ID="Txtuser" runat="server" CssClass="textbox" ></asp:TextBox></li>
        <li><asp:Label ID="key" runat="server" Text="Senha:"></asp:Label> </li>
        <li><asp:TextBox ID="TxtTelefone" runat="server" CssClass="textbox" ></asp:TextBox></li>
    <li><asp:TextBox ID="Txtnome" runat="server" CssClass="textbox"></asp:TextBox></li>
    <li><asp:Label ID="Label2" runat="server" Text="Telefone/Whatsapp:"></asp:Label> </li>
    <li><asp:TextBox ID="TxtTelefone" runat="server" CssClass="textbox" ></asp:TextBox></li>
    <li><asp:Label ID="Label3" runat="server" Text="email:"></asp:Label></li>
    <li><asp:TextBox ID="TxtEmail" runat="server" CssClass="textbox"></asp:TextBox></li>
    <li><asp:CheckBox ID="Ckpergunta" runat="server" CssClass="check"  Text="Pergunta" />
    <asp:CheckBox ID="ckinfo" runat="server" CssClass="check" Text="Informação" /></li>
    <li><asp:TextBox ID="txtTexto" runat="server" CssClass="details" ></asp:TextBox></li>
    <li><asp:Button ID="Button1" runat="server" Text="Enviar" CssClass="botao" OnClick="Button1_Click" /></li>
        </ul>
</asp:Content>

