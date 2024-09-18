package sample;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.scene.paint.Color;
import javafx.event.ActionEvent;
import javafx.stage.Stage;
import utils.ConnectionUtil;

import java.io.IOException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Main_Controller implements Initializable {

    @FXML
    private TextField txtUsername;

    @FXML
    private PasswordField txtPassword;

    @FXML
    private Label lblErrors;

    @FXML
    private AnchorPane rootPane;

    @FXML
    private Button btnDashboard;

    @FXML
    private Button btnDelete;

    // Funcție pentru a cripta parola cu SHA1:
    public static String SHA1(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA1");
            byte[] result = md.digest(password.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : result) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    // 1. Butonul de Login:
    @FXML
    private String btnLogin(MouseEvent event) {
        String status = "Success";
        String uname = txtUsername.getText();
        String pass = txtPassword.getText();

        if (uname.isEmpty() || pass.isEmpty()) {
            setLblError(Color.TOMATO, "");
            status = "Eroare";
        } else {
            // Criptăm parola introdusă de utilizator
            String encryptedPass = SHA1(pass);

            // Interogare SQL pentru a compara cu parola criptată din baza de date
            String sql = "SELECT * FROM register WHERE uname = ? AND pass = ?";
            try {
                PreparedStatement preparedStatement = con.prepareStatement(sql);
                preparedStatement.setString(1, uname);
                preparedStatement.setString(2, encryptedPass);

                ResultSet resultSet = preparedStatement.executeQuery();
                if (!resultSet.next()) {
                    setLblError(Color.TOMATO, "Introduceti corect email-ul sau parola! Daca nu aveti un cont, va rugam apasati pe SignUP!");
                    status = "Eroare!";
                    btnDashboard.setDisable(true);
                } else {
                    setLblError(Color.GREEN, "V-ati logat cu succes! Puteti accesa aplicatia de tip ERP! Enjoy!");
                    btnDashboard.setDisable(false);
                }
            } catch (SQLException ex) {
                System.err.println(ex.getMessage());
                status = "Exceptie!";
            }
        }
        return status;
    }

    // 2. Facem conexiunea la baza de date:
    Connection con = null;

    public Main_Controller() {
        con = ConnectionUtil.conDB();
    }

    // 3. Aici avem label-ul de eroare:
    private void setLblError(Color color, String text) {
        lblErrors.setTextFill(color);
        lblErrors.setText(text);
        System.out.println(text);
        btnDashboard.setDisable(true);
    }

    // 4. Butonul de Sign UP:
    @FXML
    private void signUP(ActionEvent e) {
        try {
            Parent signupParent;
            signupParent = FXMLLoader.load(getClass().getResource("/sample/SignUP.fxml"));

            Scene nscene = new Scene(signupParent);
            Stage mainWindow;
            mainWindow = (Stage) rootPane.getScene().getWindow();
            mainWindow.setTitle("Sign UP");
            mainWindow.setScene(nscene);
            btnDashboard.setDisable(true);

        } catch (IOException ex) {
            btnDashboard.setDisable(true);
            Logger.getLogger(Main_Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // 5. Verificam conexiunea cu baza de date:
    @Override
    public void initialize(URL location, ResourceBundle resources) {
        if (con == null) {
            lblErrors.setTextFill(Color.RED);
            btnDashboard.setDisable(true);
            lblErrors.setText("Eroare de server : Va rugam verificati conexiunea la baza de date!");
        } else {
            lblErrors.setTextFill(Color.GREEN);
            btnDashboard.setDisable(true);
            lblErrors.setText("Server deschis: Puteti intra!");
        }
    }

    // 6. Butonul de DELETE:
    @FXML
    void btnDelete(ActionEvent e) {
        btnDelete.setOnAction(event -> {
            try {
                Parent btnUpdateParent;
                btnUpdateParent = FXMLLoader.load(getClass().getResource("/sample/Delete.fxml"));

                Scene nescene = new Scene(btnUpdateParent);
                Stage mainWindow;
                mainWindow = (Stage) rootPane.getScene().getWindow();
                mainWindow.setTitle("Delete Account Form");
                mainWindow.setScene(nescene);
                btnDashboard.setDisable(true);

            } catch (IOException ex) {
                btnDashboard.setDisable(true);
                Logger.getLogger(Main_Controller.class.getName()).log(Level.SEVERE, null, ex);
            }
        });
    }

    // 7. Butonul de DASHBOARD:
    @FXML
    void btnDashboard(ActionEvent e) {
        btnDashboard.setOnAction(event -> {
            try {
                Parent btnDashboardParent;
                btnDashboardParent = FXMLLoader.load(getClass().getResource("/sample/dashboard.fxml"));

                Scene nescene = new Scene(btnDashboardParent);
                Stage mainWindow;
                mainWindow = (Stage) rootPane.getScene().getWindow();
                mainWindow.setTitle("Dashboard");
                mainWindow.setScene(nescene);

            } catch (IOException ex) {
                Logger.getLogger(Main_Controller.class.getName()).log(Level.SEVERE, null, ex);
            }
        });
    }
}
