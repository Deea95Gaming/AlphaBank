import javafx.fxml.FXML;
import javafx.scene.control.TextField;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;

public class MainViewController {

    @FXML
    private TextField textField1;

    @FXML
    private TextField textField2;

    @FXML
    private void handleShowData() {
        try {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("DataView.fxml"));
            Parent root = loader.load();

            // Obține controller-ul pentru DataView
            DataViewController dataController = loader.getController();

            // Setează datele în DataViewController
            dataController.setData(textField1.getText(), textField2.getText());

            // Crează și afișează noua scenă
            Stage stage = new Stage();
            stage.setTitle("Date Introduse");
            stage.setScene(new Scene(root));
            stage.show();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
