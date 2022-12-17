function bubbleSort($array){
    for ($i = 0; $i -lt $newArray.Length; $i++){
        $hasSwapped = $false
        for ($j = 0; $j -lt $newArray.Length-1; $j++){
            if ($array[$j] -gt $array[$j + 1]){
                swapValues -arrayToModify $array -p1 $j -p2 ($j+1)
                $hasSwapped = $true
            }
        }
        if (!$hasSwapped) {
            break
        }
    }
}

function swapValues($arrayToModify, $p1, $p2){
    $savedValue = $arrayToModify[$p2]
    $arrayToModify[$p2] = $arrayToModify[$p1]
    $arrayToModify[$p1] = $savedValue
}

$newArray = 8,4,6,7,2,1,3,-5,0,5,49,9
bubbleSort -array $newArray
write-host $newArray
