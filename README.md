# Cool Commands

cw = delete word on cursor, switch to insert mode

## TWO IN ONE: These are commands that can be used two in one:

C = c$ = change whole line

s = cl = delete character on cursor, switch to insert mode

S = ^C = go to the beginning of text, change whole line

I = ^i = go to beginning of text, insert mode

A = $a = go to end of line, insert mode append <b>(MVP 2019)</b>

o = A\<CR\> = newline below, insert mode 

O = ko = newline above, insert mode

## FIND AND REPLACE:

:% = go to matching { or }, ( or ), [ or ]	<b>(MVP 2020)</b>

:,$s/old/new/gc = find "old" and replace it with "new", from current line, for all matches, asking for confirmation <b>(HM 2019)</b>

:%s/old/new/gc = find "old" and replace it with "new", from beginning of file, for all matches, asking for confirmation

:%s/<<\\\(\\S\\\)/ << \1/gc	<b>(HM 2020)</b>

> ## what the above command does:
> - matches any character(s) that is not whitespace
> - remembers the non-whitespace character(s)
> - refer to it and replace it with the new sequence
> 
> in this case the character replaced is '<<', and this command adds a bunch of much needed spaces in CS24 Lab Starter Codes.
>
> really nice to replace cout<<"ugh"<<"please"<\<endl; with
> cout << "ugh" << "please" << endl; 


