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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.logging.Level;
import java.util.logging.Logger;

public class TicheteJira_Controller {

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
    private DatePicker dpDataTA;

    @FXML
    private DatePicker dpDataDEV;

    @FXML
    private DatePicker dpDataUAT;

    @FXML
    private AnchorPane rootPane;

    @FXML
    private TextArea taComments;

    @FXML
    private TextField txtDEV;

    @FXML
    private TextField txtID;

    @FXML
    private TextField txtNumarHD;

    @FXML
    private TextField txtNumeOF;

    @FXML
    private TextField txtSursa;

    @FXML
    private TextField txtTA;


    // - Conectarea la baza de DATE:
    Connection con = null;
    public TicheteJira_Controller()
    { con = ConnectionUtil.conDB(); }

    // - Butonul propriu-zis:
    @FXML
    private void btnSalvare(ActionEvent e) {
        // -> Declararea variabilelor:
        int id = Integer.valueOf(txtID.getText());
        String numeOF = txtNumeOF.getText();
        String numarHD = txtNumarHD.getText();
        String comments = taComments.getText();
        String sursa = txtSursa.getText();
        String ta = txtTA.getText();
        String dev = txtDEV.getText();
        LocalDate selectedDate = dpData.getValue(); // Obținem data din DatePicker
        LocalDate selectedDate2 = dpDataTA.getValue(); // Obținem data din DatePicker
        LocalDate selectedDate3 = dpDataDEV.getValue(); // Obținem data din DatePicker
        LocalDate selectedDate4 = dpDataUAT.getValue(); // Obținem data din DatePicker
        boolean verificat = cbVerificat.isSelected(); // Obținem valoarea CheckBox-ului

        // -> Inserarea datelor in baza de date + AlertType:
        if (numarHD.isEmpty() || comments.isEmpty() || numeOF.isEmpty() || ta.isEmpty() || dev.isEmpty() || sursa.isEmpty() || selectedDate == null || selectedDate2 == null || selectedDate3 == null || selectedDate4 == null) {
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.initStyle(StageStyle.UTILITY);
            alert.setTitle("Status teste");
            alert.setHeaderText(null);
            alert.setContentText("Vă rugăm să completați toate datele!");
            alert.showAndWait();
        } else {
            // Verificăm dacă id există deja în baza de date
            String checkIdSql = "SELECT COUNT(*) FROM tichetejira WHERE id = ?";
            try (PreparedStatement checkIdStmt = con.prepareStatement(checkIdSql)) {
                checkIdStmt.setInt(1, id);
                ResultSet rs = checkIdStmt.executeQuery();
                rs.next();
                int count = rs.getInt(1);

                if (count > 0) {
                    Alert alert = new Alert(Alert.AlertType.ERROR);
                    alert.initStyle(StageStyle.UTILITY);
                    alert.setTitle("Status teste");
                    alert.setHeaderText(null);
                    alert.setContentText("ID-ul este deja înregistrat!");
                    alert.showAndWait();
                } else {
                    // Verificăm dacă numeOF există deja în baza de date
                    String checkNumeOFSql = "SELECT COUNT(*) FROM tichetejira WHERE numeOF = ?";
                    try (PreparedStatement checkNumeOFStmt = con.prepareStatement(checkNumeOFSql)) {
                        checkNumeOFStmt.setString(1, numeOF);
                        ResultSet rsNumeOF = checkNumeOFStmt.executeQuery();
                        rsNumeOF.next();
                        int countNumeOF = rsNumeOF.getInt(1);

                        if (countNumeOF > 0) {
                            Alert alert = new Alert(Alert.AlertType.ERROR);
                            alert.initStyle(StageStyle.UTILITY);
                            alert.setTitle("Status teste");
                            alert.setHeaderText(null);
                            alert.setContentText("Numele OF este deja înregistrat!");
                            alert.showAndWait();
                        } else {
                            // Inserăm datele în baza de date
                            String sql = "INSERT INTO tichetejira (id, numeOF, numarHD, comments, sursa, ta, dev, data, verificat) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?,?,?,?)";
                            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                                preparedStatement.setInt(1, id);
                                preparedStatement.setString(2, numeOF);
                                preparedStatement.setString(3, numarHD);
                                preparedStatement.setString(4, comments);
                                preparedStatement.setString(5, sursa);
                                preparedStatement.setString(6, ta);
                                preparedStatement.setString(7, dev);
                                preparedStatement.setDate(8, java.sql.Date.valueOf(selectedDate)); // Convertim LocalDate la java.sql.Date
                                preparedStatement.setDate(9, java.sql.Date.valueOf(selectedDate2)); // Convertim LocalDate la java.sql.Date
                                preparedStatement.setDate(10, java.sql.Date.valueOf(selectedDate3)); // Convertim LocalDate la java.sql.Date
                                preparedStatement.setDate(11, java.sql.Date.valueOf(selectedDate4)); // Convertim LocalDate la java.sql.Date
                                preparedStatement.setBoolean(12, verificat); // Adăugăm valoarea CheckBox-ului

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
                            }
                        }
                    } catch (SQLException ex) {
                        System.err.println("Eroare! Verificarea sau inserarea a eșuat!");
                        ex.printStackTrace();
                    }
                }
            } catch (SQLException ex) {
                System.err.println("Eroare! Verificarea ID-ului a eșuat!");
                ex.printStackTrace();
            }
        }
    }






    // 3. Butonul de CANCEL din program:
    @FXML
    void btnCancel (ActionEvent e ){
        btnCancel.setOnAction(ev ->{
            txtNumeOF.setText(null);
            txtID.setText(null);
            taComments.setText(null);
            txtNumarHD.setText(null);
            txtDEV.setText(null);
            txtTA.setText(null);
            txtSursa.setText(null);
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
