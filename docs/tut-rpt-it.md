**DRAFT For discussion purposes only; subject to further review**
Nota bene: questo è solo esempio di come potrebbero essere strutturati i tutorials per questo progetto 

# Esempio di esposizione del problema/caso d'uso 
## Premessa
Siamo in Italia, è autunno e durante una passeggiata in campagna vediamo un [cespuglio di belle **margheritone gialle*](https://www.google.it/webhp?q=cespuglio+di+belle+margheritone+gialle) , 
ci piaciono molto ma non conosciamo questo tipo di pianta, in paricolare vorremmo sapere:
  - è possibile coltivara questo tipo di pianta nel nostro giardino? 
  - quali caratteristiche positive o negative possiede la pianta che stiamo osservando
  - quali altre specie analoghe esistono?
    -  Vi sono specie analoghe prefiribili a queste per una eventuale introduzione nel nostro giardino.

Il punto di partenza consiste nel **sapere come si chiama la pianta**, quidi pensiamo si:  
- Fare una foto e postarla su un social per chiedere informazioni. 

Dai contrubuti ricevuti sul social network, concludiamo che il nome della pianta fotografara dovrebbe essere **"Topinanbur"**

Partendo dal nome "Topinambur" effettuiamo alcune ricerche sul web: 
- [google](https://www.google.com/search?q=topinambur)
- [google images](https://www.google.it/search?q=topinambur&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjqge3O-_jPAhWLPxoKHaruBoEQ_AUICCgB&biw=576&bih=798&dpr=2) 
- [wikipedia](https://it.wikipedia.org/wiki/Helianthus_tuberosus) 

I risultati di queste ricerche possono esserci di aiuto per saperne di più. 

## Problema
Le informazioni ottenute dalle classiche ricerche sul web: 
- sono poco *strutturate*
- consistono per lo più in link a 
   - documenti 
   - immagini. 

Per rispondere alla domanda: 
  - quali altre specie analoghe esistono?
    -  Vi sono specie analoghe prefiribili a queste per una eventuale introduzione nel nostro giardino.

serve **un elenco** di **altre specie appartenenti allo stesso gruppo tassonomico** del nostro "Topinambur".
I tradizionali metodi di ricerca non di permettono di ottenere tale elenco a meno chenon venga trovato un documento che contiene
 l'elenco di **tutte le specie dello stesso genere del topinambur** , 

Un altro modi di procedere potrebbe essere quello di:
- seguire/scorrere uno ad uno i vari link presenti nel [Taxobox](https://en.wikipedia.org/wiki/Template:Taxobox) presente nelle pagine di wikipedia.    

La pagina wikipedia ci dice che *"Topinambur"* è un nome volgare attribuito alla specie botanica [Helianthus tuberosus](https://it.wikipedia.org/wiki/Helianthus_tuberosus)
e dalla pagina di questa specie possiamo risalire anche al [taxon](https://it.wikipedia.org/wiki/Taxon) di ordine superiore ( in questo caso il [genus](https://it.wikipedia.org/wiki/Genere_(tassonomia)) ) che è Heliantus; resta il problema di come ottenere l'elenco delle altre specie appartentenenti al genere [Helianthus](https://it.wikipedia.org/wiki/Helianthus); e possibilmente ottenere per ciascuna di esse una immagine campione esemplificativa di un determinato [taxon](https://it.wikipedia.org/wiki/Taxon).

### Cosa vogliamo fare in questo tutorial
In questo tutorial vederem come il [web semantico](https://it.wikipedia.org/wiki/Web_semantico) ci permetta di 
**interrogare direttamente i dati** senza passare dalle pagine dei documenti e dal loro contenuto.

## Svolgimento del Tutorial
Per **interroragre direttamente i dati senza passare dalle pagine e dal loro contenuto** utilizzeremo
alcune funzionalità caratteristiche disponibili nel pacchetto opensource "incertae-sedis";

1. ricerca la specie botanica a cui si riferisce un generico nome
2. produci un elenco testuale corrispondente alla lista dei taxa che hanno lo stesso parent del taxa dato ( esempio della stessa specie )
3. visualizza un elenco di immagini per le principali specie    

[vedi lo **svolgimento** di questa prima parte](./tut-rpt-p1-it.md)

una volta ottenuto **l'identificatore della specie** possiamo ricavare facilmente
**l'identificatore del genere** di appartenenza.

dal'**identificatire genere** è possibile impostare una *query* per
ottenere tutti i taxa figli ( specie , sottospecie, varietà etc..);
questa query può essere espressa in SPARQL
e da essa possiamo ricavare un elenco dei "Reverse parent taxa"  

l'utility **rpt** ci permette di ottenere tale elenco direttamente da riga di comando: 
possiamo esportalo su un file grazie alla ridirezione standard dell'output
oppure possiamo contare quanti sono contando le linee che vengono prodotte da rpt
o filtrarlo con utility come *grep* o farne qualsiasi simile uso etc. etc..  

Con una query più complessa potremo anche chiedere se ci sono immagini che depictano le varie specie

Lo script **rpt.sh** conosce queste query e possiamo quindi chiedere lui di scaricare tutte le
immagini in una cartelle e di creare per noi una pagina indice..
