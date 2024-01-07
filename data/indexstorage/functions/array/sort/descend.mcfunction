#> indexstorage:array/sort/descend
#
# 配列の要素を降順ソートします。
#
# @input
#   storage indexstorage:core Array: [int] @ N
#   配列データ
# @output
#   storage indexstorage:core Array: [int] @ N
#   降順にソートされた配列データ
# @public

# ソートを実行
    function indexstorage:array/core/sort/
    execute unless data storage indexstorage:core temp.Desc[-1] run function indexstorage:array/core/sort/descend/
    data modify storage indexstorage:core Array set from storage indexstorage:core temp.Desc[-1]
# リセット
    scoreboard players reset #Value1 IndexStorage
    scoreboard players reset #Value2 IndexStorage
    data remove storage indexstorage:core temp
