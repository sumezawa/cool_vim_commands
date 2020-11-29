![](bruh.png)

# Cool Commands
### MVP = Most Valuable ... Player?
### HM = Honourable Mention


cw = delete word on cursor, switch to insert mode

% = go to matching { or }, ( or ), [ or ]	<b>(MVP 2020)</b>

## TWO IN ONE: These are commands that can be used two in one:

C = c$ = change whole line

s = cl = delete character on cursor, switch to insert mode

S = ^C = go to the beginning of text, change whole line

I = ^i = go to beginning of text, insert mode

A = $a = go to end of line, insert mode append <b>(MVP 2019)</b>

o = A\<CR\> = newline below, insert mode 

O = ko = newline above, insert mode

## FIND AND REPLACE:

:,$s/old/new/gc = find "old" and replace it with "new", from current line, for all matches, asking for confirmation <b>(HM 2019)</b>

:%s/old/new/gc = find "old" and replace it with "new", from beginning of file, for all matches, asking for confirmation

:s/old/new/gc = find "old" and replace it with "new", only current line, for all matches, (c = confirm)  <b>(HM 2020)</b>
:%s/<<\\\(\\S\\\)/ << \1/gc	

> ## what the above command does:
> - matches any character(s) that is not whitespace
> - remembers the non-whitespace character(s)
> - refer to it and replace it with the new sequence
> 
> This command adds a bunch of much-needed spaces in between the less-than sign in CS24 Starter Codes.
