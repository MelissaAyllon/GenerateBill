warning: in the working copy of 'src/main/java/com/example/generatebill/HelloController.java', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'src/main/resources/com/example/generatebill/hello-view.fxml', LF will be replaced by CRLF the next time Git touches it
[1mdiff --git a/src/main/java/com/example/generatebill/HelloController.java b/src/main/java/com/example/generatebill/HelloController.java[m
[1mindex 37810dd..f923631 100644[m
[1m--- a/src/main/java/com/example/generatebill/HelloController.java[m
[1m+++ b/src/main/java/com/example/generatebill/HelloController.java[m
[36m@@ -1,14 +1,47 @@[m
 package com.example.generatebill;[m
 [m
[32m+[m[32mimport javafx.event.ActionEvent;[m
 import javafx.fxml.FXML;[m
[31m-import javafx.scene.control.Label;[m
[32m+[m[32mimport javafx.fxml.FXMLLoader;[m
[32m+[m[32mimport javafx.scene.Node;[m
[32m+[m[32mimport javafx.scene.Parent;[m
[32m+[m[32mimport javafx.scene.Scene;[m
[32m+[m[32mimport javafx.scene.control.Button;[m
[32m+[m[32mimport javafx.stage.Stage;[m
[32m+[m
[32m+[m[32mimport java.io.IOException;[m
[32m+[m
 [m
 public class HelloController {[m
[32m+[m
     @FXML[m
[31m-    private Label welcomeText;[m
[32m+[m[32m    Button registrate;[m
[32m+[m[32m    @FXML[m
[32m+[m[32m    Button iniciaSesion;[m
[32m+[m[32m    Stage stage;[m
[32m+[m[32m    Parent root;[m
[32m+[m[32m    Scene scene;[m
[32m+[m
 [m
[32m+[m[32m    /** No es necesario un initialize pues no queremos que aparezca nada por el momento **/[m
     @FXML[m
[31m-    protected void onHelloButtonClick() {[m
[31m-        welcomeText.setText("Welcome to JavaFX Application!");[m
[32m+[m[32m    public void initialize(){[m
[32m+[m[32m        registrate.setOnAction(event -> {[m
[32m+[m[32m            try {[m
[32m+[m[32m                registro(event);[m
[32m+[m[32m            } catch (IOException e) {[m
[32m+[m[32m                throw new RuntimeException(e);[m
[32m+[m[32m            }[m
[32m+[m[32m        });[m
     }[m
[32m+[m
[32m+[m[32m    public void registro(ActionEvent event) throws IOException {[m
[32m+[m[32m        root = FXMLLoader.load(getClass().getResource("Registrate.fxml"));[m
[32m+[m[32m        scene = new Scene(root);[m
[32m+[m[32m        stage = (Stage) ((Node) event.getSource()).getScene().getWindow();[m
[32m+[m[32m        stage.setScene(scene);[m
[32m+[m[32m        stage.show();[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m
 }[m
\ No newline at end of file[m
[1mdiff --git a/src/main/resources/com/example/generatebill/hello-view.fxml b/src/main/resources/com/example/generatebill/hello-view.fxml[m
[1mindex 97d1aa6..f078955 100644[m
[1m--- a/src/main/resources/com/example/generatebill/hello-view.fxml[m
[1m+++ b/src/main/resources/com/example/generatebill/hello-view.fxml[m
[36m@@ -1,16 +1,12 @@[m
 <?xml version="1.0" encoding="UTF-8"?>[m
 [m
[31m-<?import javafx.geometry.Insets?>[m
[31m-<?import javafx.scene.control.Label?>[m
[31m-<?import javafx.scene.layout.VBox?>[m
[32m+[m[32m<?import javafx.scene.control.*?>[m
[32m+[m[32m<?import javafx.scene.layout.*?>[m
 [m
[31m-<?import javafx.scene.control.Button?>[m
[31m-<VBox alignment="CENTER" spacing="20.0" xmlns:fx="http://javafx.com/fxml"[m
[31m-      fx:controller="com.example.generatebill.HelloController">[m
[31m-    <padding>[m
[31m-        <Insets bottom="20.0" left="20.0" right="20.0" top="20.0"/>[m
[31m-    </padding>[m
[31m-[m
[31m-    <Label fx:id="welcomeText"/>[m
[31m-    <Button text="Hello!" onAction="#onHelloButtonClick"/>[m
[31m-</VBox>[m
[32m+[m[32m<AnchorPane maxHeight="-Infinity" maxWidth="-Infinity" minHeight="-Infinity" minWidth="-Infinity" prefHeight="400.0" prefWidth="600.0" xmlns="http://javafx.com/javafx/17.0.2-ea" xmlns:fx="http://javafx.com/fxml/1" fx:controller="com.example.generatebill.HelloController">[m
[32m+[m[32m   <children>[m
[32m+[m[32m      <Button fx:id="registrate" layoutX="119.0" layoutY="311.0" mnemonicParsing="false" onAction="#registro" prefHeight="30.0" prefWidth="101.0" text="Registrate" AnchorPane.leftAnchor="119.0" AnchorPane.rightAnchor="380.0" AnchorPane.topAnchor="311.0" />[m
[32m+[m[32m      <Button fx:id="iniciaSesion" layoutX="477.0" layoutY="281.0" mnemonicParsing="false" prefHeight="30.0" prefWidth="101.0" text="Inicia Sesion" />[m
[32m+[m[32m      <Label layoutX="220.0" layoutY="55.0" prefHeight="17.0" prefWidth="131.0" text="GENERA TUS FACTURAS" AnchorPane.bottomAnchor="328.0" AnchorPane.leftAnchor="220.0" AnchorPane.rightAnchor="249.0" AnchorPane.topAnchor="55.0" />[m
[32m+[m[32m   </children>[m
[32m+[m[32m</AnchorPane>[m
