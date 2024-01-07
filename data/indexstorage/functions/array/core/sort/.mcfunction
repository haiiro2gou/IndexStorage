#> indexstorage:array/core/sort/
# @within function indexstorage:array/sort/*

# 値の初期化
    data modify storage indexstorage:core temp.Desc set value []
    scoreboard players set #Value2 IndexStorage -2147483648
    execute if data storage indexstorage:core Array[-1] run function indexstorage:array/core/sort/loop
# 昇順にソート
    function indexstorage:array/core/sort/ascend/
