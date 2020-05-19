# Notes
1. [regular expressions 101](https://regex101.com/) is a helpful website to help you understand the meaning of a specific expression  
2. [RegexOne](https://regexone.com) is a good place to practice regular expressions.  
3. Use `$ wc -l` to count number of lines in a file.
4. Use `$ sort [FILE] | uniq` to sort and remove adjacent duplicated lines from a file.  
Note that in order to make the uniq work correctly, the `sort` must be called first.  
5. Use `$ cat FILE | tr "[:upper:]" "[:lower:]"` to transform all characters in FILE to lowercase.  
6. Use `$ paste -sd,` to combine multiple lines into a single line which is separated by ","
7. `$ xargs [COMMAND]` will take its input and send to COMMAND as its arguments.

# Exercises
## Exercise 1
Additional Problem 1: `^(\d+,)*-?\d+(\.\d+)?(e\d+)?$`  
Additional Problem 2: `(1 )?\(?(\d{3})\)?[-\d\s]*`  
Additional Problem 3: `([^\+]+)(\+.*)?@.*`  
Additional Problem 4: `<([a-z]+)( [^>]*)?>.*</\1>`  
Additional Problem 5: `(.*)\.(jpg|png|gif)$`  
Additional Problem 6: `^\s*([^\s].*)$`  
Additional Problem 7: `at .*\.([^\(]+)\((.*):(\d+)\)`  
Additional Problem 8: `([^:/]*)://([^:/]*)(:(\d+))?/`  

## Exercise 2
**Find the number of words (in /usr/share/dict/words) that contain at least three as and don’t have a 's ending.**  
  
`$ cat /usr/share/dict/words | tr "[:upper:]" "[:lower:]" | grep -E "^([^a]*a){3}.*$" | grep -Ev "'s$" | wc -l`  
  
  
**What are the three most common last two letters of those words?**  
`$ cat /usr/share/dict/words | tr "[:upper:]" "[:lower:]" | grep -E "^([^a]*a){3}.*$" | grep -Ev "'s$" | sed -E "s/.*([a-z]{2})$/\1/" | sort | uniq -c | sort -nrk1,1 | head -n3`  
  
  
**How many of those two-letter combinations are there?**  
`$ cat /usr/share/dict/words | tr "[:upper:]" "[:lower:]" | grep -E "^([^a]*a){3}.*$" | grep -Ev "'s$" | sed -E "s/.*([a-z]{2})$/\1/" | sort | uniq | wc -l`  
  
  
**which combinations do not occur?**  
`$ cat /usr/share/dict/words | tr "[:upper:]" "[:lower:]" | grep -E "^([^a]*a){3}.*$" | grep -Ev "'s$" | sed -E "s/.*([a-z]{2})$/\1/" | sort | uniq > a`  
  
`$ echo {a..z}{a..z} | sed -E "s/ /\n/g" > b`  
  
`$ diff a b`  


## Exercise 3
Use `sed -i FILE` to make the substitution inplace.  

## Exercise 4
Omitted  

## Exercise 5
Omitted  

## Exercise 6
Omitted  