# Incertae Sedis
Experimental testbeds to produce some witty program

## ALM Proof of Concept (PoC)
basic guidelines to outline the procedures that govern the Change Management process of 
https://rondinif.github.io/incertae-sedis/ 

### Cloning repo **gh-pages** branch 
``` bash
cd ~/projects/rondinif
git clone https://github.com/rondinif/incertae-sedis.git
cd incertae-sedis
git checkout gh-pages
```

### Development & Live Debug 
``` bash 
cd ~/projects/rondinif/incertae-sedis
npm run start-debug
code .
``` 
the npm script start-debug remove static bundle.js and 
launch the **webpack-dev-server** in **debug mode** ( i.e: serves also **sourcemaps** in ```webpak://.``` )
this is like to have a fresh *bundle.js* in ```/incertae-sedis/bundle.js``` that can be loaded and executed by ```/index.html```
and let the SPA working.

In vscode you can view or edit the code, setting or removing break points and so on.
Each time you change and save sources the process running **webpack-dev-server** will automatically 
trigger a re-build and, when no error are encountred, serve the new ```bundle.js```    

Thanks to [source maps](https://developers.google.com/web/tools/chrome-devtools/javascript/source-maps) 
served by **webpack-dev-server** 
it's possible to debug in [chrome-devtools](https://developers.google.com/web/tools/chrome-devtools/)

Debugging in vscode it's also possible thanks to https://github.com/Microsoft/vscode-chrome-debug , 
a VS Code extension to debug your JavaScript code in the Google Chrome browser. 
we assume the **msjsdiag.debugger-for-chrome** estension installed: 
before starting the debug session in vscode I prefer to quit **Google Chrome**  then I launch it from vscode by:  

-View: Show Debug [shift-command-D]
- select debugging profile 
    - "Launch Chrome against localhost, with sourcemaps"
    - Debug: Start Debugging [F5]

### Preview in localhost static web-server  
This is an optional step: 

``` bash 
cd ~/projects/rondinif/incertae-sedis
npm run build-commit
cd ..
python -m SimpleHTTPServer
Serving HTTP on 0.0.0.0 port 8000 ...
```
Open a browser and navigate on http://localhost:8000/incertae-sedis
some know issues esists related to using this way to preview the site
but sometime has helped me to figure out how this single page webapplication 
could behave on a static http webserver. 

### Preview in localhost static web-server  
``` bash
cd ~/projects/rondinif/incertae-sedis
npm run build-commit
git add . 
git commit -m "comment the changes here"
git push origin gh-pages
# if https://rondinif.github.io/incertae-sedis/ does not reflect the new changes: 
git push origin :gh-pages
git push origin gh-pages
```

# Live examples
https://sites.google.com/site/stillunamed/lab01/incertae-sedis-ghpages
- [home: http://rondinif.github.io/incertae-sedis][home]
    - [example: http://rondinif.github.io/incertae-sedis][example]  
        - [two-deep: https://rondinif.github.io/incertae-sedis/example/two-deep?field1=foo&field2=bar#boom!][two-deep]  

<!--  http://username.github.io/repository. -->
[home]: http://rondinif.github.io/incertae-sedis
[example]: https://rondinif.github.io/incertae-sedis/example
[two-deep]: https://rondinif.github.io/incertae-sedis/example/two-deep?field1=foo&field2=bar#boom!
