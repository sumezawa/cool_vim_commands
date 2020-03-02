# Cool Commands

cw = delete word on cursor, switch to insert mode

## ONE FOR TWO: These are the commands that can be used one for two:

C = c$ = change whole line

s = cl = delete character on cursor, switch to insert mode

S = ^C = go to the beginning of text, change whole line

I = ^i = go to beginning of text, insert mode

A = $a = go to end of line, insert mode append

o = A<CR> = newline below, insert mode 

O = ko = newline above, insert mode

## FIND AND REPLACE:

:,$s/old/new/gc -> find "old" and replace it with "new", from current line, for all matches, asking for confirmation

:%s/old/new/gc -> find "old" and replace it with "new", from beginning of file, for all matches, asking for confirmation
