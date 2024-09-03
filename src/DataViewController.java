import javafx.fxml.FXML;
import javafx.scene.control.Label;

public class DataViewController {

    @FXML
    private Label label1;

    @FXML
    private Label label2;

    public void setData(String data1, String data2) {
        label1.setText(data1);
        label2.setText(data2);
    }
}
