/**
 * GradingInsertServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package main;

public class GradingInsertServiceLocator extends org.apache.axis.client.Service implements main.GradingInsertService {

    public GradingInsertServiceLocator() {
    }


    public GradingInsertServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public GradingInsertServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for GradingInsert
    private java.lang.String GradingInsert_address = "http://localhost:8080/student_management_system/services/GradingInsert";

    public java.lang.String getGradingInsertAddress() {
        return GradingInsert_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String GradingInsertWSDDServiceName = "GradingInsert";

    public java.lang.String getGradingInsertWSDDServiceName() {
        return GradingInsertWSDDServiceName;
    }

    public void setGradingInsertWSDDServiceName(java.lang.String name) {
        GradingInsertWSDDServiceName = name;
    }

    public main.GradingInsert getGradingInsert() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(GradingInsert_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getGradingInsert(endpoint);
    }

    public main.GradingInsert getGradingInsert(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            main.GradingInsertSoapBindingStub _stub = new main.GradingInsertSoapBindingStub(portAddress, this);
            _stub.setPortName(getGradingInsertWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setGradingInsertEndpointAddress(java.lang.String address) {
        GradingInsert_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (main.GradingInsert.class.isAssignableFrom(serviceEndpointInterface)) {
                main.GradingInsertSoapBindingStub _stub = new main.GradingInsertSoapBindingStub(new java.net.URL(GradingInsert_address), this);
                _stub.setPortName(getGradingInsertWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("GradingInsert".equals(inputPortName)) {
            return getGradingInsert();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://main", "GradingInsertService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://main", "GradingInsert"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("GradingInsert".equals(portName)) {
            setGradingInsertEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
