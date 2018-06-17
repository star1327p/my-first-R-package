#' Test Whether a Number is Even or Odd
#'
#' This function tests whether a number is even or odd.
#' When the remainder of the number divided by 2 is 0, it is an even number.
#' When the remainder of the number divided by 2 is 1, it is an odd number.
#' When the remainder of the number divided by 2 is something else,
#' the number is not an integer.
#' If the input is not of numeric type, the function returns the message that
#' it is not a number.
#' @param number
#' @keywords number
#' @export
#' @examples
#' even_or_odd(20)
#' even_or_odd(25)
#' even_or_odd(13.5)
#' even_or_odd("square")

even_or_odd <- function(number){
  if (class(number) != "numeric") {
    print("This is not a number!")
  }
  else {
    if(number %% 2 == 0){
      print("This number is even.")
    }
    else if(number %% 2 == 1){
      print("This number is odd.")
    }
    else {
      print("This number is not an integer.")
    }
  }
}
