grammar Mdown;


@header {
         package com.gautamk.mdown;
         }


H1: '# ' TEXT;
H2: '## ' TEXT;
H3: '### ' TEXT;
H4: '#### ' TEXT;
H5: '##### ' TEXT;

P: '\n' TEXT '\n';

EM: '*' TEXT '*';
B: '**' TEXT '**'[a-zA-Z0-9]+
 | '__' TEXT '__'
 ;

CODE: '`' TEXT '`';

LINK: '[' TEXT ']' WHITESPACE* '(' TEXT ')';

TEXT: (ANYCHAR | WHITESPACE)+;

WHITESPACE: [ \r\t\n]+;


fragment NEWLINE : ('\r'? '\n');
fragment ANYCHAR : .;