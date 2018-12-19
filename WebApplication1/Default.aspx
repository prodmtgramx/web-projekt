<%@ Page Title="Info" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
       <main>
        <aside></aside>
        <article>
                    <h1 id="head">Twojeogłoszenia.pl</h1>
            <h2>Krótko o nas</h2>
            <section>
                <div class="row bordered">
                    <div class="col toTrans">
                        <h4>Firma</h4>
                        <p style="text-indent: 3%;">Nasza firma działa od 2018 roku. W tym czas zdobyliśmy zaufanie ponad
                            <mark>350 000 </mark>klientów, oraz zrealizowaliśmy x2 tyle transakcji Codziennie staramy się rozwijać
                            nasze przedsiębiorstwo aby klienci w coraz lepszy sposób mogli kożystać z naszych usług.</p>
                    </div>
                    <div class="col toTrans">
                        <h4>Cele</h4>
                        <p style="text-indent: 3%;">Naszym celem jest zwiększenie liczby klientów ponad czterokrotnie przez co moglibyśmy wejść na zagraniczne
                            rynki. Wejście na zagraniczne rynki pozwoliłoby naszym klientom mieć dostęp do większej gamy produktów
                            oraz kupujących.</p>
                    </div>

                </div>
            </section>
            <section>
                <h2 style="visibility: hidden;">Head</h2>
                <div class="row expand ">
                    <div class="col center">
                        <img src="<%=ResolveUrl("~/Content/1.png")%>" alt="Frist Image">
                        <p>
                            <b>Naszą zaletą jest ciągły kontkt z klientem. Cały czas staramy się monitorować i badać wszystkie
                                opienie zostawione przez naszych klientów.
                            </b>
                        </p>
                    </div>
                    <div class="col center">
                        <img src="<%=ResolveUrl("~/Content/2.png")%>" alt="Frist Image">
                        <p>
                                <b>Wszystkie nasze starania są skierowane na jeden cel - rozwijanie naszej strony. To dzięki temu możesz na codzień korzystać z takiej strony jak ta.
                                </b>
                            </p>
                    </div>
                    <div class="col center">
                        <img src="<%=ResolveUrl("~/Content/3.png")%>" alt="Frist Image">
                        <p>
                                <b>Przez dobrze rozwinięty system bankowości Twoje pieniądze mogą czuć się bezpiecznie. Czuwają nad nimi najnowsze technologie z dzeidziny bezpieczeństwa.
                                </b>
                            </p>
                    </div>
                    <div class="col center">
                        <img src="<%=ResolveUrl("~/Content/4.png")%>" alt="Frist Image">
                        <p>
                                <b>Dzięki dużej bazie zaufanych prawników możesz zawsze liczyć na naszą pomoc gdy tylko poczujesz, że mogłeś paść ofiarą oszustwa.
                                </b>
                            </p>
                    </div>
                </div>
            </section>
            <section>
                <h2>Kategorie które znajdziesz na naszej stronie</h2>
                <div class="row">
                    <div class="col">
                        <img class="categoryImg pulse" src="<%=ResolveUrl("~/Content/cat.png")%>" alt="Frist Image">
                    </div>
                    <div class="col">
                    <h5>Realizacja naszego celu</h5>
                    <details>
                        <summary onclick="meterGrow()">Wejdź aby sprawdzić</summary>
                        <p>To już 70%!</p>
                        <meter id="meterValue" value="0.7">70%</meter>
                    </details>
                    </div>
                </div>
            </section>
            <section>
                <div style="margin-top: 50px;">
                    <mark>Statystyki</mark>
                    <br><br>
                    <table id="statystyki">
                        <tr><th></th><th>2015</th><th>2016</th><th>2017</th><th>2018</th></tr>
                        <tr><td>Użytkownicy</td><td>112309</td><td>150107</td><td>249801</td><td>352372</td></tr>
                        <tr><td>Ogłoszenia</td><td>230213</td><td>321908</td><td>590821</td><td>912871</td></tr>
                        <tr><td>Wejścia na stronę</td><td>21382917</td><td>3214567</td><td>6001956</td><td>8079123</td></tr>
                    </table>
                </div>
            </section>
        </article>
        <aside>
            <a href="contact.html"> <button class="toTrans" id="fixedbutton">Kontakt</button> </a>
        </aside>
    </main>
  
</asp:Content>
