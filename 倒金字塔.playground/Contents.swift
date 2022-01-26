var sum = 10
var position = 2*sum-1
for i in 0..<sum{
    for j in 1...position {
        if j <= i || j >= 2*sum-i {
            print(" ",terminator: "")
        }
        else {
            print("*",terminator: "")
        }
    }
    print("")
}

/*
 5.打印倒金字塔
 * * * * * * *
   * * * * *
     * * *
       *
 */
var sum1 = 5
var position2 = 2*sum1 - 1
for indexI in 1...sum1 {
    for indexJ in 1...position2 {
        if indexJ < indexI{
            //先打因左侧空格
            print(" ", separator: "", terminator: "")
        }
        // indexJ <= 7-(indexI-1)
        else if indexJ+(indexI-1)<=position2 {
            //再打印*
            print("*",separator: "",terminator: "")
        }
    }
    //换行
    print("")
}

