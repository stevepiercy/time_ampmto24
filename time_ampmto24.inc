[
define_tag('time_ampmto24', -required='t', -copy, -description='Converts times formatted as hh:mm AM/PM to 24-hour format.');
    if(string_findregexp(#t, -find='^\\d{2}:\\d{2} [A|P]M$')->size!=1);
        return('Value is not in the proper time format of "hh:mm AP".');
    /if;
    #t=#t->split(' ');
    if(#t->get(2) == 'PM' && !#t->get(1)->beginswith('12'));
        #t=#t->get(1);
        #t=date_add(date('2010-01-01 '+#t), -hour=12);
    else;
        #t=#t->get(1);
        #t=date('2010-01-01 '+#t);
    /if;
    #t=#t->format('%T');
    return(#t);
/define_tag;
]
