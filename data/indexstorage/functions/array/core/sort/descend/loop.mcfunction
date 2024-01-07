#> indexstorage:array/core/sort/descend/loop
# @within function
#   indexstorage:array/core/sort/descend/
#   indexstorage:array/core/sort/descend/loop

# 代入していく
    execute if score #Value1 IndexStorage >= #Value2 IndexStorage run function indexstorage:array/core/sort/descend/l
    execute if score #Value2 IndexStorage >= #Value1 IndexStorage run function indexstorage:array/core/sort/descend/r
# 末尾の中身がなければ次の配列に
    execute unless data storage indexstorage:core temp.Asc[-1][-1] unless data storage indexstorage:core temp.Asc[-2][-1] run function indexstorage:array/core/sort/descend/shift
# 配列が残っていればループ
    execute if data storage indexstorage:core temp.Asc[-1] run function indexstorage:array/core/sort/descend/loop
