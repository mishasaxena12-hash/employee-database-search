
import java.sql.*;
import java.util.Scanner;

public class EmployeeSearch {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        String url = "jdbc:oracle:thin:@localhost:1521:XE";
        String user = "system";
        String password = "your_password";

        try {
            Class.forName("oracle.jdbc.OracleDriver");

            Connection con =
                DriverManager.getConnection(url, user, password);

            int choice;

            do {
                System.out.println("\n--- Employee Database ---");
                System.out.println("1. Search by Name");
                System.out.println("2. Filter by Department");
                System.out.println("3. Search by Salary Range");
                System.out.println("4. Sort by Salary");
                System.out.println("5. Exit");
                System.out.print("Enter choice: ");

                choice = sc.nextInt();
                sc.nextLine();

                String sql = "";
                PreparedStatement ps = null;

                switch (choice) {

                    case 1:
                        System.out.print("Enter employee name: ");
                        String name = sc.nextLine();

                        sql = "SELECT * FROM Employee " +
                              "WHERE LOWER(emp_name) LIKE LOWER(?)";

                        ps = con.prepareStatement(sql);
                        ps.setString(1, "%" + name + "%");
                        break;

                    case 2:
                        System.out.print("Enter department: ");
                        String dept = sc.nextLine();

                        sql = "SELECT * FROM Employee " +
                              "WHERE LOWER(department) = LOWER(?)";

                        ps = con.prepareStatement(sql);
                        ps.setString(1, dept);
                        break;

                    case 3:
                        System.out.print("Enter minimum salary: ");
                        double min = sc.nextDouble();

                        System.out.print("Enter maximum salary: ");
                        double max = sc.nextDouble();

                        sql = "SELECT * FROM Employee " +
                              "WHERE salary BETWEEN ? AND ? " +
                              "ORDER BY salary";

                        ps = con.prepareStatement(sql);
                        ps.setDouble(1, min);
                        ps.setDouble(2, max);
                        break;

                    case 4:
                        System.out.println("1. Ascending");
                        System.out.println("2. Descending");
                        System.out.print("Enter order: ");
                        int order = sc.nextInt();

                        if (order == 1) {
                            sql = "SELECT * FROM Employee " +
                                  "ORDER BY salary ASC";
                        } else if (order == 2) {
                            sql = "SELECT * FROM Employee " +
                                  "ORDER BY salary DESC";
                        } else {
                            System.out.println("Invalid order.");
                            continue;
                        }

                        ps = con.prepareStatement(sql);
                        break;

                    case 5:
                        System.out.println("Exiting...");
                        break;

                    default:
                        System.out.println("Invalid choice.");
                        continue;
                }

                if (choice >= 1 && choice <= 4) {
                    ResultSet rs = ps.executeQuery();

                    System.out.println(
                        "\nID\tName\tDepartment\tSalary");

                    boolean found = false;

                    while (rs.next()) {
                        found = true;

                        System.out.println(
                            rs.getInt("emp_id") + "\t" +
                            rs.getString("emp_name") + "\t" +
                            rs.getString("department") + "\t" +
                            rs.getDouble("salary"));
                    }

                    if (!found) {
                        System.out.println("No employees found.");
                    }

                    rs.close();
                    ps.close();
                }

            } while (choice != 5);

            con.close();
            sc.close();

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
