LetterGrade gradeByScore(int score) {
  String grade;

  // Grade letter checker
  if (score == 100) {
    grade = "A+";
  } else if (score >= 90) {
    grade = "A";
  } else if (score >= 80) {
    grade = "B";
  } else if (score >= 70) {
    grade = "C";
  } else if (score >= 60) {
    grade = "D";
  } else {
    grade = "F";
  }

  String rating = "";
  // Rating finder
  switch (grade) {
    case "A+":
      rating = "Perfect";
      break;
    case "A":
      rating = "Excellent";
      break;
    case "B":
      rating = "Good";
      break;
    case "C":
      rating = "Average";
      break;
    case "D":
      rating = "Deficient";
      break;
    case "F":
      rating = "Failing";
      break;
    default:
      rating = "ERROR: Invalid grade";
  }
  return LetterGrade(score, grade, rating);
}

class LetterGrade {
  final int score;
  final String grade;
  final String rating;

  LetterGrade(this.score, this.grade, this.rating);

  @override
  String toString() {
    return "Grade: $grade, Score: $score, Rating: $rating";
  }
}
