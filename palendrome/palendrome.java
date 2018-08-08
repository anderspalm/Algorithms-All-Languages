public class Palendrome {

  public static void main(String[] args) {
    pallindrome("abba");
  }

  private static void pallindrome(String word_input){

    int last_index = word_input.length() - 1;

    for (int i = 0; i <= word_input.length()/2; i ++ ){
      if (word_input.charAt(i) == word_input.charAt(last_index)){
        last_index -= 1;
        if (i == word_input.length()/2){
          System.out.println("The palindrome is " + word_input);
        }
      } else {
        System.out.println(word_input + " is not a palindrome");
        break;
      }
    }

  }
}
