# XML to JSON conversion with Vim
Before we begin, we first want to figure out what a JSON entry looks like:

    {
    "name": "person's name",
    "email": "person's email"
    },

We also know that \<people\> will be parsed out from the XML with braces.

## Instructions:
Replace \<people\> with square brackets:

    ggC[\<Esc\>
    GC]\<Esc\>

You can replace all instances of something with :%s.<br/>
The following replaces all persons with curly braces.

    :%s/\<person\>/{/g<br/>
    :%s/\<\/person\>/}/g<br/>

You can also use macros.
Macros record all of your inputs and commands, which is stored in a register, e.g. 'r'.
The commands stored in 'r' can be called with @r and it repeats the sequence.

The progress thus far is stored in 'macro0.xml'.

A single \<name\> entry requires the following sequence of commands to be made into the JSON syntax:

^r"f\>s": "\<Esc\>f\<C"\<Esc\>



\<email\> entries can be re-formatted with identical instructions as in \<name\>.




### instructions made by sumezawa with help from tips from the bottom link.
### Example file taken from [MIT Missing Semester](https://missing.csail.mit.edu/2020/editors/#macros)
