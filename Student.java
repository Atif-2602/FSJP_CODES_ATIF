// Aim: WAP to store and display student information of few students.
// Information like name, uin, cgpa.
// Name: Qureshi Atif Meraj Alam
// UIN: 251P004
// Class: S.E.Computer A
public class Student {
    public static void main(String[] args) {
        StudentInfo s1 = new StudentInfo();
        s1.name = "Atif";
        s1.uin = "251P004";
        s1.cgpa = 8.20;
        s1.display();

        StudentInfo s2 = new StudentInfo();
        s2.name = "Rahul";
        s2.uin = "251P067";
        s2.cgpa = 8.54;
        s2.display();

        StudentInfo s3 = new StudentInfo();
        s3.name = "Dhruv";
        s3.uin = "251P096";
        s3.cgpa = 8.70;
        s3.display();
    }
}
class StudentInfo{
    String name;
    String uin;
    double cgpa;

    void display(){
        System.out.println("name: " + name);
        System.out.println("UIN: " + uin);
        System.out.println("CGPA: " + cgpa);
        System.out.println("-----------------");
    }
}