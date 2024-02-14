package main;

public class GradingDeleteProxy implements main.GradingDelete {
  private String _endpoint = null;
  private main.GradingDelete gradingDelete = null;
  
  public GradingDeleteProxy() {
    _initGradingDeleteProxy();
  }
  
  public GradingDeleteProxy(String endpoint) {
    _endpoint = endpoint;
    _initGradingDeleteProxy();
  }
  
  private void _initGradingDeleteProxy() {
    try {
      gradingDelete = (new main.GradingDeleteServiceLocator()).getGradingDelete();
      if (gradingDelete != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)gradingDelete)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)gradingDelete)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (gradingDelete != null)
      ((javax.xml.rpc.Stub)gradingDelete)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public main.GradingDelete getGradingDelete() {
    if (gradingDelete == null)
      _initGradingDeleteProxy();
    return gradingDelete;
  }
  
  public java.lang.String delete(java.lang.String student_Name, java.lang.String course_ID) throws java.rmi.RemoteException{
    if (gradingDelete == null)
      _initGradingDeleteProxy();
    return gradingDelete.delete(student_Name, course_ID);
  }
  
  
}