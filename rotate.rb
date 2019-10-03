# #   TEST 1
# # ===========
# rotations = 1

# matrix = [ [1, 2, 3],           
#            [4, 5, 6],
#            [7, 8, 9] ]

# expected_output = [ [1, 4, 3],
#                     [8, 5, 2],
#                     [7, 6, 9] ]



# #   TEST 2
# # ===========
# rotations = 1

# matrix = [ [1, 2, 3, 4],           
#            [5, 6, 7, 8],
#            [9,10,11,12], 
#            [13,14,15,16] ]

# expected_output = [ [ 1, 9, 5, 4],           
#                     [14, 6, 7, 2],
#                     [15,10,11, 3], 
#                     [13,12, 8,16] ]



#   TEST 3
# ===========
rotations = 1

matrix = [ [ 1, 2, 3, 4, 5],           
           [ 6, 7, 8, 9,10],
           [11,12,13,14,15], 
           [16,17,18,19,20], 
           [21,22,23,24,25] ]

expected_output = [ [ 1,16,11, 6, 5],           
                    [22, 7,12, 9, 2],
                    [23,18,13, 8, 3], 
                    [24,17,14,19, 4], 
                    [21,20,15,10,25] ]


def rotate(matrix, rotations, expected_output)
    last_index = matrix.length - 1
    max_depth = ((matrix.length - 1) / 2).floor
    depth = 0
    while depth < max_depth
        # recursively call this with a 'depth' variable to determine right_num index (replace -1)
        matrix[depth].each_with_index do |num, i|   # refactor to just use .each_index?
            first_index = depth + 1
            last_index = matrix[depth].length - (depth + 2)

            # puts first_index
            # puts i
            # puts last_index
            # puts
            
            if first_index <= i && i <= last_index
                top_num = num                 
                right_num = matrix[i][(depth + 1) * -1]    
                bot_num = matrix[(depth + 1) * -1][-i - 1]
                left_num = matrix[-i - 1][depth]

                # puts <<-NUMS
                #     index: #{i}
                #     depth: #{depth}
                #     top_num: #{top_num}
                #     right_num: #{right_num}
                #     bot_num: #{bot_num}
                #     left_num: #{left_num}


                # NUMS

                matrix[depth][i] = left_num                       # top
                matrix[i][(depth + 1) * -1] = top_num             # right
                matrix[(depth + 1) * -1][-i - 1] = right_num      # bottom
                matrix[-i - 1][depth] = bot_num                   # left
            end
        end
        depth += 1
    end

    status = String.new
    if matrix == expected_output
        status = "Success!!"
    else
        status = "Failed..."
    end
    output = <<-OUTPUT
        status:
        #{status}

        matrix:
        #{matrix}

        expected_output:
        #{expected_output}
    OUTPUT
    puts output
end

rotate(matrix, rotations, expected_output)