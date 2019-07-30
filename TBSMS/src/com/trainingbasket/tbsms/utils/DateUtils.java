package com.trainingbasket.tbsms.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {
	/**
	 * This function reads an date as a string value from the console and converts
	 * it to the date of specific format.
	 * 
	 * @param usermsg    This is the message for the user to enter date in given
	 *                   format.
	 * @param warningmsg This message is raised if the user wants to enter date in
	 *                   any other format as specified.
	 * @return date Returns a date.
	 * @exception ParseException Signals that an error has been reached unexpectedly
	 *                           while parsing.
	 * @exception IOException    Exceptions produced by failed or interrupted I/O
	 *                           operations.
	 */

	BufferedReader reader = null;

	public DateUtils() {
		// TODO Auto-generated constructor stub
	}

	public static Date readDate(String strDate) throws ParseException {
		Date date = null;
		SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
		date = (Date) format.parse(strDate);
		return date;
	}
	
	
}
