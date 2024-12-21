/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.account;
import model.category;
import model.product;
import model.cart;
/**
 *
 * @author vh69
 */
public class DAO extends DBContext {
    public List<product> getAllProduct(){
        List<product> list=new ArrayList<>();
        String sql="SELECT * FROM product";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                list.add(new product(rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public product getLast(){
        String sql="SELECT  top 1 * FROM product\n" +
                   "order by id desc";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                return new product(rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public List<product> getProductByCategoryID(String cid){
        List<product> list=new ArrayList<>();
        String sql="SELECT * FROM product\n" +
                   "WHERE cateID = ?";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,cid);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                list.add(new product(rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public List<category> getAllCategory(){
        List<category> list=new ArrayList<>();
        String sql="SELECT * FROM Category";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                list.add(new category(rs.getInt(1),
                rs.getString(2)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public product getProductByID(String id){
        String sql="SELECT * FROM product\n" +
                   "WHERE id = ?";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,id);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                return new product(rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public List<product> getProductByName(String txtSearch){
        List<product> list=new ArrayList<>();
        String sql="SELECT * FROM product\n" +
                   "WHERE name LIKE ?";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,"%"+txtSearch+"%");
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                list.add(new product(rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public account login(String user, String pass){
        String sql="SELECT * FROM Account\n" +
                   "WHERE [user] =?\n" +
                   "AND pass=?";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,user);
            st.setString(2,pass);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                return new account(rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getInt(4),
                rs.getInt(5));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public account checkAccountExist(String user){
        String sql="SELECT * FROM Account\n" +
                   "WHERE [user] =?";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,user);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                return new account(rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getInt(4),
                rs.getInt(5));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public account checkAccountExistByUsernameAndEmail(String user, String email) {
        String sql = "select * from Account where [user]=? and [email]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,user);
            st.setString(2,email);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }
    public void signup(String user, String pass){
        String sql="INSERT INTO Account\n" +
                "values(?,?,0,0)";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,user);
            st.setString(2,pass);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public List<product> getProductBySellID(int sid){
        List<product> list=new ArrayList<>();
        String sql="SELECT * FROM product\n" +
                   "WHERE sell_ID = ?";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1,sid);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                list.add(new product(rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public void deleteProduct(String pid) {
        String sql = "delete from product\n"
                + "where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,pid);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void insertProduct(String name, String image,
            String title, String description, String category, int sid) {
        String sql = "INSERT [dbo].[product] \n"
                + "([name], [image], [title], [description], [cateID], [sell_ID])\n"
                + "VALUES(?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, image);
            st.setString(3, title);
            st.setString(4, description);
            st.setString(5, category);
            st.setInt(6, sid);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void editProduct(String name, String image,
            String title, String description, String category, String pid) {
        String sql = "update product\n"
                + "set [name] = ?,\n"
                + "[image] = ?,\n"
                + "title = ?,\n"
                + "[description] = ?,\n"
                + "cateID = ?\n"
                + "where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, image);
            st.setString(3, title);
            st.setString(4, description);
            st.setString(5, category);
            st.setString(6, pid);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public List<cart> insertCart(int accountID, int productID, int amount){
        List<cart> list=new ArrayList<>();
        String sql="insert Cart(AccountID, ProductID, Amount)\n"
        		+ "values(?,?,?)";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1,accountID);
            st.setInt(2,productID);
            st.setInt(3,amount);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public List<cart> getCartByAccountID(int accountID) {
    	 List<cart> list = new ArrayList<>();
        String sql = "select * from Cart where AccountID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, accountID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new cart(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public cart checkCartExist(int accountID,int productID) {

       String query = "select * from Cart\n"
       		+ "where AccountID = ? and ProductID = ?";
       try {
           PreparedStatement st=connection.prepareStatement(query);
           st.setInt(1, accountID);
           st.setInt(2, productID);
           ResultSet rs=st.executeQuery();
           while (rs.next()) {
               return new cart(rs.getInt(1),
                       rs.getInt(2),
                       rs.getInt(3));
           }
       } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
       }
       return null;
    }
    public void editAmountCart(int accountID, int productID, int amount) {
        String query = "update Cart set [Amount]=?\n"
        		+ "where [AccountID]=? and [ProductID]=?";
        try {
            PreparedStatement st=connection.prepareStatement(query);
            st.setInt(1, amount);
            st.setInt(2, accountID);
            st.setInt(3, productID);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void deleteCart(int productID) {
        String query = "delete from Cart where ProductID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setInt(1, productID);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void deleteCartByAccountID(int accountID) {
        String query = "delete from Cart\n"
        		+ "where AccountID=?";
        try {
            PreparedStatement st=connection.prepareStatement(query);
            st.setInt(1, accountID);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
