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
public class ActaDonacion implements Serializable,Jsonable{
    private int idDonacion;
    private Policia policia;
    private Date fecha;
    private String institucion;
    private String detalles;
    private ActaDecomiso decomiso;

    public ActaDonacion(int idDonacion) {
        this.idDonacion = idDonacion;
    }
    
    public ActaDonacion(int idDonacion, String institucion, Policia policia, ActaDecomiso decomiso) {
        this.idDonacion = idDonacion;
        this.institucion = institucion;
        this.policia = policia;
        this.decomiso = decomiso;
    }

    public int getIdDonacion() {
        return idDonacion;
    }

    public Policia getPolicia() {
        return policia;
    }

    public Date getFecha() {
        return fecha;
    }

    public String getInstitucion() {
        return institucion;
    }

    public String getDetalles() {
        return detalles;
    }

    public ActaDecomiso getDecomiso() {
        return decomiso;
    }

    public void setIdDonacion(int idDonacion) {
        this.idDonacion = idDonacion;
    }

    public void setPolicia(Policia policia) {
        this.policia = policia;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public void setInstitucion(String institucion) {
        this.institucion = institucion;
    }

    public void setDetalles(String detalles) {
        this.detalles = detalles;
    }

    public void setDecomiso(ActaDecomiso decomiso) {
        this.decomiso = decomiso;
    }
    
    
    
}
