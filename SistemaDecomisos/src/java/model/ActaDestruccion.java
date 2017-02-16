/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Mery Zúñiga
 */
public class ActaDestruccion implements Serializable,Jsonable{
    private int idDestrucion;
    private Date fecha;
    private Policia policia;
    private Testigo testigo1;
    private Testigo testigo2;
    private String lugar;
    private String encargado;
    private ActaDecomiso actaDecomiso;

    public ActaDestruccion() {
    }

    public ActaDestruccion(int idDestrucion, Date fecha, Policia policia, Testigo testigo1, Testigo testigo2, String lugar, String encargado, ActaDecomiso actaDecomiso) {
        this.idDestrucion = idDestrucion;
        this.fecha = fecha;
        this.policia = policia;
        this.testigo1 = testigo1;
        this.testigo2 = testigo2;
        this.lugar = lugar;
        this.encargado = encargado;
        this.actaDecomiso = actaDecomiso;
    }

    public int getIdDestrucion() {
        return idDestrucion;
    }

    public Date getFecha() {
        return fecha;
    }

    public Policia getPolicia() {
        return policia;
    }

    public Testigo getTestigo1() {
        return testigo1;
    }

    public Testigo getTestigo2() {
        return testigo2;
    }

    public String getLugar() {
        return lugar;
    }

    public String getEncargado() {
        return encargado;
    }

    public ActaDecomiso getActaDecomiso() {
        return actaDecomiso;
    }

    public void setIdDestrucion(int idDestrucion) {
        this.idDestrucion = idDestrucion;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public void setPolicia(Policia policia) {
        this.policia = policia;
    }

    public void setTestigo1(Testigo testigo1) {
        this.testigo1 = testigo1;
    }

    public void setTestigo2(Testigo testigo2) {
        this.testigo2 = testigo2;
    }

    public void setLugar(String lugar) {
        this.lugar = lugar;
    }

    public void setEncargado(String encargado) {
        this.encargado = encargado;
    }

    public void setActaDecomiso(ActaDecomiso actaDecomiso) {
        this.actaDecomiso = actaDecomiso;
    }
    
    
}
