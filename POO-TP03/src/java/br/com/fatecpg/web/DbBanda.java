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
    private static ArrayList<CadastroAlbum> Album;
    private static ArrayList<CadastroMusica> Musica;
    
    public static ArrayList<CadastroBanda> getBandas(){
        if(Bandas == null){
            Bandas = new ArrayList<>();
            CadastroBanda b1 = new CadastroBanda();
            Bandas.add(b1);
        }
        return Bandas;
    }
    
    public static ArrayList<CadastroAlbum> getAlbuns(){
        if(Album == null){
            Album = new ArrayList<>();
            CadastroAlbum album = new CadastroAlbum();
            Album.add(album);
        }
        return Album;
    }
    
    public static ArrayList<CadastroMusica> getMusicas(){
        if(Musica == null){
            Musica = new ArrayList<>();
            CadastroMusica musica = new CadastroMusica();
            Musica.add(musica);
        }
        return Musica;
    }
        
}
