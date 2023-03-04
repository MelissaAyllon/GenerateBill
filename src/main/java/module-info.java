module com.example.generatebill {
    requires javafx.controls;
    requires javafx.fxml;


    opens com.example.generatebill to javafx.fxml;
    exports com.example.generatebill;
}