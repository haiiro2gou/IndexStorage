#> indexstorage:array/core/sort/ascend/shift
# @within function indexstorage:array/core/sort/ascend/loop

# 末尾2つを消す
    data remove storage indexstorage:core temp.Desc[-1]
    data remove storage indexstorage:core temp.Desc[-1]
# まだ残っていれば値を設定
    execute if data storage indexstorage:core temp.Desc[-1][-1] store result score #Value1 IndexStorage run data get storage indexstorage:core temp.Desc[-1][-1]
    execute if data storage indexstorage:core temp.Desc[-2][-1] store result score #Value2 IndexStorage run data get storage indexstorage:core temp.Desc[-2][-1]
    execute if data storage indexstorage:core temp.Desc[-1] run data modify storage indexstorage:core temp.Asc append value []
