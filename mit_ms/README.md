# XML to JSON conversion with Vim
Before we begin, we first want to figure out what a JSON entry looks like:

    \{
    "name": "person's name",
    "email": "person's email"
    \},

We also know that \<people\> will be parsed out from the XML with braces.

## Instructions:
Replace \<people\> with square brackets;

:%s/\<people\>/[/g<br/>
:%s/\<\/people\>/]/g<br/>

Replace \<person\> with braces:

:%s/\<person\>/{/g<br/>
:%s/\<\/person\>/}/g<br/>

We can keep doing these search and replace operations, but we can also use macros.
We find an instance of \<name\> or \<email\> and and execute the commands until the end of the file.



### instructions made by sumezawa with help from tips from the bottom link.
### Example file taken from [MIT Missing Semester](https://missing.csail.mit.edu/2020/editors/#macros)
