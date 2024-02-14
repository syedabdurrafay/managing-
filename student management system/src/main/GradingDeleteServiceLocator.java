/**
 * GradingDeleteServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package main;

public class GradingDeleteServiceLocator extends org.apache.axis.client.Service implements main.GradingDeleteService {

    public GradingDeleteServiceLocator() {
    }


    public GradingDeleteServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public GradingDeleteServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for GradingDelete
    private java.lang.String GradingDelete_address = "http://localhost:8080/student_management_system/services/GradingDelete";

    public java.lang.String getGradingDeleteAddress() {
        return GradingDelete_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String GradingDeleteWSDDServiceName = "GradingDelete";

    public java.lang.String getGradingDeleteWSDDServiceName() {
        return GradingDeleteWSDDServiceName;
    }

    public void setGradingDeleteWSDDServiceName(java.lang.String name) {
        GradingDeleteWSDDServiceName = name;
    }

    public main.GradingDelete getGradingDelete() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(GradingDelete_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getGradingDelete(endpoint);
    }

    public main.GradingDelete getGradingDelete(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            main.GradingDeleteSoapBindingStub _stub = new main.GradingDeleteSoapBindingStub(portAddress, this);
            _stub.setPortName(getGradingDeleteWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setGradingDeleteEndpointAddress(java.lang.String address) {
        GradingDelete_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (main.GradingDelete.class.isAssignableFrom(serviceEndpointInterface)) {
                main.GradingDeleteSoapBindingStub _stub = new main.GradingDeleteSoapBindingStub(new java.net.URL(GradingDelete_address), this);
                _stub.setPortName(getGradingDeleteWSDDServiceName());
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
        if ("GradingDelete".equals(inputPortName)) {
            return getGradingDelete();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://main", "GradingDeleteService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://main", "GradingDelete"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("GradingDelete".equals(portName)) {
            setGradingDeleteEndpointAddress(address);
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
