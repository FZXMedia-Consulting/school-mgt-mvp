<?php
echo dirname(__FILE__);
echo "<br>";
echo $_SERVER['DOCUMENT_ROOT'];
echo "<br>";
echo dirname(__FILE__, 1);
echo "<br>";
print_r($pathInPieces = explode(DIRECTORY_SEPARATOR , __FILE__));
echo "<br>";
echo $pathInPieces[3].DIRECTORY_SEPARATOR;
echo "<br>";
echo 'Current PHP version: ' . phpversion();

echo "<br>";
$testGD = get_extension_funcs("gd"); // Grab function list 
if (!$testGD){ echo "GD not even installed."; exit; }
echo"<pre>".print_r($testGD,true)."</pre>";

phpinfo();
?>