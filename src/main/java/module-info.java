module com.example.generatebill {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;


    opens com.example.generatebill to javafx.fxml;
    exports com.example.generatebill;
}