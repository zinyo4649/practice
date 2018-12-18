package com.webservice;

import javax.jws.HandlerChain;
import javax.jws.WebMethod;
import javax.jws.WebService;

@HandlerChain(file = "handler-chain.xml")
@WebService
public class CrunchifyTestCalc {
	@WebMethod
	public float addValue(float value) {
		return (value + 10);
	}
	
	@WebMethod
	public float subtractValue(float value) {
		return (value - 10);
	}
	
}
