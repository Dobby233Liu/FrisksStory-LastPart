str = argument0
nstr = ""
for (i = 0; i < string_length(str); i++){
randomize()
if (random(1) >= 0.85 && string_char_at(str, i) != " "){
nstr += ansi_char(random_range(32, 126))
}else{
nstr += string_char_at(str, i);
}
}
// insert garbage to the string to make sure textlen >= 50
if (string_length(nstr) < 50){
nstr += " "
for (i = 0; i < 50 - string_length(nstr); i++){
randomize()
nstr += ansi_char(random_range(32, 126))
}
}
return nstr
