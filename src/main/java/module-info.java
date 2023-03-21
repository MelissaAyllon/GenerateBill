module com.example.generatebill {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql; /* esto arreglo que pudiera usar el api de mysql jdbc*/


    opens com.example.generatebill to javafx.fxml;
    exports com.example.generatebill;
}