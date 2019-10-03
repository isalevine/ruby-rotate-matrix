matrix = [ [1, 2, 3], [4, 5, 6], [7, 8, 9] ]
rotations = 1

# [ [1, 2, 3]           
#   [4, 5, 6]
#   [7, 8, 9] ]

expected_output = [ [1, 4, 3], [8, 5, 2], [7, 6, 9] ]

# [ [1, 4, 3]
#   [8, 5, 2]
#   [7, 6, 9] ]


def rotate(matrix, rotations, expected_output)
    last_index = matrix.length - 1
    max_depth = (matrix.length / 2).floor
    depth = 0
    # recursively call this with a 'depth' variable to determine right_num index (replace -1)
    matrix[0].each_with_index do |num, i|
        if i != 0 && i != last_index
            top_num = num   # matrix[0][i]
            right_num = matrix[i][-1]           # matrix[i][depth - 1]  ??
            bot_num = matrix[-1][-i - 1]
            left_num = matrix[-i - 1][0]            # matrix[i][depth]      ??

            matrix[0][i] = left_num     # top
            matrix[i][-1] = top_num     # right
            matrix[-1][-i - 1] = right_num  # bottom
            matrix[-i - 1][0] = bot_num     # left
        end
    end

    if matrix == expected_output
        puts <<-SUCCESS
            SUCCESS!!

            matrix:
            #{matrix}

            expected_output:
            #{expected_output}
        SUCCESS
    else
        puts <<-FAIL
            Failed...

            matrix:
            #{matrix}

            expected_output:
            #{expected_output}
        FAIL
    end
end

rotate(matrix, rotations, expected_output)