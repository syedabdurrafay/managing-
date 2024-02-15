/**
 * TimetableServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package main;

public class TimetableServiceLocator extends org.apache.axis.client.Service implements main.TimetableService {

    public TimetableServiceLocator() {
    }


    public TimetableServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public TimetableServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for Timetable
    private java.lang.String Timetable_address = "http://localhost:8080/student_management_system/services/Timetable";

    public java.lang.String getTimetableAddress() {
        return Timetable_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String TimetableWSDDServiceName = "Timetable";

    public java.lang.String getTimetableWSDDServiceName() {
        return TimetableWSDDServiceName;
    }

    public void setTimetableWSDDServiceName(java.lang.String name) {
        TimetableWSDDServiceName = name;
    }

    public main.Timetable getTimetable() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(Timetable_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getTimetable(endpoint);
    }

    public main.Timetable getTimetable(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            main.TimetableSoapBindingStub _stub = new main.TimetableSoapBindingStub(portAddress, this);
            _stub.setPortName(getTimetableWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setTimetableEndpointAddress(java.lang.String address) {
        Timetable_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (main.Timetable.class.isAssignableFrom(serviceEndpointInterface)) {
                main.TimetableSoapBindingStub _stub = new main.TimetableSoapBindingStub(new java.net.URL(Timetable_address), this);
                _stub.setPortName(getTimetableWSDDServiceName());
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
        if ("Timetable".equals(inputPortName)) {
            return getTimetable();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://main", "TimetableService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://main", "Timetable"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("Timetable".equals(portName)) {
            setTimetableEndpointAddress(address);
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
