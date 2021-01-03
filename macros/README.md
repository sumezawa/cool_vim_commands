# XML to JSON conversion with Vim
Before we begin, we first want to figure out what a JSON entry looks like:

    {
    "name": "person's name",
    "email": "person's email"
    },

We also know that \<people\> will be parsed out from the XML with braces.

## Instructions:
Replace \<people\> with square brackets:

    ggC[<Esc>
    GC]<Esc>

You can replace all instances of something with :%s.<br/>
The following replaces all persons with curly braces, and a comma at the end of each entry.
The comma for the last entry has to be removed manually.

    :%s/<person>/{/g
    :%s/<\/person>/},/g

You can also use macros.
Macros record all of your inputs and commands, which is stored in a register, e.g. 'r'.
The commands stored in 'r' can be called with @r and it repeats the sequence.

The progress thus far is stored in <b>macro0.xml</b>.

A single \<name\> entry requires the following sequence of commands to be made into the JSON syntax:

    ^r"f>s": "<Esc>f<C"<Esc>

The above line does:
- ^ (go to beginning of line)
- r" (replace one character with '"', remains in normal mode)
- f\> (find first instance of '>' in the current line)
- s": " (delete character '>' and replace with '": "')
- \<Esc\> (enter normal mode)
- f\< (find first instance of '\<' in the current line)
- C" (delete until the end of the line after '\<' and replace with '"')
- \<Esc\> (enter normal mode)

To store this in a macro, we begin with 'q', a letter of our choice, and end recording with another q.

    qa^r"f>s": "<Esc>f<C"<Esc>q

We stored this sequence in register 'a'.

Macros can be nested, which means we can call this macro in 'a' in another macro (e.g. 'b'),
which we will do to modify each pair of \<name\> and \<email\>.

    Start from <name>
    qb@aA,<Esc>j@ajjjq

The above line does:
- qb (begin recording sequence in register b)
- @a (start macro in register a, for name)
- A, (add a comma after the name is re-formatted)
- j (go do one line)
- @a (start macro in register a, for email)
- jjj (go down three lines to the next name)
- q (end recording)

Finally, we can do something like:

    1000@b

to call the 'b' macro until the end of the file. We have now successfully converted the XML to JSON.

### instructions made by sumezawa with help from the [MIT Missing Semester](https://missing.csail.mit.edu/2020/editors/#macros) lecture notes for Vim.
