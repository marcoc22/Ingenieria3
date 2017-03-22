/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.typeadapters.RuntimeTypeAdapterFactory;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.DatatypeConverter;
import model.ActaDecomiso;
import model.*;

/**
 *
 * @author Marco
 */
public class Servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ServletContext application = getServletContext();
        try (PrintWriter out = response.getWriter()) {
            
            response.setContentType("text/xml");
            RuntimeTypeAdapterFactory<Jsonable> rta = RuntimeTypeAdapterFactory.of(Jsonable.class, "_class")
                    .registerSubtype(Usuario.class, "Usuario")
                    .registerSubtype(ActaDecomiso.class, "ActaDecomiso")
                    .registerSubtype(ActaDonacion.class, "ActaDonacion")
                    .registerSubtype(ActaDevolucion.class, "ActaDevolucion")
                    .registerSubtype(Decomiso.class, "Decomiso")
                    .registerSubtype(Funcionario.class, "Funcionario")
                    .registerSubtype(Interesado.class, "Interesado")
                    .registerSubtype(Lugar.class, "Lugar")
                    .registerSubtype(Distrito.class, "Distrito")
                    .registerSubtype(Policia.class, "Policia")
                    .registerSubtype(Testigo.class, "Testigo");
            Gson gson = new GsonBuilder().registerTypeAdapterFactory(rta).setDateFormat("dd/MM/yyyy").create();
            String json;
            final String finalJson;
            String accion = request.getParameter("action");
            Integer res;
            Model model = (Model) request.getSession().getAttribute("model");
            ActaDecomiso actaDecomiso;
            ActaDonacion actaDonacion;
            ActaDevolucion actaDevolucion;
            Usuario usuario;
            Interesado interesado;
            List<Funcionario> funcionarios;
            List<Policia> policias;
            List<Usuario> usuarios;
            List<Decomiso> decomisos;
            List<Interesado> interesados;
            switch (accion) {
                case "userLogin":
                    if (model == null) {
                        model = new Model();
                        request.getSession().setAttribute("model", model);
                    }
                    json = request.getParameter("user");// se obtiene un json del cliente, proviene de un objeto Usuario
                    usuario = gson.fromJson(json, Usuario.class);
                    usuario = model.login(usuario.getNick(), usuario.getContrasena());
                    if (usuario != null) {
                        //Funcionario funcionario=model.obtenerFuncionario(String id);
                        request.getSession().setAttribute("usuario", usuario);// El objeto Usuario es enviado a la sesión
                        request.getSession().setAttribute("nick", usuario.getNick());
                        //request.getSession().setAttribute("funcionario", funcionario);
                    }
                    json = gson.toJson(usuario);
                    out.write(json);// Se envía el objeto Usuario como json al cliente
                    break;
                case "userLogout":
                    request.getSession().removeAttribute("usuario");
                    request.getSession().removeAttribute("nick");
                    request.getSession().removeAttribute("model");
                    request.getSession().invalidate();
                    break;
                case "ultimaActa":
                    int f = model.ultimaActaDecomiso();
                    if (f == -1) {
                        out.write(Integer.toString(1));
                    } else {
                        out.write(Integer.toString(f + 1));
                    }
                    break;
                case "ultimaActaDonacion":
                    int f1 = model.ultimaActaDonacion();
                    if (f1 == -1) {
                        out.write(Integer.toString(1));
                    } else {
                        out.write(Integer.toString(f1 + 1));
                    }
                    break;
                case "ultimaActaDestruccion":
                    int f2 = model.ultimaActaDestruccion();
                    if (f2 == -1) {
                        out.write(Integer.toString(1));
                    } else {
                        out.write(Integer.toString(f2 + 1));
                    }
                    break;
                case "ultimaActaDevolucion":
                    int f3 = model.ultimaActaDevolucion();
                    if (f3 == -1) {
                        out.write(Integer.toString(1));
                    } else {
                        out.write(Integer.toString(f3 + 1));
                    }
                    break;
                case "guardarActa":
                    
                    json = request.getParameter("actaDecomiso");
                    finalJson = new String(json.getBytes("iso-8859-1"), "UTF-8");
                    actaDecomiso = gson.fromJson(finalJson, ActaDecomiso.class);
                    Interesado _i = actaDecomiso.getInteresado();
                    int resFotografia = 0;
                    try {
                        String code_foto = _i.getFotografia().replaceAll(" ", "+");
                        if (!code_foto.equals("NA")) {
                            if(_i.getIdentificacion() == "NA"){
                                /*
                                
                                _i.setIdentificacion("NA" + model.obtenerUltimaFotoNA());
                                
                                */
                            }
                            String nombre_foto = _i.getIdentificacion() + ".jpg";
                            byte decoded[] = DatatypeConverter.parseBase64Binary(code_foto);
                            FileOutputStream fos = null;
                            String folderFotos = application.getRealPath("/") + "/Componentes/fotografias/";
                            fos = new FileOutputStream(folderFotos + nombre_foto);
                            fos.write(decoded);
                            fos.close();
                            resFotografia = 1;
                            if (resFotografia == 1) {
                                Interesado aaa = new Interesado();
                                aaa.setFotografia(folderFotos + nombre_foto);
                            }
                        }
                    } catch (Exception ex) {
                        throw new ServletException(ex.getMessage());
                    }
                    //boolean var = model.isInteresado(actaDecomiso.getInteresado());
                    res = model.guardarInteresado(actaDecomiso.getInteresado());
                    if (res != 2) {
                        res = model.getIdInteresado(actaDecomiso.getInteresado().getIdentificacion());
                        actaDecomiso.getInteresado().setIdInteresado(res);
                    }
                    //res = model.guardarPolicia(actaDecomiso.getPolicia()); ya no se hace
                    res = model.guardarTestigo(actaDecomiso.getTestigo());
                    int fin = model.ultimaActaDecomiso();
                    if (fin == -1) {
                        actaDecomiso.setIdDecomiso(1);
                    } else {
                        actaDecomiso.setIdDecomiso(fin + 1);
                    }
                    res = model.guardarActaDecomiso(actaDecomiso);
                    out.write(res.toString());// Se envía el objeto Usuario como json al cliente
                    break;
                case "guardarActaDonacion":
                    json = request.getParameter("actaDonacion");
                    finalJson = new String(json.getBytes("iso-8859-1"), "UTF-8");
                    actaDonacion = gson.fromJson(finalJson, ActaDonacion.class);
                    res = model.guardarPolicia(actaDonacion.getPolicia());
                    res = model.guardarActaDecomiso(actaDonacion.getDecomiso());
                    int ult = model.ultimaActaDonacion();
                    if (ult == -1) {
                        actaDonacion.setIdDonacion(1);
                    } else {
                        actaDonacion.setIdDonacion(ult + 1);
                    }
                    res = model.guardarActaDonacion(actaDonacion);
                    out.write(res.toString());
                    break;
                case "guardarActaDevolucion":
                    json = request.getParameter("actaDevolucion");
                    finalJson = new String(json.getBytes("iso-8859-1"), "UTF-8");
                    actaDevolucion = gson.fromJson(finalJson, ActaDevolucion.class);
                    model.guardarActaDecomiso(actaDevolucion.getDecomiso());
                    //boolean var = model.isInteresado(actaDecomiso.getInteresado());
                    res = model.guardarInteresado(actaDevolucion.getInteresado());
                    if (res != 2) {
                        res = model.getIdInteresado(actaDevolucion.getInteresado().getIdentificacion());
                        actaDevolucion.getInteresado().setIdInteresado(res);
                    }
                    //res = model.guardarPolicia(actaDevolucion.getPolicia());
                    int fin4 = model.ultimaActaDevolucion();
                    if (fin4 == -1) {
                        actaDevolucion.setIdDevolucion(1);
                    } else {
                        actaDevolucion.setIdDevolucion(fin4 + 1);
                    }
                    //res = model.guardarActaDecomiso(actaDevolucion.getDecomiso());
                    res = model.guardarActaDevolucion(actaDevolucion);
                    out.write(res.toString());
                    break;
                case "listadoFuncionarios":
                    funcionarios = model.listadoFuncionarios();
                    json = gson.toJson(funcionarios);
                    out.write(json);
                    break;
                case "listadoPolicias":
                    policias = model.listadoPolicias();
                    json = gson.toJson(policias);
                    out.write(json);
                    break;
                case "listadoInteresados":
                    interesados = model.listadoInteresados();
                    json = gson.toJson(interesados);
                    out.write(json);
                    break;
                case "listadoUsuarios":
                    usuarios = model.listadoUsuarios();
                    json = gson.toJson(usuarios);
                    out.write(json);
                    break;
                case "guardarUsuario":
                    json = request.getParameter("usuario");// se obtiene un json del cliente, proviene de un objeto Usuario
                    usuario = gson.fromJson(json, Usuario.class);
                    res = model.guardarUsuario(usuario);
                    out.write(res.toString());// Se envía el objeto Usuario como json al cliente
                    break;
                case "listadoDecomisos":
                    String fechaInicial = request.getParameter("fechaInicial");
                    String fechaFinal = request.getParameter("fechaFinal");
                    decomisos = model.listadoDecomisos(fechaInicial,fechaFinal);
                    json = gson.toJson(decomisos);
                    out.write(json);
                    break;
                case "getInteresado":
                    String cedula = request.getParameter("cedula");
                    interesado = model.getInteresado(cedula);
                    json = gson.toJson(interesado);
                    out.write(json);
                    break;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
