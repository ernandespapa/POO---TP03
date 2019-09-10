/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.web;

import java.util.ArrayList;

/**
 *
 * @author ernandes
 */
public class DbBanda {
     private static ArrayList<CadastroBanda> Bandas;
    
    public static ArrayList<CadastroBanda> getBandas(){
        if(Bandas == null){
            Bandas = new ArrayList<>();
            CadastroBanda b1 = new CadastroBanda();
            b1.setDados("Metallica");
            Bandas.add(b1);
        }
        return Bandas;
    }
    
    
}
