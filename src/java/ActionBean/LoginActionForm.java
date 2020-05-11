/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ActionBean;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author vaibhav
 */
public class LoginActionForm extends org.apache.struts.action.ActionForm {
    
 private  String username,passward;

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the passward
     */
    public String getPassward() {
        return passward;
    }

    /**
     * @param passward the passward to set
     */
    public void setPassward(String passward) {
        this.passward = passward;
    }
}
