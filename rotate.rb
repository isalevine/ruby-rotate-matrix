
# Tests cover these matrix sizes with the following rotations:
#   0 rotations:  3x3
#   1 rotation:   3x3, 4x4, 5x5, 6x6, 7x7
#   2 rotations:  3x3, 4x4, 5x5
#   3 rotations:  3x3, 4x4, 5x5
#   4 rotations:  3x3
#   15 rotations: 3x3


# Rotations are clockwise, 90 degrees, across a matrix's diagonal axes.

# Ex. 1 rotation, 3x3 matrix:
# [  1 , *2*,  3  ]           [  1 , *4*,  3  ]
# [ *4*,  5 , *6* ]     =>    [ *8*,  5 , *2* ]
# [  7 , *8*,  9  ]           [  7 , *6*,  9  ]  

# Ex. 1 rotation, 4x4 matrix:
# [   1 , * 2*, * 3*,   4  ]           [   1 , * 9*, * 5*,   4  ]
# [ * 5*,   6 ,   7 , * 8* ]     =>    [ *14*,   6 ,   7 , * 2* ]
# [ * 9*,  10 ,  11 , *12* ]           [ *15*,  10 ,  11 , * 3* ]
# [  13 , *14*, *15*,  16  ]           [  13 , *12*, * 8*,  16  ]

# Ex. 1 rotation, 5x5 matrix:
# [   1 , * 2*, * 3*, * 4*,   5  ]           [   1 , *16*, *11*, * 6*,   5  ]
# [ * 6*,   7 , * 8*,   9 , *10* ]     =>    [ *22*,   7 , *12*,   9 , * 2* ]
# [ *11*, *12*,  13 , *14*, *15* ]           [ *23*, *18*,  13 , * 8*, * 3* ]
# [ *16*,  17 , *18*,  19 , *20* ]           [ *24*,  17 , *14*,  19 , * 4* ] 
# [  21 , *22*, *23*, *24*,  25  ]           [  21 , *20*, *15*, *10*,  25  ]


test_array = [
    {
        test_id: 1,
        rotations: 1,

        matrix:          [ [1, 2, 3],           
                           [4, 5, 6],
                           [7, 8, 9] ],

        expected_output: [ [1, 4, 3],
                           [8, 5, 2],
                           [7, 6, 9] ]
    },

    {
        test_id: 2,
        rotations: 1,

        matrix:          [ [1, 2, 3, 4],           
                           [5, 6, 7, 8],
                           [9,10,11,12], 
                           [13,14,15,16] ],

        expected_output: [ [ 1, 9, 5, 4],           
                           [14, 6, 7, 2],
                           [15,10,11, 3], 
                           [13,12, 8,16] ]
    },

    {
        test_id: 3,
        rotations: 1,

        matrix:          [ [ 1, 2, 3, 4, 5],           
                           [ 6, 7, 8, 9,10],
                           [11,12,13,14,15], 
                           [16,17,18,19,20], 
                           [21,22,23,24,25] ],

        expected_output: [ [ 1,16,11, 6, 5],           
                           [22, 7,12, 9, 2],
                           [23,18,13, 8, 3], 
                           [24,17,14,19, 4], 
                           [21,20,15,10,25] ]
    },
    {
        test_id: 4,
        rotations: 1,

        matrix:         [ [ 1, 2, 3, 4, 5, 6],           
                          [ 7, 8, 9,10,11,12],
                          [13,14,15,16,17,18], 
                          [19,20,21,22,23,24], 
                          [25,26,27,28,29,30],
                          [31,32,33,34,35,36] ],
        
        expected_output: [ [ 1,25,19,13, 7, 6],           
                           [32, 8,20,14,11, 2],
                           [33,27,15,16, 9, 3], 
                           [34,28,21,22,10, 4], 
                           [35,26,23,17,29, 5],
                           [31,30,24,18,12,36] ]   
    },
    {
        test_id: 5,
        rotations: 1,

        matrix:          [ [ 1, 2, 3, 4, 5, 6, 7],           
                           [ 8, 9,10,11,12,13,14],
                           [15,16,17,18,19,20,21], 
                           [22,23,24,25,26,27,28], 
                           [29,30,31,32,33,34,35],
                           [36,37,38,39,40,41,42],
                           [43,44,45,46,47,48,49] ],

        expected_output: [ [ 1,36,29,22,15, 8, 7],           
                           [44, 9,30,23,16,13, 2],
                           [45,38,17,24,19,10, 3], 
                           [46,39,32,25,18,11, 4], 
                           [47,40,31,26,33,12, 5],
                           [48,37,34,27,20,41, 6],
                           [43,42,35,28,21,14,49] ] 
    },
    {
        test_id: 6,
        rotations: 2,

        matrix:          [ [1, 2, 3],           
                           [4, 5, 6],
                           [7, 8, 9] ],

        expected_output: [ [1, 8, 3],
                           [6, 5, 4],
                           [7, 2, 9] ]
    },
    {
        test_id: 7,
        rotations: 2,

        matrix:          [ [ 1, 2, 3, 4],           
                           [ 5, 6, 7, 8],
                           [ 9,10,11,12], 
                           [13,14,15,16] ],

        expected_output: [ [ 1,15,14, 4],           
                           [12, 6, 7, 9],
                           [ 8,10,11, 5], 
                           [13, 3, 2,16] ]
    },
    {
        test_id: 8,
        rotations: 2,

        matrix:          [ [ 1, 2, 3, 4, 5],           
                           [ 6, 7, 8, 9,10],
                           [11,12,13,14,15], 
                           [16,17,18,19,20], 
                           [21,22,23,24,25] ],

        expected_output: [ [ 1,24,23,22, 5],           
                           [20, 7,18, 9,16],
                           [15,14,13,12,11], 
                           [10,17, 8,19, 6], 
                           [21, 4, 3, 2,25] ]
    },
    {
        test_id: 9,
        rotations: 3,

        matrix:          [ [1, 2, 3],           
                           [4, 5, 6],
                           [7, 8, 9] ],

        expected_output: [ [1, 6, 3],
                           [2, 5, 8],
                           [7, 4, 9] ]
    },
    {
        test_id: 10,
        rotations: 3,

        matrix:          [ [1, 2, 3, 4],           
                           [5, 6, 7, 8],
                           [9,10,11,12], 
                           [13,14,15,16] ],

        expected_output: [ [ 1, 8,12, 4],           
                           [ 3, 6, 7,15],
                           [ 2,10,11,14], 
                           [13, 5, 9,16] ]
    },
    {
        test_id: 11,
        rotations: 3,

        matrix:          [ [ 1, 2, 3, 4, 5],           
                           [ 6, 7, 8, 9,10],
                           [11,12,13,14,15], 
                           [16,17,18,19,20], 
                           [21,22,23,24,25] ],

        expected_output: [ [ 1,10,15,20, 5],           
                           [ 4, 7,14, 9,24],
                           [ 3, 8,13,18,23], 
                           [ 2,17,12,19,22], 
                           [21, 6,11,16,25] ]
    },
    {
        test_id: 12,
        rotations: 15,

        matrix:          [ [1, 2, 3],           
                           [4, 5, 6],
                           [7, 8, 9] ],

        expected_output: [ [1, 6, 3],
                           [2, 5, 8],
                           [7, 4, 9] ]
    },
    {
        test_id: 13,
        rotations: 0,

        matrix:          [ [1, 2, 3],           
                           [4, 5, 6],
                           [7, 8, 9] ],

        expected_output: [ [1, 2, 3],           
                           [4, 5, 6],
                           [7, 8, 9] ],
    },
    {
        test_id: 14,
        rotations: 4,

        matrix:          [ [1, 2, 3],           
                           [4, 5, 6],
                           [7, 8, 9] ],

        expected_output: [ [1, 2, 3],           
                           [4, 5, 6],
                           [7, 8, 9] ],
    }
]



def rotate(matrix:, rotations:, expected_output:)
    actual_rotations = rotations % 4
    last_index = matrix.length - 1
    max_depth = ((matrix.length - 1) / 2).floor
    depth = 0
    
    while depth < max_depth
        matrix[depth].each_with_index do |val, i|
            first_index = depth + 1
            last_index = matrix[depth].length - (depth + 2)

            if first_index <= i && i <= last_index
                top_val = val                 
                right_val = matrix[i][(depth + 1) * -1]    
                bot_val = matrix[(depth + 1) * -1][-i - 1]
                left_val = matrix[-i - 1][depth]

                if actual_rotations == 1
                    matrix[depth][i] = left_val                       # top
                    matrix[i][(depth + 1) * -1] = top_val             # right
                    matrix[(depth + 1) * -1][-i - 1] = right_val      # bottom
                    matrix[-i - 1][depth] = bot_val                   # left

                elsif actual_rotations == 2
                    matrix[depth][i] = bot_val                        # top
                    matrix[i][(depth + 1) * -1] = left_val            # right
                    matrix[(depth + 1) * -1][-i - 1] = top_val        # bottom
                    matrix[-i - 1][depth] = right_val                 # left

                elsif actual_rotations == 3
                    matrix[depth][i] = right_val                      # top
                    matrix[i][(depth + 1) * -1] = bot_val             # right
                    matrix[(depth + 1) * -1][-i - 1] = left_val       # bottom
                    matrix[-i - 1][depth] = top_val                   # left
                end

            end
        end
        depth += 1
    end


    if matrix == expected_output
        output = <<-OUTPUT
                status:
                SUCCESSFUL!!

                matrix:
                #{matrix}

                expected_output:
                #{expected_output}


        OUTPUT
        puts output

    else
        output = <<-OUTPUT
                status:
                Failed...

                matrix:
                #{matrix}

                expected_output:
                #{expected_output}

                Aborting program...
                
        OUTPUT
        abort(output)
    end

end



test_array.each do |test_hash|
    puts <<-HEADER
        TEST #{test_hash[:test_id]}
            Rotations: #{test_hash[:rotations]}
            Matrix size: #{test_hash[:matrix].length}x#{test_hash[:matrix].length}
            ===========================
    HEADER

    rotate(matrix: test_hash[:matrix], rotations: test_hash[:rotations], expected_output: test_hash[:expected_output])
end