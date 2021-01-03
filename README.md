![](bruh.png)

# Cool Commands
### MVP = Most Valuable ... Player?
### HM = Honourable Mention


:h(any vim command, or keyword) <b>(HM 2020)</b>
### All hail the vim manual (and its keyword search)

:sp = opens a new screen <b>(MVP 2020)</b>

gv = retrieve previously highlighted visual-mode selection

\<C-d\> = go down a buffer (fast j)

\<C-u\> = go up a buffer (fast k)

cw = delete word on cursor, switch to insert mode

% = go to matching { or }, ( or ), [ or ]	

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

:s/old/new/gc = find "old" and replace it with "new", only current line, for all matches, (c = confirm)
