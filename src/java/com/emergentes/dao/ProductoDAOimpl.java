package com.emergentes.dao;

import com.emergentes.modelo.Producto;
import com.emergentes.utiles.ConexionBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductoDAOimpl extends ConexionBD implements ProductoDAO {

    @Override
    public void insert(Producto pro) throws Exception {
        try{
            this.conectar();
            String sql = "insert into productos(descripcion, stock) values (?,?)";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setString(1, pro.getDescripcion());
            ps.setInt(2, pro.getStock());
          
            ps.executeUpdate();
        }catch(Exception e){
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public void update(Producto pro) throws Exception {
        try{
            this.conectar();
            String sql = "update productos set descripcion=?, stock=? where id =?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setString(1, pro.getDescripcion());
            ps.setInt(2, pro.getStock());
            ps.setInt(3, pro.getId());
            
            ps.executeUpdate();
        }catch(Exception e){
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public void delete(int id) throws Exception {
        try{
            this.conectar();
            String sql = "delete from productos where id =?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, id);
            
            ps.executeUpdate();
        }catch(Exception e){
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public Producto getById(int id) throws Exception {
        Producto prod = new Producto();
        try {
            this.conectar();
            String sql = "select * from productos where id =?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                prod.setId(rs.getInt("id"));
                prod.setDescripcion(rs.getString("descripcion"));
                prod.setStock(rs.getInt("stock"));
            }
        } catch (Exception e) {
            throw e;
        } finally{
            this.desconectar();
        }
        return prod;
    }

    @Override
    public List<Producto> getAll() throws Exception {
        List<Producto> lista = null;
        try {
            this.conectar();
            String sql = "select * from productos";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            lista = new ArrayList<Producto>();
            while(rs.next()){
                Producto prod = new Producto();
                prod.setId(rs.getInt("id"));
                prod.setDescripcion(rs.getString("descripcion"));
                prod.setStock(rs.getInt("stock"));
                
                lista.add(prod);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return lista;
    }
    
}
