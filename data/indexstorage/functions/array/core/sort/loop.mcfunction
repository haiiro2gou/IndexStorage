#> indexstorage:array/core/sort/loop
# @within function
#   indexstorage:array/core/sort/
#   indexstorage:array/core/sort/loop

# 最後尾を取得
    execute store result score #Value1 IndexStorage run data get storage indexstorage:core Array[-1]
# 大小比較をして格納
    execute if score #Value2 IndexStorage < #Value1 IndexStorage run data modify storage indexstorage:core temp.Desc append value []
    data modify storage indexstorage:core temp.Desc[-1] append value 0
    execute store result storage indexstorage:core temp.Desc[-1][-1] int 1 run scoreboard players operation #Value2 IndexStorage = #Value1 IndexStorage
# ループ
    data remove storage indexstorage:core Array[-1]
    execute if data storage indexstorage:core Array[-1] run function indexstorage:array/core/sort/loop