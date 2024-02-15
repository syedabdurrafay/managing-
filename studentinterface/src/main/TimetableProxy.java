package main;

public class TimetableProxy implements main.Timetable {
  private String _endpoint = null;
  private main.Timetable timetable = null;
  
  public TimetableProxy() {
    _initTimetableProxy();
  }
  
  public TimetableProxy(String endpoint) {
    _endpoint = endpoint;
    _initTimetableProxy();
  }
  
  private void _initTimetableProxy() {
    try {
      timetable = (new main.TimetableServiceLocator()).getTimetable();
      if (timetable != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)timetable)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)timetable)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (timetable != null)
      ((javax.xml.rpc.Stub)timetable)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public main.Timetable getTimetable() {
    if (timetable == null)
      _initTimetableProxy();
    return timetable;
  }
  
  public java.lang.String insert(java.lang.String course_ID, java.lang.String dayOfWeek, java.lang.String startTime, java.lang.String endTime) throws java.rmi.RemoteException{
    if (timetable == null)
      _initTimetableProxy();
    return timetable.insert(course_ID, dayOfWeek, startTime, endTime);
  }
  
  
}