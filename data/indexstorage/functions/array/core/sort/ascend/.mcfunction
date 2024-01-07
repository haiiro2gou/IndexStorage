#> indexstorage:array/core/sort/ascend/
# @within function
#   indexstorage:array/sort/ascend
#   indexstorage:array/core/sort/
#   indexstorage:array/core/sort/descend/

# 値を取得
    execute store result score #Value1 IndexStorage run data get storage indexstorage:core temp.Desc[-1][-1]
    execute store result score #Value2 IndexStorage run data get storage indexstorage:core temp.Desc[-2][-1]
    execute unless data storage indexstorage:core temp.Desc[-2][-1] run scoreboard players set #Value2 IndexStorage 2147483647
# 初期化
    data modify storage indexstorage:core temp.Asc set value [[]]
# ループを発火
    function indexstorage:array/core/sort/ascend/loop
# 降順にソート
    execute if data storage indexstorage:core temp.Asc[1] run function indexstorage:array/core/sort/descend/
