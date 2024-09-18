package sample;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;
import javafx.stage.StageStyle;
import utils.ConnectionUtil;

import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SignUP_Controller implements Initializable {

    // Declararea variabilelor aplicatiei:

    @FXML
    private AnchorPane rootPane;

    @FXML
    private Button btnCancel;

    @FXML
    private Button btnIesire;

    @FXML
    private TextField txtFirstName;

    @FXML
    private TextField txtLastName;

    @FXML
    private TextField txtUsernameRegister;

    @FXML
    private TextField txtPasswordRegister;

    @FXML
    private TextField txtRetypePass;

    @FXML
    private TextArea taAddress;

    @FXML
    private Button btnBack;

    @FXML
    private TextField txtID;


    // Functionalitatea aplicatiei:

    // 1. Butonul de EXIT din program:
    @FXML
    void btnIesire (ActionEvent e) {
        btnIesire.setOnAction(event -> {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.setHeaderText("Esti sigur?");
            ButtonType userOption = alert.showAndWait().get();
            if (userOption == ButtonType.CANCEL) {
                System.out.println("Utilizatorul a anulat sesiunea inchiderii aplicatiei!");

            }
            if (userOption == ButtonType.OK) {
                System.out.println("Utilizatorul a decis sa inchida aplicatia de Register!");

            }
            System.exit(0);


        });
    }

    // 2. Butonul de REGISTER din program:

    // - Conectarea la baza de DATE:
    Connection con = null;
    public SignUP_Controller()
    { con = ConnectionUtil.conDB(); }

    // - Butonul propriu-zis:


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

        @FXML
        private void btnRegister(ActionEvent e) {

            // -> Declararea variabilelor:
            int id = Integer.valueOf(txtID.getText());
            String fname = txtFirstName.getText();
            String lname = txtLastName.getText();
            String uname = txtUsernameRegister.getText();

            // Parola și confirmarea parolei sunt criptate folosind SHA1
            String pass = SHA1(txtPasswordRegister.getText());  // Criptare SHA1 a parolei introduse
            String re_pass = SHA1(txtRetypePass.getText());     // Criptare SHA1 a confirmării parolei
            String addr = taAddress.getText();

            // -> Inserarea datelor în baza de date:
            if (fname.isEmpty() || lname.isEmpty() || uname.isEmpty() || pass.isEmpty() ||
                    re_pass.isEmpty() || addr.isEmpty()) {
                Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.initStyle(StageStyle.UTILITY);
                alert.setTitle("Register Information");
                alert.setHeaderText(null);
                alert.setContentText("Va rugam completati toate datele!");
                alert.showAndWait();
            } else {
                // Query pentru a insera datele în baza de date
                String sql = "INSERT INTO register (id, fname, lname, uname, pass, re_pass, addr) VALUES (?,?,?,?,?,?,?)";
                try {
                    PreparedStatement preparedStatement = con.prepareStatement(sql);
                    preparedStatement.setInt(1, id);
                    preparedStatement.setString(2, fname);
                    preparedStatement.setString(3, lname);
                    preparedStatement.setString(4, uname);
                    preparedStatement.setString(5, pass);  // Parola criptată
                    preparedStatement.setString(6, re_pass);  // Confirmarea parolei criptate
                    preparedStatement.setString(7, addr);

                    int resultSet = preparedStatement.executeUpdate();
                    // Afișare mesaj succes
                    Alert alert = new Alert(Alert.AlertType.INFORMATION);
                    alert.initStyle(StageStyle.UTILITY);
                    alert.setTitle("Register Information");
                    alert.setHeaderText(null);
                    alert.setContentText("Cont creat cu succes! Va rugam reveniti in formularul de Login!");
                    alert.showAndWait();
                } catch (Exception ex) {
                    // Tratează eroarea dacă deja există un utilizator cu același id sau username
                    System.err.println("Eroare! Contul a fost creat deja! Va rugam utilizati un alt ID si un alt username!");
                }
            }
        }




    // 3. Butonul de CANCEL din program:
    @FXML
    void btnCancel (ActionEvent e ){
        btnCancel.setOnAction(ev ->{
            txtFirstName.setText(null);
            txtLastName.setText(null);
            txtUsernameRegister.setText(null);
            txtPasswordRegister.setText(null);
            txtRetypePass.setText(null);
            taAddress.setText(null);
        });

    }

    // 4. Butonul de BACK - cel de revenire la formularul de LOGIN:
    @FXML
    void btnBack (ActionEvent e){
        btnBack.setOnAction(event ->{
            try {
                Parent backParent;
                backParent = (AnchorPane) FXMLLoader.load(getClass().getResource("/sample/sample.fxml"));

                Scene nscene = new Scene(backParent);
                Stage mainWindow;
                mainWindow = (Stage) rootPane.getScene().getWindow();
                mainWindow.setTitle("Login");
                mainWindow.setScene(nscene);
            } catch (IOException ex) {
                Logger.getLogger(Main_Controller.class.getName()).log(Level.SEVERE, null, ex);
            }

        });
    }

    @Override
    public void initialize(URL location, ResourceBundle resources) { }
}
