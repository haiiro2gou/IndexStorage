#> indexstorage:array/core/sort/descend/l
# @within function indexstorage:array/core/sort/descend/loop

# 代入
    data modify storage indexstorage:core temp.Desc[-1] append from storage indexstorage:core temp.Asc[-1][-1]
# 消す
    data remove storage indexstorage:core temp.Asc[-1][-1]
# 次に回す
    execute store result score #Value1 IndexStorage run data get storage indexstorage:core temp.Asc[-1][-1]
    execute unless data storage indexstorage:core temp.Asc[-1][-1] run scoreboard players set #Value1 IndexStorage -2147483648
