[
// Either load the file time_ampmto24.inc during server or site startup,
// in server or site library, or include it.  Choose one method.
// I recommend site startup.
// include('time_ampmto24.inc'); // optional loading method
]
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>time_ampmto24 by Steve Piercy</title>
    <link rel="stylesheet" type="text/css" media="screen" href="jquery.timeentry.css" />
</head>
<body>

<h1>time_ampmto24 Demo</h1>

<p>
Convert a time with an AM/PM designation to 24-hour time.
</p>

<form action="[response_filepath]" method="post">
    <div>
        <label>Time</label>
        <input placeholder="hh:mm AM|PM" name="time" id="time" type="text" value="[action_param('time')]">
    </div>
    <div>
        <input name="submit" id="submit" type="submit" value="submit" class="button" />
    </div>
</form>

[if(action_param('submit') != '')]
<h2[time_ampmto24(action_param('time'))->beginswith('Value') ? ' style="color:red;"']>
[time_ampmto24(action_param('time'))]
</h2>
[/if]

<p>Read the article <a href="/time_ampmto24-lasso-8-custom-tag-converts-a-time-with-an-ampm-designation-to-24-hour-time.html">time_ampmto24 - Lasso 8 custom tag converts a time with an AM/PM designation to 24-hour time</a>.</p>

<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript" src="jquery.plugin.js"></script>
<script type="text/javascript" src="jquery.timeentry.js"></script>
<script type="text/javascript" language="javascript" charset="utf-8">
$(function () {
    $('#time').timeEntry({ampmPrefix: " ", spinnerImage: ""});
});
</script>

</body>
</html>
