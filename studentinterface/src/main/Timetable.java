/**
 * Timetable.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package main;

public interface Timetable extends java.rmi.Remote {
    public java.lang.String insert(java.lang.String course_ID, java.lang.String dayOfWeek, java.lang.String startTime, java.lang.String endTime) throws java.rmi.RemoteException;
}
