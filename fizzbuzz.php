<!DOCTYPE html>
<html>
<body>
<?php
$dict = array(
  3 => "Fizz",  
  5 => "Buzz", 
);
$output = "";
for ($i = 1; $i <= 100; $i++) {
  $output = "";
  foreach( $dict as $key => $value ){
    if ($i % $key == 0) {
      $output .= $value;
    }
  }
  if ($output == "") {
    $output = $i;
  }
  echo "<div>$output</div>";
}
?>
</body>
</html>