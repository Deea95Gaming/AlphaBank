package sample;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Dashboard_Controller {

    @FXML
    private Button btnDiferente;

    @FXML
    private Button btnNotificari;

    @FXML
    private Button btnTichete;

    @FXML
    private Button btnVerificareSD;

    @FXML
    private Button btnSDTrimise;

    @FXML
    private AnchorPane rootPane;

    // 1. Butonul de Diferente/Testare
    @FXML
    private void btnDiferente(ActionEvent e) {
        try {
            Parent diffParent = FXMLLoader.load(getClass().getResource("/sample/diferente.fxml"));

            Scene nscene = new Scene(diffParent);
            Stage mainWindow = (Stage) rootPane.getScene().getWindow();
            mainWindow.setTitle("Status testare");
            mainWindow.setScene(nscene);

        } catch (IOException ex) {
            Logger.getLogger(Dashboard_Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // 2. Butonul de Notificari
    @FXML
    private void btnNotificari(ActionEvent e) {
        try {
            Parent notificareParent = FXMLLoader.load(getClass().getResource("/sample/testare.fxml"));

            Scene nscene = new Scene(notificareParent);
            Stage mainWindow = (Stage) rootPane.getScene().getWindow();
            mainWindow.setTitle("Notificari trimise");
            mainWindow.setScene(nscene);

        } catch (IOException ex) {
            Logger.getLogger(Dashboard_Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // 3. Butonul de Tichete
    @FXML
    private void btnTichete(ActionEvent e) {
        try {
            Parent tichetParent = FXMLLoader.load(getClass().getResource("/sample/tichet.fxml"));

            Scene nscene = new Scene(tichetParent);
            Stage mainWindow = (Stage) rootPane.getScene().getWindow();
            mainWindow.setTitle("Tichete Jira");
            mainWindow.setScene(nscene);

        } catch (IOException ex) {
            Logger.getLogger(Dashboard_Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // 4. Butonul de VerificareSD
    @FXML
    private void btnVerificareSD(ActionEvent e) {
        try {
            Parent verificareSDParent = FXMLLoader.load(getClass().getResource("/sample/verificareSD.fxml"));

            Scene nscene = new Scene(verificareSDParent);
            Stage mainWindow = (Stage) rootPane.getScene().getWindow();
            mainWindow.setTitle("Verificare SD");
            mainWindow.setScene(nscene);

        } catch (IOException ex) {
            Logger.getLogger(Dashboard_Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // 5. Butonul de VerificareSD
    @FXML
    private void btnSDTrimise(ActionEvent e) {
        try {
            Parent verificareSDParent = FXMLLoader.load(getClass().getResource("/sample/SdTrimise.fxml"));

            Scene nscene = new Scene(verificareSDParent);
            Stage mainWindow = (Stage) rootPane.getScene().getWindow();
            mainWindow.setTitle("SD-uri trimise");
            mainWindow.setScene(nscene);

        } catch (IOException ex) {
            Logger.getLogger(Dashboard_Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
