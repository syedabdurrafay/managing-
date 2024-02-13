/**
 * Register.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package main;

public interface Register extends java.rmi.Remote {
    public java.lang.String register(java.lang.String name, java.lang.String fathername, java.lang.String email, int contact, java.lang.String department, int semester, java.lang.String address, int enrollno) throws java.rmi.RemoteException;
}
