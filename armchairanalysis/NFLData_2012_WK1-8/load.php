<?php

// script may run longer than the typical timeout of 30-90 seconds
set_time_limit(600);

// Database settings -- change accordingly
define("DB_LOGIN", "your_login");
define("DB_PASSWORD", "your_password");
define("DB_NAME", "your_db_name");

// Path to csv folder (replace 'csv' with your own name if desired)
// Sample remote server path: /home/username/csv/
// Typical WAMP server path: c:/wamp/www/csv/
define ("CSV_FILE_PATH", "/home/username/csv/");
        
// Open a connection to the localhost database
@$db = mysqli_connect('localhost', DB_LOGIN, DB_PASSWORD, DB_NAME);
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

//define table names
$table[1] = "blocks";
$table[2] = "comps";
$table[3] = "convs";
$table[4] = "core";
$table[5] = "dbacks";
$table[6] = "defense";
$table[7] = "drives";
$table[8] = "fdowns";
$table[9] = "fgxp";
$table[10] = "fumbles";
$table[11] = "games";
$table[12] = "ints";
$table[13] = "kickers";
$table[14] = "kickoffs";
$table[15] = "knees";
$table[16] = "nohuddle";
$table[17] = "offense";
$table[18] = "oline";
$table[19] = "pass";
$table[20] = "penalties";
$table[21] = "players";
$table[22] = "punts";
$table[23] = "redzone";
$table[24] = "rush";
$table[25] = "sacks";
$table[26] = "safeties";
$table[27] = "scoring";
$table[28] = "shotgun";
$table[29] = "spikes";
$table[30] = "splays";
$table[31] = "tackles";
$table[32] = "team";

//create csvfile names
for ($i = 1; $i < 33; $i++) {
    $csvfile[$i] = CSV_FILE_PATH . strtoupper($table[$i]) . '.csv';
}

//load the data -- REPLACE INTO is used just in case the downloaded CSV files contain older records that require updating in your database
for ($i = 1; $i < 33; $i++) {
    mysqli_query($db, 'LOAD DATA LOCAL INFILE "' . $csvfile[$i] . '" REPLACE INTO TABLE ' . $table[$i] . ' FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY """" IGNORE 1 LINES');
}