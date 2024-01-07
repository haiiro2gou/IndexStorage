#> indexstorage:array/core/sort/descend/
# @within function
#   indexstorage:array/sort/descend
#   indexstorage:array/core/sort/
#   indexstorage:array/core/sort/ascend/

# 値を取得
    execute store result score #Value1 IndexStorage run data get storage indexstorage:core temp.Asc[-1][-1]
    execute store result score #Value2 IndexStorage run data get storage indexstorage:core temp.Asc[-2][-1]
    execute unless data storage indexstorage:core temp.Asc[-2][-1] run scoreboard players set #Value2 IndexStorage -2147483648
# 初期化
    data modify storage indexstorage:core temp.Desc set value [[]]
# ループを発火
    function indexstorage:array/core/sort/descend/loop
# 昇順にソート
    execute if data storage indexstorage:core temp.Desc[-2] run function indexstorage:array/core/sort/ascend/
