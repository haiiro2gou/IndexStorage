#> indexstorage:array/core/sort/ascend/loop
# @within function
#   indexstorage:array/core/sort/ascend/
#   indexstorage:array/core/sort/ascend/loop

# 代入していく
    execute if score #Value1 IndexStorage <= #Value2 IndexStorage run function indexstorage:array/core/sort/ascend/l
    execute if score #Value2 IndexStorage <= #Value1 IndexStorage run function indexstorage:array/core/sort/ascend/r
# 末尾の中身がなければ次の配列に
    execute unless data storage indexstorage:core temp.Desc[-1][-1] unless data storage indexstorage:core temp.Desc[-2][-1] run function indexstorage:array/core/sort/ascend/shift
# 配列が残っていればループ
    execute if data storage indexstorage:core temp.Desc[-1] run function indexstorage:array/core/sort/ascend/loop
