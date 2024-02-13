package main;

public class RegisterProxy implements main.Register {
  private String _endpoint = null;
  private main.Register register = null;
  
  public RegisterProxy() {
    _initRegisterProxy();
  }
  
  public RegisterProxy(String endpoint) {
    _endpoint = endpoint;
    _initRegisterProxy();
  }
  
  private void _initRegisterProxy() {
    try {
      register = (new main.RegisterServiceLocator()).getRegister();
      if (register != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)register)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)register)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (register != null)
      ((javax.xml.rpc.Stub)register)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public main.Register getRegister() {
    if (register == null)
      _initRegisterProxy();
    return register;
  }
  
  public java.lang.String register(java.lang.String name, java.lang.String fathername, java.lang.String email, int contact, java.lang.String department, int semester, java.lang.String address, int enrollno) throws java.rmi.RemoteException{
    if (register == null)
      _initRegisterProxy();
    return register.register(name, fathername, email, contact, department, semester, address, enrollno);
  }
  
  
}