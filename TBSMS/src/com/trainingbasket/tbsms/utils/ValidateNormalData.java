package com.trainingbasket.tbsms.utils;

public class ValidateNormalData {
	public static boolean isValid(String... params) {
		boolean isValid = true;
		for (int i = 0; i < params.length; i++) {
			if (params[i].trim().equals("")) {
				isValid = false;
			}
		}
		return isValid;
	}
}
