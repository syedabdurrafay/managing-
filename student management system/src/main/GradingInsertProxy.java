package main;

public class GradingInsertProxy implements main.GradingInsert {
  private String _endpoint = null;
  private main.GradingInsert gradingInsert = null;
  
  public GradingInsertProxy() {
    _initGradingInsertProxy();
  }
  
  public GradingInsertProxy(String endpoint) {
    _endpoint = endpoint;
    _initGradingInsertProxy();
  }
  
  private void _initGradingInsertProxy() {
    try {
      gradingInsert = (new main.GradingInsertServiceLocator()).getGradingInsert();
      if (gradingInsert != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)gradingInsert)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)gradingInsert)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (gradingInsert != null)
      ((javax.xml.rpc.Stub)gradingInsert)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public main.GradingInsert getGradingInsert() {
    if (gradingInsert == null)
      _initGradingInsertProxy();
    return gradingInsert;
  }
  
  public java.lang.String insert(java.lang.String student_Name, java.lang.String course_ID, java.lang.String course, java.lang.String grade, java.lang.String result) throws java.rmi.RemoteException{
    if (gradingInsert == null)
      _initGradingInsertProxy();
    return gradingInsert.insert(student_Name, course_ID, course, grade, result);
  }
  
  
}