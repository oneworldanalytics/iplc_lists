
# Indigenous Peoples and Local Communities Languages

<!-- badges: start -->
<!-- badges: end -->

The goal of the project is to identify the appearance of language names in:

- scientific texts from OpenAlex
- web data (C4 and later MADLAD or similar)

### Datasets

There are a range of language datasets available. Many, but not all, link to the ISO-639 standard for language designations.

- the International standard is ISO-639 (see folder). In ISO-639 a language is given a three letter code and then there are variations of that language that are concatenated. They should be deconcatenated preserving the language code. Note also that the language list is a full language list and so will include dominant languages such as English, German, Spanish and so on. It may make sense to simply join to texts on words as is and filter out the very large language results later. See this [wikipedia article](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) for details.
- native_land digital at [https://native-land.ca/](https://native-land.ca/) maintains a map of indigenous territories and an index of indigenous languages linked to that map. It is good and interesting. There is an API that we could potentially use. The languages list may differ from the ISO standard and those differences should be captured and accommodated in the output.
- endangered languages project has a very nice map (!) of languages worldwide and a downloadable dataset (folders is endangered languages datase) see [https://www.endangeredlanguages.com/#/3/6.570/14.956/0/100000/0/low/mid/high/unknown](https://www.endangeredlanguages.com/#/3/6.570/14.956/0/100000/0/low/mid/high/unknown)
- UNESCO Atlas. UNESCO is the host of the United Nations International Decade of Indigenous Languages. Details here: [https://en.wal.unesco.org/]() 
- The guardian has a cleanish looking list of language names from the UNESCO Atlas that can be found here: [https://www.theguardian.com/news/datablog/2011/apr/15/language-extinct-endangered#data](https://www.theguardian.com/news/datablog/2011/apr/15/language-extinct-endangered#data).

### Issues to consider

1. Language names may contain non-ascii characters that could be difficult to search.
2. Language names normally have more than one written form (synomyms). Do not assume that the dominant form is the form commonly accepted by speakers (or that there is actually an agreed form of writing a language name). Use the ISO standard code where possible to link known synonyms onto a language code.
3. It is important to use the variants of the form and to be able to match to a code (as entity_id) for the purposes of aggregation.
4. Language names are often, but not always, the names of indigenous, tribal or aboriginal peoples (the use of terms can vary around the world). Those names may have a variety of other uses such as place names and person names (e.g. surnames) or other uses (e.g. some type of common name)
5. Some names may encompass more than one language group (rightly or wrongly). 
6. Some names may be offensive because they are external names given to language speakers by others (not the speakers themselves) or are believed to have origins in derogatory terms (e.g. Eskimo). However, some names such as Eskimo may also be enshrined in legislation and may or may not be regarded in the same way by all speakers. Eskimo is also an example of point 5 (as is the derogatory Bushmen or also derogatory Pygmies for a range of different languages and societies in central Africa). Where possible use the autodenomination if known. Where a language term is revealed to be offensive during the research, make a note so this can be flagged in the data. 

