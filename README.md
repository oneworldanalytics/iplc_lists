
# Indigenous Peoples and Local Communities Languages Datasets

<!-- badges: start -->
<!-- badges: end -->

The goal of the project is to:

- compile available data on indigenous languages as a potential contribution to work on TK indicators

- Explore, using existing internal resources, whether it is possible to make digital texts that reference these languages visible. The expectation is that initially the data may be extremely noisy. We can focus initially on scientific literature and then if that works out on web snapshot data.

### Datasets

There are a range of language datasets available. Many, but not all, link to the ISO-639-3 standard for language designations (developed by SIL International and published as Ethnologe).

- the International standard is ISO-639-3 (see folder). In ISO-639-3 a language is given a three letter code and then there are variations of that language that are concatenated. They should be deconcatenated preserving the language code. Note also that the language list is a full language list and so will include major languages such as English, German, Spanish and so on. It may make sense to simply join to texts on words as is and filter out the very large language results later. See this [wikipedia article](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) for details.
- Native Land Digital at [https://native-land.ca/](https://native-land.ca/) maintains a map of indigenous territories and an index of indigenous languages linked to that map. It is good and interesting. There is an API that we potentially be used. The languages list may differ from the ISO standard and those differences would need to be captured and accommodated in the output.
- The Endangered Languages Project has a very nice map (!) of languages worldwide and a downloadable dataset (folder is endangered languages dataset) see [https://www.endangeredlanguages.com/#/3/6.570/14.956/0/100000/0/low/mid/high/unknown](https://www.endangeredlanguages.com/#/3/6.570/14.956/0/100000/0/low/mid/high/unknown). The languages map may possibly originate from the World Atlas of Language Structures Online below.
- UNESCO Atlas. UNESCO is the host of the United Nations International Decade of Indigenous Languages. Details here: [https://en.wal.unesco.org/](https://en.wal.unesco.org/) 
- The Guardian has a cleanish looking list of language names from the UNESCO Atlas that can be found here: [https://www.theguardian.com/news/datablog/2011/apr/15/language-extinct-endangered#data](https://www.theguardian.com/news/datablog/2011/apr/15/language-extinct-endangered#data).
- [The World Atlas of Language Structures Online](https://wals.info/languoid) includes a table with coordinates and countries and the ISO and WALs codes for language structures. It is an important resource (maintained by 56 authors) under a CC-BY licence with. There is a zenodo repository for the data at [https://zenodo.org/records/7385533](https://zenodo.org/records/7385533). That data is now contained in `/cldf-datasets`. Note that inside the cldf folder the `languages.csv` file includes the coordinates. Also note that they group the languages in terms of family and genus and furthermore that they aggregate at a higher level than the ISO (Ethologue) data above which may give the impression there are less names when in practice they are aggregated at a higher level. That requires exploration.  

### Issues to consider

1. Language names may contain non-ascii characters that could be difficult to search.
2. Language names normally have more than one written form (synomyms). Do not assume that the dominant form is the form commonly accepted by speakers (or that there is actually an agreed form of writing a language name). Use the ISO standard code where possible to link known synonyms onto a language code.
3. It is important to use the variants of the form and to be able to match to a code (as entity_id) for the purposes of aggregation.
4. Language names are often, but not always, the names of indigenous, tribal or aboriginal peoples (the use of terms can vary around the world). Those names may have a variety of other uses such as place names and person names (e.g. surnames) or other uses (e.g. some type of common name)
5. Some names may encompass more than one language group (rightly or wrongly). 
6. Some names may be offensive because they are external names given to language speakers by others (not the speakers themselves) or are believed to have origins in derogatory terms (e.g. Eskimo). However, some names such as Eskimo may also be enshrined in legislation and may or may not be regarded in the same way by all speakers. Eskimo is also an example of point 5 (as is the derogatory Bushmen or also derogatory Pygmies for a range of different languages and societies in central Africa). Where possible use the autodenomination if known. Where a language term is revealed to be offensive during the research, make a note so this can be flagged in the data. 

### Issues to Consider for Indexing

It is likely that: 

- The results will be extremely noisy and require extensive cleaning. It may be necessary to designate results with clean level (e.g. _raw, _clean or add numeric levels). The language code should be appended e.g. en_clean etc.
- The results may contain material that could be considered offensive or harmful by indigenous readers (or readers in general) although for web data our starting point is cleaned up data (offensive language removed). A notice should be added to data warning readers of this possibility. For indigenous readers the presence of names of deceased persons may be a particular issue. The AIATSIS warning notice may be useful for this purpose.
- Splitting the results by language (starting point will be English only) will become important if this all proves useful
- Initial results to be reviewed with indigenous specialists to identify possible ways forward. An important starting point would be to consult with the native-lands and endangered languages online projects. 
- Can the literature and web data be clustered onto language name on a map (in the first instance)

