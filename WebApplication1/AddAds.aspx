<%@ Page Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="AddAds.aspx.cs" Inherits="WebApplication1.AddAds" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">  
    <main>
        <aside></aside>
        <article>
            <h1 id="head">Dodaj swoje ogłoszenie</h1>
            <section>
                <h4>Wprowadź wymagane informacje</h4>
                <div class="container">
                    <form autocomplete="on" id="advert_form" method="post" action="add_advert.php">
                        <label for="temat">Tytuł</label>
                        <input id="temat" name="temat" type="text" required>
						<p>Pole wymagane.</p>

                        <label for="opis">Opis</label><br>
                        <textarea maxlength="200" id="opis" name="opis"></textarea>
                    
					<br><br>
						<label for="kategoria">Kategoria</label><br>
						<select name="kategoria" id="kategoria">
						<option value="-1">---</option>
						<option value="1">Dom i ogród</option>
						<option value="2">Moda</option>
						<option value="3">Praca</option>
						<option value="4">Motoryzacja</option>
						</select>
						
						<br><br>
						<label>Widoczność ogłoszenia</label><br>
						<input type="radio" name="widok" value="publiczne" checked="checked">publiczne<br>
						<input type="radio" name="widok" value="prywatne">prywatne<br>

						<br><br><br>
                        <button type="submit" class="btn">Wyśli</button>
                    </form>
                </div>
            </section>

        </article>
        <aside>
            <a href="contact.html"> <button class="toTrans" id="fixedbutton">Kontakt</button> </a>
        </aside>
    </main>
</asp:Content>
