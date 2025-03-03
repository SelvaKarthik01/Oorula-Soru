import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

public class OorulaSoruGUI {
    private JFrame frame;
    private Connection connection;
    private long startTime;

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                new OorulaSoruGUI();
            }
        });
    }

    public OorulaSoruGUI() {
        initialize();
        try {
            connection = DatabaseConnection.getConnection();
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Failed to connect to database: " + e.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
            e.printStackTrace();
        }
        startTime = System.currentTimeMillis();
    }

    private void initialize() {
        frame = new JFrame();
        frame.setBounds(100, 100, 450, 300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.getContentPane().setLayout(null);

        JButton btnRestaurantsNearMe = new JButton("Restaurants Near Me");
        btnRestaurantsNearMe.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                displayRestaurantsNearMe();
            }
        });
        btnRestaurantsNearMe.setBounds(41, 49, 156, 29);
        frame.getContentPane().add(btnRestaurantsNearMe);

        JButton btnOrderFood = new JButton("Order Food");
        btnOrderFood.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                orderFood();
            }
        });
        btnOrderFood.setBounds(231, 49, 156, 29);
        frame.getContentPane().add(btnOrderFood);

        JButton btnBankingDetails = new JButton("Banking Details");
        btnBankingDetails.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                displayBankingDetails();
            }
        });
        btnBankingDetails.setBounds(41, 102, 156, 29);
        frame.getContentPane().add(btnBankingDetails);

        JButton btnMiscellaneous = new JButton("Miscellaneous");
        btnMiscellaneous.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                displayMiscellaneous();
            }
        });
        btnMiscellaneous.setBounds(231, 102, 156, 29);
        frame.getContentPane().add(btnMiscellaneous);

        frame.setVisible(true);
    }

    private void displayRestaurantsNearMe() {
        String query = "SELECT * FROM fdbs";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet resultSet = statement.executeQuery();
            StringBuilder result = new StringBuilder();
            result.append("Restaurants Near You:\n");
            while (resultSet.next()) {
                result.append(resultSet.getString("Restaurant")).append("\n");
            }
            JOptionPane.showMessageDialog(frame, result.toString());
        } catch (SQLException e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(frame, "Failed to fetch restaurants near you.", "Error", JOptionPane.ERROR_MESSAGE);
        }
    }

    private void orderFood() {
        String query = "SELECT * FROM fdbs";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet resultSet = statement.executeQuery();
            StringBuilder result = new StringBuilder();
            result.append("Menu:\n");
            while (resultSet.next()) {
                result.append(resultSet.getString("Food")).append("\t")
                        .append(resultSet.getString("Price")).append("\n");
            }
            JOptionPane.showMessageDialog(frame, result.toString());
        } catch (SQLException e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(frame, "Failed to fetch menu.", "Error", JOptionPane.ERROR_MESSAGE);
        }

        int funds = getFunds();
        if (funds > 0) {
            int totalBill = Integer.parseInt(JOptionPane.showInputDialog(frame, "Enter total bill amount: "));
            if (totalBill <= funds) {
                updateFunds(funds - totalBill);
                JOptionPane.showMessageDialog(frame, "Payment successful!");
            } else {
                JOptionPane.showMessageDialog(frame, "Not enough funds.", "Error", JOptionPane.ERROR_MESSAGE);
            }
        } else {
            JOptionPane.showMessageDialog(frame, "Insufficient funds to place order.", "Error", JOptionPane.ERROR_MESSAGE);
        }
    }

    private void displayBankingDetails() {
        String query = "SELECT * FROM bank";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                JOptionPane.showMessageDialog(frame, "Funds available: " + resultSet.getInt("Funds"));
            } else {
                JOptionPane.showMessageDialog(frame, "Banking details not available.", "Error", JOptionPane.ERROR_MESSAGE);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(frame, "Failed to fetch banking details.", "Error", JOptionPane.ERROR_MESSAGE);
        }
    }

    private void displayMiscellaneous() {
        String developerInfo = "Chief Programmer: Selva Karthik\n" +
                "Associate Programmers: Varshan Manish, Roshan Parvatam\n" +
                "All Rights Reserved";
        String eula = "End-User License Agreement (EULA):\n\n" +
                "Your EULA text here";
        String news = "Future updates:\n" +
                "Your future updates information here";

        JTextArea textArea = new JTextArea(developerInfo + "\n\n" + eula + "\n\n" + news);
        textArea.setEditable(false);
        JScrollPane scrollPane = new JScrollPane(textArea);
        JOptionPane.showMessageDialog(frame, scrollPane);
    }

    private int getFunds() {
        String query = "SELECT * FROM bank";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt("Funds");
            } else {
                JOptionPane.showMessageDialog(frame, "Funds not available.", "Error", JOptionPane.ERROR_MESSAGE);
                return -1;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(frame, "Failed to fetch funds.", "Error", JOptionPane.ERROR_MESSAGE);
            return -1;
        }
    }

    private void updateFunds(int funds) {
        String query = "UPDATE bank SET Funds = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, funds);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(frame, "Failed to update funds.", "Error", JOptionPane.ERROR_MESSAGE);
        }
    }
}

class DatabaseConnection {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/fdbs";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "SelvaKarthik@13579@24680";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
    }
}
