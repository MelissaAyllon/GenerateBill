package com.example.generatebill;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.stage.Stage;

import java.io.IOException;


public class HelloController {

    @FXML
    Button registrate;
    @FXML
    Button iniciaSesion;
    Stage stage;
    @FXML
    Parent root;
    Scene scene;


    /** No es necesario un initialize pues no queremos que aparezca nada por el momento **/
    @FXML
    public void initialize(){
        registrate.setOnAction(event -> {
            try {
                registro(event);
            } catch (IOException e) {
                throw new RuntimeException("No se ha obtenido el evento");
            }
        });
        iniciaSesion.setOnAction(event -> {
            try {
                inicioSesion(event);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        });
    }

    public void registro(ActionEvent event) throws IOException {
        root = FXMLLoader.load(getClass().getResource("Registrate.fxml"));
        scene = new Scene(root);
        stage = (Stage) ((Node) event.getSource()).getScene().getWindow();
        stage.setScene(scene);
        stage.show();
    }

    public void inicioSesion(ActionEvent event) throws IOException {
        root = FXMLLoader.load(getClass().getResource("InicioSesion.fxml"));
        scene = new Scene(root);
        stage = (Stage) ((Node) event.getSource()).getScene().getWindow();
        stage.setScene(scene);
        stage.show();
    }

}