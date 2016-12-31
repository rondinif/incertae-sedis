# Svolgimento
Questo è un esercizio facilmente risolvibile avendo
la possibilità di interrograre una base dati strutturata;
un normale motore di ricerca full-text o per immagini ritornerebbe risultati troppo vaghi e imprecisi
la lettura "manuale" di documenti poco o per nulla strutturati e la relativa ricerca
manuale dei collegamenti alle pagine delle specie dello stesso genere
potrebbe richiedere l'impiego parecchio tempo con scarsissimo
valore aggiunto al risultato che possiamo ottenere accedendo direttamente ad una base dati.

wikidata e/o dbpedia rappresentano questo tipo di base dati.

La prima cosa che ci serve sapere è la chiave di ricerca che nel nostro caso
può essere il codice dell'entità associata alla specie di nostro interesse
o al suo genere di appartenenza.

https://www.wikidata.org/w/api.php?action=query&format=json&meta=siteinfo&siprop=interwikimap

https://www.wikidata.org/w/index.php?search=Topinanbur
``` html
<div class='searchresults'>
    <p class="mw-search-createlink"></p>
    <ul class='mw-search-results'>
        <li>
            <div class='mw-search-result-heading'>
                <a href="/wiki/Q146190" title="‎Jerusalem artichoke‎ | ‎species of plant‎" data-serp-pos="0">
                    <span class="wb-itemlink">
                        <span class="wb-itemlink-label" lang="en" dir="ltr">Jerusalem artichoke</span>
                        <span class="wb-itemlink-id">(Q146190)</span>
                    </span>
                </a>:
                <span class="wb-itemlink-description">species of plant</span>
            </div>
            <div class='mw-search-result-data'>63 KB (400 words) - 16:22, 14 October 2016</div>
        </li>
    </ul>
    <div class="mw-search-visualclear"></div>
</div>
```

``` bash
curl -X GET "http://de.wikipedia.org/w/api.php?action=parse&format=json&title=Topinambur&prop=properties&utf8=1&text"
```
``` json
{
  "parse": {
    "title": "Topinambur",
    "pageid": 5258773,
    "properties": [
      {
        "name": "wikibase_item",
        "*": "Q146190"
      }
    ]
  }
}
```
