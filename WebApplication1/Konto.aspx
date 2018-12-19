<%@ Page Title="Info" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Konto.aspx.cs" Inherits="WebApplication1.Konto" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <aside></aside>
        <article>
            <h1 id="head">Formularz dodawania użytkownika</h1>
            <section>
                <h4>Wprowadź dane</h4>
                <div class="container">
                    <form id="form1" runat="server">

                        <table style="width: 66%;">
                            <tr>
                                <td class="style3">Imię:
                                </td>

                                <td class="style2">
                                    <asp:TextBox ID="imie" runat="server"></asp:TextBox>
                                </td>

                                <td></td>
                            </tr>
                            <tr>
                                <td class="style3">Nazwisko:
                                </td>

                                <td class="style2">
                                    <asp:TextBox ID="nazwisko" runat="server"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                        ControlToValidate="nazwisko"
                                        Display="Static"
                                        ErrorMessage="Brak pola nazwisko"
                                        runat="server" />
                                </td>
                            </tr>

                            <tr>
                                <td class="style3">Miesiąc urodzenia:
                                </td>

                                <td class="style2">
                                    <asp:DropDownList ID="miesiac" runat="server" Style="width: 239px">
                                        <asp:ListItem>Styczeń</asp:ListItem>
                                        <asp:ListItem>Luty</asp:ListItem>
                                        <asp:ListItem>Marzec</asp:ListItem>
                                        <asp:ListItem>Kwiecień</asp:ListItem>
                                        <asp:ListItem>Maj</asp:ListItem>
                                        <asp:ListItem>Czerwiec</asp:ListItem>
                                        <asp:ListItem>Lipiec</asp:ListItem>
                                        <asp:ListItem>Sierpień</asp:ListItem>
                                        <asp:ListItem>Wrzesień</asp:ListItem>
                                        <asp:ListItem>Październik</asp:ListItem>
                                        <asp:ListItem>Listopad</asp:ListItem>
                                        <asp:ListItem>Grudzień</asp:ListItem>

                                    </asp:DropDownList>
                                </td>

                                <td></td>
                            </tr>

                            <tr>
                                <td class="style3">Hasło:
                                </td>

                                <td class="style2">
                                    <asp:TextBox ID="haslo" TextMode="Password" runat="server"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                        ControlToValidate="haslo"
                                        Display="Static"
                                        ErrorMessage="Brak pola Hasło"
                                        runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">E-mail:
                                </td>

                                <td class="style2">
                                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                        ControlToValidate="email"
                                        Display="Static"
                                        ErrorMessage="Brak pola E-mail"
                                        runat="server" />
                                </td>
                                <td>
                                    <asp:RegularExpressionValidator ID="remail" runat="server"
                                        ControlToValidate="email" ErrorMessage="Wprowadź poprawny e-mail"
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                    </asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">Telefon:
                                </td>

                                <td class="style2">
                                    <asp:TextBox ID="telefon" runat="server"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RangeValidator ID="rvclass" runat="server" ControlToValidate="telefon"
                                        ErrorMessage="Wprowadz poprawny numer tel." MaximumValue="999999999"
                                        MinimumValue="100000000" Type="Integer">
   
                                    </asp:RangeValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style3" align="center" colspan="3">
                                    <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" />
                                </td>
                            </tr>
                        </table>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                            DisplayMode="BulletList" ShowSummary="true" HeaderText="Errors:" />

                    </form>
                    <asp:Label ID="lblmsg"
                        Text=""
                        runat="server" />
                    <p id="textHelper"></p>
                </div>
            </section>

        </article>
        <aside>
            <a href="contact.html">
                <button class="toTrans" id="fixedbutton">Kontakt</button>
            </a>
        </aside>
    </main>

</asp:Content>
