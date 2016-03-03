use v6;

grammar IO::Prompt::DateTime::Format {
    token TOP { ^^ <month> <separate_date> <day> <separate_date> <year> \s+ <hour> <separate_time> <minute> <separate_time> <second> }

    token separate_date { ['/'] }
    token separate_time { [':'] }

    token number { \d ** 1..2 }
    token number_big { \d ** 4 }

    token month { <number> }
    token day { <number> }
    token year { <number_big> }

    token hour { <number> }
    token minute { <number> }
    token second { <number> }
}
