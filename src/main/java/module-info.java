module com.example.generatebill {
    requires javafx.controls;
    requires javafx.fxml;

    requires org.controlsfx.controls;
    requires org.kordamp.bootstrapfx.core;

    opens com.example.generatebill to javafx.fxml;
    exports com.example.generatebill;
}