# XML to JSON conversion with Vim
Before we begin, we first want to figure out what a JSON entry looks like:

    \{
    "name": "person's name",
    "email": "person's email"
    \},

We also know that \<people\> will be parsed out from the XML with braces.

## Instructions:
Parse out \<people\>

:%s/\<people\>/{/g
:%s/\<\/people\>/}/g

### instructions made by sumezawa with help from tips from the bottom link.
### Example file taken from [MIT Missing Semester](https://missing.csail.mit.edu/2020/editors/#macros)
