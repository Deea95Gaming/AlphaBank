package sample;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;
import javafx.stage.StageStyle;
import utils.ConnectionUtil;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.time.LocalDate;
import java.util.logging.Level;
import java.util.logging.Logger;

public class VerificareSD_Controller {

    @FXML
    private Button btnBack;

    @FXML
    private Button btnCancel;

    @FXML
    private Button btnSalvare;

    @FXML
    private CheckBox cbVerificat;

    @FXML
    private DatePicker dpData;

    @FXML
    private AnchorPane rootPane;

    @FXML
    private TextArea taComments;

    @FXML
    private TextField textNumeSD;

    @FXML
    private TextField txtID;

    @FXML
    private TextField txtMail;

    @FXML
    private TextField txtNumarTichet;


    // - Conectarea la baza de DATE:
    Connection con = null;
    public VerificareSD_Controller()
    { con = ConnectionUtil.conDB(); }

    // - Butonul propriu-zis:
    @FXML
    private void btnSalvare(ActionEvent e) {

        // -> Declararea variabilelor:
        int id = Integer.valueOf(txtID.getText());
        String numar = txtNumarTichet.getText();
        String mail = txtMail.getText();
        String comments = taComments.getText();
        String numeSD = textNumeSD.getText();
        LocalDate selectedDate = dpData.getValue(); // Obținem data din DatePicker
        boolean verificat = cbVerificat.isSelected(); // Obținem valoarea CheckBox-ului


        // -> Inserarea datelor in baza de date + AlertType:
        if (numar.isEmpty() || mail.isEmpty() || comments.isEmpty()  || numeSD.isEmpty() || selectedDate == null) {
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.initStyle(StageStyle.UTILITY);
            alert.setTitle("Status teste");
            alert.setHeaderText(null);
            alert.setContentText("Vă rugăm să completați toate datele!");
            alert.showAndWait();
        } else {
            // query
            String sql = "INSERT INTO verificare (id, numar, mail, comments, numeSD, data, verificat) VALUES (?, ?, ?, ?, ?, ?, ?)";
            try {
                PreparedStatement preparedStatement = con.prepareStatement(sql);
                preparedStatement.setInt(1, id);
                preparedStatement.setString(2, numar);
                preparedStatement.setString(3, mail);
                preparedStatement.setString(4, comments);
                preparedStatement.setString(5, numeSD);
                preparedStatement.setDate(6, java.sql.Date.valueOf(selectedDate)); // Convertim LocalDate la java.sql.Date
                preparedStatement.setBoolean(7, verificat); // Adăugăm valoarea CheckBox-ului

                int rowsAffected = preparedStatement.executeUpdate();
                Alert alert = new Alert(Alert.AlertType.INFORMATION);
                alert.initStyle(StageStyle.UTILITY);
                alert.setTitle("Status teste");
                alert.setHeaderText(null);
                if (rowsAffected > 0) {
                    alert.setContentText("Datele au fost introduse!");
                } else {
                    alert.setContentText("Nicio modificare nu a fost efectuată!");
                }
                alert.showAndWait();

            } catch (Exception ex) {
                System.err.println("Eroare! Datele au fost introduse deja! Vă rugăm utilizați un alt ID și alte date!");
                ex.printStackTrace();
            }
        }
    }




    // 3. Butonul de CANCEL din program:
    @FXML
    void btnCancel (ActionEvent e ){
        btnCancel.setOnAction(ev ->{
            txtNumarTichet.setText(null);
            txtMail.setText(null);
            txtID.setText(null);
            taComments.setText(null);
            textNumeSD.setText(null);
        });

    }

    // 4. Butonul de BACK - cel de revenire la formularul de LOGIN:
    @FXML
    void btnBack (ActionEvent e){
        btnBack.setOnAction(event ->{
            try {
                Parent backParent;
                backParent = (AnchorPane) FXMLLoader.load(getClass().getResource("/sample/dashboard.fxml"));

                Scene nscene = new Scene(backParent);
                Stage mainWindow;
                mainWindow = (Stage) rootPane.getScene().getWindow();
                mainWindow.setTitle("Dashboard");
                mainWindow.setScene(nscene);
            } catch (IOException ex) {
                Logger.getLogger(Main_Controller.class.getName()).log(Level.SEVERE, null, ex);
            }

        });
    }

}
