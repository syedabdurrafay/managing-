/**
 * RegisterService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package main;

public interface RegisterService extends javax.xml.rpc.Service {
    public java.lang.String getRegisterAddress();

    public main.Register getRegister() throws javax.xml.rpc.ServiceException;

    public main.Register getRegister(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
