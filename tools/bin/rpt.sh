#!/usr/bin/env bash -
#title          :rpt.sh 
#description    :reverse parent taxon
#author         :Copyright (c) 2016, Franco Rondini All rights reserved.
#date           :20161023
#version        :0.0.1  
#usage          :./rpt.sh <wd:entity>
#note           :remember to $ chmod +x rpt.sh the first time you use.it 
#               :@see README.md for         
#bash_version   :3.2.57(1)-release
#============================================================================
args=("$@")
if [[ -z "${args[0]}" ]]; then
    echo "Usage: $0 <wd:entity>" 
    exit
else
    # Q2853420
    q="${args[0]}"
    response_file="./${q}-response.json"
    
    # bidirectional 
    # url="https://query.wikidata.org/sparql?format=json&query=SELECT%20?item%20?itemLabel%20?linkTo%20%7B%7B%20wd:${q}%20wdt:P171*%20?item%20%7D%20UNION%20%7B%20?item%20wdt:P171*%20wd:${q}%20%7D%20OPTIONAL%20%7B%20?item%20wdt:P171%20?linkTo%20%7D%20SERVICE%20wikibase:label%20%7Bbd:serviceParam%20wikibase:language%20%22en%22%20%7D%7D"
    
    # reverse 
    url="https://query.wikidata.org/sparql?format=json&query=SELECT%20?item%20?itemLabel%20?linkTo%20%7B%20%20?item%20wdt:P171*%20wd:${q}%20%20OPTIONAL%20%7B%20?item%20wdt:P171%20?linkTo%20%7D%20%20SERVICE%20wikibase:label%20%7Bbd:serviceParam%20wikibase:language%20%22en%22%20%7D%7D"

    # echo ${q}
    # echo ${response_file}
    # echo ${url}
    curl -X GET -H "Content-Type: application/json" -H "Cache-Control: no-cache" "${url}" > ${response_file}
    grep -A1 literal ${response_file} | grep value | sed $'s/.*"value" : "//g' | tr '"' ' '
fi
#============================================================================
# @see: https://github.com/rondinif/incertae-sedis/blob/master/README.md
# ---------------------------------------------------------------------------
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.