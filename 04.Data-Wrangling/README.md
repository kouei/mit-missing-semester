# Note
1. [regular expressions 101](https://regex101.com/) is a helpful website to help you understand the meaning of a specific expression  
2. [RegexOne](https://regexone.com) is a good place to practice regular expressions.  
3. Use `$ wc -l` to count number of lines in a file.
4. Use `uniq` to remove adjacent duplicated lines from a file. That means you need to call `sort` first.
5. Use `$ paste -sd,` to combine multiple lines into a single line which is separated by ","
6. `$ xargs [COMMAND]` will take its input and send to COMMAND as its arguments.

# Exercise
1. Additional Problem 1: <kbd>^(\d+,)*-?\d+(\.\d+)?(e\d+)?$</kbd>
   Additional Problem 2: `(1 )?\(?(\d{3})\)?[-\d\s]*`  
   Additional Problem 3: `([^\+]+)(\+.*)?@.*`  
   Additional Problem 4: `<([a-z]+)( [^>]*)?>.*</\1>`  
   Additional Problem 5: `(.*)\.(jpg|png|gif)$`  