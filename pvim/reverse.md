vim repeat/reverse command chart, based on one from PVim

Intent | Act | Repeat | Reverse 
--- | --- | --- | ---
general change | {any} | . | u
find next char | f{char}/t{char} | ; | ,
find prev char | F{char}/T{char} | ; | ,
next match | /{pattern}<CR> | n | N
prev match | ?{pattern}<CR> | n | N
sed substitution | :s/old/new | & | u
macros | qa{any}q | @a | u

