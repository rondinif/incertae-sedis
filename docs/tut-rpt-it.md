**DRAFT For discussion purposes only; subject to further review**
Nota bene: questo è solo esempio di come potrebbero essere strutturati i tutorials per questo progetto 

# Esempio di esposizione del problema/caso d'uso 
Siamo in Italia, è autunno e durante una passeggiata in campagna vediamo belle **margheritone gialle** , 
ci piaciono molto ma non la conosciamo, in paricolare vorremmo sapere:
  - se è possibile coltivare questa pianta nel nostro giardino, come fare. 
  - quali caratteristiche positive o negative possiede la pianta che stiamo osservando
  - quali altre specie analoghe esistono e se vi sono specie analoghe prefiribili a queste per una eventuale introduzione nel nostro giardino

Il punto di partenza consiste nel **sapere come si chiama la pianta**, quidi pensiamo si:  
- Fare una foto e postarla su un social per chiedere informazioni, 

Dai contrubuti ricevuti sul social network, concludiamo che il nome della pianta fotografara dovrebbe essere **"Topinanbur"**

Partendo dal nome "Topinambur",  possiamo fare una ricerca con alcuni degli strumenti più diffusamente usati come: 
- [google](https://www.google.com/search?q=topinambur)
- [google images](https://www.google.it/search?q=topinambur&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjqge3O-_jPAhWLPxoKHaruBoEQ_AUICCgB&biw=576&bih=798&dpr=2) 
- [wikipedia](https://it.wikipedia.org/wiki/Helianthus_tuberosus) 

I risultati di queste ricerche possono esserci di aiuto per saperne di più. 

Tuttavia le informazioni che otteniamo sono poco *strutturate* e consistono per lo più in documenti o immagini. 

Vorremmo per esempio ottenere un elenco piuttosto preciso di **altre specie appartenenti allo stesso gruppo tassonomico** del nostro "Topinambur".
Dobbiamo solo sperare che: 
- qualcuno abbia giù pubblicato un documento che già contiene questo elenco, 
- che il documento sia abbastanza completo 
-  che il motore di ricerca utilizzato ci permetta di trovare il documento. 
Un altro approccio potrebbe essere quello di seguire/scorrere uno ad uno i vari link presenti nel [Taxobox](https://en.wikipedia.org/wiki/Template:Taxobox) presente nelle pagine di wikipedia.    

Da wikipedia vediamo infatti che *"Topinambur"* è un nome volgare attribuito alla specie botanica [Helianthus tuberosus](https://it.wikipedia.org/wiki/Helianthus_tuberosus)
e dalla pagina di questa specie possiamo risalire anche al [taxon](https://it.wikipedia.org/wiki/Taxon) di ordine superiore ( in questo caso il [genus](https://it.wikipedia.org/wiki/Genere_(tassonomia)) ) che è Heliantus; resta il problema di come ottenere l'elenco delle altre specie appartentenenti al genere [Helianthus](https://it.wikipedia.org/wiki/Helianthus); e possibilmente ottenere per ciascuna di esse una immagine campione esemplificativa di un determinato [taxon](https://it.wikipedia.org/wiki/Taxon).

In questo tutorial seguiremo un altro approccio, ora possibile grazie al web semantico, cioè quello di interrogare direttamente i dati senza passare dalle pagine e dal loro contenuto.

## Svolgimento
Per **interroragre direttamente i dati senza passare dalle pagine e dal loro contenuto** utilizzeremo
alcune funzionalità caratteristiche disponibili nel pacchetto opensource "incertae-sedis";

1) ricerca la specie botanica a cui si riferisce un generico nome
2) produci un elenco testuale corrispondente alla lista dei taxa che hanno lo stesso parent del taxa dato ( esempio della stessa specie )
3) visualizza un elenco di immagini per le principali specie    

[vedi lo **svolgimento** di questa prima parte](./tut-rpt-p1-it.md)

Se partiamo dall'identificatore della **specie** possiamo ricavare facilmente
all'identificatore del **genere** di appartenenza.

Una volta ottenuto l'**identificatire genere** è possibile impostare una *query* per
ottenere tutti i taxa figli ( specie , sottospecie, varietà etc..);
questa query può essere espressa in SPARQL
e da essa possiamo ricavare un elenco dei "Reverse parent taxa"  

Quello che fa l'utility **rpt** è ottenere questo elenco direttamente da riga di comando
possiamo esportalo su un file grazie alla ridirezione standard dell'output
oppure possiamo contare quanti sono contando le linee che vengono prodotte da rpt
o filtrarlo con utility di tipi grep o farne qualsiasi simile uso etc. etc..  


con una query più complessa possiamo anche chiedere se ci sono immagini che depictano le varie specie
lo script **rpt.sh** conosce queste query e possiamo quindi chiedere lui di scaricare tutte le
immagini in una cartelle e di creare per noi una pagina indice..
