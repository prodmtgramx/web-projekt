<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Ads.aspx.cs" Inherits="WebApplication1.Ads" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">  
<h2 style="text-align: center;">Wyszukaj ogłoszenia, które Cię interesują.</h2>


<div class="panel">
    <div class="row">

        <div class="spaceDiv"></div>
        <label class="panelLabel" for="searchItem">Czego szukasz: </label>
        <input type="text" id="searchItem" placeholder="czego szukasz...">

        <div class="spaceDiv"></div>
        <label class="panelLabel" for="kategoria">Kategoria: </label>

            <ol class="poziom-top">
                <li>
                    <a href="#">Kategorie  <strong>></strong> </a>
                    <ul name="kategoria" id="kategoria" class="poziom-dwa">
                        <li><a href="#">Motoryzacja</a>
                            <ul class="poziom-trzy">
                                <li><a href="#">Samochody</a></li>
                                <li><a href="#">Motocykle</a></li>
                                <li><a href="#">Części</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Komputery</a>
                            <ul class="poziom-trzy">
                                <li><a href="#">Laptopty</a></li>
                                <li><a href="#">Stacjonarne</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Moda</a>
                            <ul class="poziom-trzy">
                                <li><a href="#">Spodnie</a></li>
                                <li><a href="#">Bluzki</a></li>
                                <li><a href="#">Buty</a></li>
                                <li><a href="#">Swetry</a></li>
                                <li><a href="#">Garnitury</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Wnętrze</a></li>
                        <li><a href="#">Ogród</a></li>
                        <li><a href="#">Muzyka</a>
                            <ul class="poziom-trzy">
                                <li>
                                    <a href="#">Instrumenty</a>
                                </li>
                                <li class="poziom-trzy">
                                    <a href="#">Szkoła</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ol>

        <div class="spaceDiv"></div>
    <label class="panelLabel" for="localizacja">Lokalizacja: </label>
    <ul class="poziom-top">
        <li>
            <a href="#">Miejscowości  <strong>></strong> </a>
            <ul name="localizacja" id="localizacja" class="poziom-dwa">
                <li><a href="#">Wrocław</a></li>
                <li><a href="#">Łódź</a></li>
                <li><a href="#">Kraków</a></li>
                <li><a href="#">Warszawa</a></li>
            </ul>
        </li>
    </ul>

        <div class="spaceDiv"></div>
        <input type="submit" id="searchButton" value="WYSZUKAJ">
    </div>
</div>

<h2 style="text-align: center;">Ogłoszenia</h2>

<div class="adsContainer">
    <div class="ad row">
        <div class="col">
            <strong>Tytuł:&nbsp; </strong>Laptop Asus i5/16gb/256gb ssd<br><br>
            <img src="<%=ResolveUrl("~/Content/notebook.jpeg")%>" width="100px" height="100px" />
        </div>
        <div class="col">
            <strong>Opis:&nbsp; </strong><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br><br>
        </div>
    </div>

    <div class="ad row">
        <div class="col">
            <strong>Tytuł:&nbsp; </strong>Szukamy pracownika!<br><br>
            <img src="<%=ResolveUrl("~/Content/biuro.jpg")%>" width="100px" height="100px" />
        </div>
        <div class="col">
            <strong>Opis:&nbsp; </strong><span>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.</span> </div>
    </div>
</div>


<aside>
    <a href="contact.html">  <button class="toTrans" id="fixedbutton">Kontakt</button> </a>
</aside>
</asp:Content>
