package main;

public class DeleteProxy implements main.Delete {
  private String _endpoint = null;
  private main.Delete delete = null;
  
  public DeleteProxy() {
    _initDeleteProxy();
  }
  
  public DeleteProxy(String endpoint) {
    _endpoint = endpoint;
    _initDeleteProxy();
  }
  
  private void _initDeleteProxy() {
    try {
      delete = (new main.DeleteServiceLocator()).getDelete();
      if (delete != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)delete)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)delete)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (delete != null)
      ((javax.xml.rpc.Stub)delete)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public main.Delete getDelete() {
    if (delete == null)
      _initDeleteProxy();
    return delete;
  }
  
  public java.lang.String delete(java.lang.String s_Name) throws java.rmi.RemoteException{
    if (delete == null)
      _initDeleteProxy();
    return delete.delete(s_Name);
  }
  
  
}