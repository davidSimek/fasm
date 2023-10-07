macro strD name,value,sufix
{
    name db value, sufix
    name#_len = $ - name
}

macro resD name,bytes
{
    name rb bytes
    name#_len = $ - name
}
