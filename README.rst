time_ampmto24 - Lasso 8 custom tag converts a time with an AM/PM designation to 24-hour time
############################################################################################

Read the article `time_ampmto24 - Lasso 8 custom tag converts a time with an
AM/PM designation to 24-hour time
<http://www.stevepiercy.com/time_ampmto24-lasso-8-custom-tag-converts-a-time-with-an-ampm-designation-to-24-hour-time.html>`_.

Description
===========

``[time_ampmto24]`` converts a time with an AM/PM designation to 24-hour time.
This tag accepts a time formatted as ``hh:mm AM|PM``, and converts the time to
``hh:mm:ss`` 24-hour time format. This makes it easy to write the value to a
database.

Programmers needlessly make it awkward to enter times into forms, especially
when the time is broken into three select menus (hours, minutes, am/pm). Some
programmers are lazy and trust users to enter a time in a "correct" format,
but that leads to user errors. To mitigate the user interface issue, I use the
jQuery plugin, `Time Entry <http://keith-wood.name/timeEntry.html>`_.

Demo
====

`Demo <http://www.stevepiercy.com/lasso/time_ampmto24/>`_.

Usage
=====

.. code-block:: lasso

    <p>[time_ampmto24('07:00 AM')]</p>
    <p>[time_ampmto24('07:00 PM')]</p>
    <p>[time_ampmto24('07:00PM')]</p>
 
.. code-block:: text

    =>
    07:00:00
    19:00:00
    Value is not in the proper time format of "hh:mm AP".
    
Installation
============

Instructions for installing ``time_ampmto24`` are in the demo file
``time_ampmto24_demo/index.lasso``.
