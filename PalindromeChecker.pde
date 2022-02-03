public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  return noCapitals(onlyLetters(noSpaces(word))).equals(reverse(noCapitals(onlyLetters(noSpaces(word)))));
}
public String reverse(String str)
{
  String sNew = new String();
  for (int i=str.length(); i>0; i--)
    sNew += str.substring(i-1, i);
  return sNew;
}

public String noCapitals(String sWord) {
  return sWord.toLowerCase();
}

public String noSpaces(String sWord) {
  String space = "";
  for (int i=0; i<sWord.length(); i++)
    if (sWord.charAt(i) != ' ')
      space += sWord.substring(i, i+1);
  return space;
}

public String onlyLetters(String sString) {
  String letter = "";
  for (int i=0; i<sString.length(); i++)
    if (Character.isLetter(sString.charAt(i))==true) {
      letter += sString.substring(i, i+1);
    }
  return letter;
}
