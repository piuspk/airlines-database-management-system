import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

import org.javatuples.Quartet;
import org.javatuples.Septet;
import org.javatuples.Ennead;

public class StaffSystem 
{	
	public static void main (String[] args)
	{
		Scanner input = new Scanner(System.in);
		System.out.println("\tAIRLINE STAFF'SYSTEM\n");
		
		while(true)
		{
			System.out.println(
			"[1]  Add customer\n" +
			"[2]  Edit cusomer information\n" + 
			"[3]  Find customers by name\n" +
			"[4]  Add flight\n" +
			"[5]  Edit flight\n" +
			"[6]  Delete flight\n" +
			"[7]  Book flight\n" +
			"[8]  Cancel flight\n" +
			"[9]  View all flights starting from a particular day\n" +
			"[10] Archive flights\n" + 
			"[11] View list of airtport locations\n" +
			"[12] View all flights available starting today and how many seats are left\n" +
			"[13] View all flight from a particular airline\n" +
			"[14] View all currently active airlines\n" +
			"[15] View the passengers of a certain flight\n" +
			"[16] View all planes and their specs\n" +
			"[17] Update Luggage\n"+
			"[18] Exit application");
			
			int choice = input.nextInt();
		
			switch(choice)
			{
				case 1: 
						addCustomer();
						break;
				
				case 2:
						editCustomerInformation();
						break;
						
				case 3:
						findCustomerByName();
						break;
				
				case 4: 
						addFlight();
						break;
						
				case 5:	
						editFlight();
						break;	
				
				case 6:
						deleteFlight();
						break;
				
				case 7:
						bookFlight();				
						break;
					
				case 8: 
						cancelFlight();
						break;
						
				case 9:
						viewAllFlightsStartingFromAParticularDay();
						break;
						
				case 10:
						archiveFlights();
						break;
						
				case 11:
						viewListofAirportLocations();
						break;
					
				case 12:
						viewAllFlightsAvailableStartingTodayWithSeats();
						break;
					
				case 13:
						viewAllFlightsFromAParticularAirline();
						break;
					
				case 14:
						viewAllCurrentlyActiveAirlines();
						break;
					
				case 15:
						viewThePassengersOfACertainFlight();
						break;
					
				case 16:
						viewAllPlanesAndTheirSpecs();
						break;
				case 17:
					UpdateLuggage();
					break;
				case 18: 
						System.out.println("Exit");
						System.exit(0);
						break;
			}	
		}
	}
	
	private static boolean isValid(String datetime)
	{
		if (datetime.trim().equals(""))
		{
		    return true;
		}
		else 
		{
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			sdf.setLenient(false);
			
			try 
			{	
				sdf.parse(datetime);	
			} 
			catch (ParseException e) 
			{
				return false;
			}
			return true;
		} 
	}
	private static boolean isValidDate(String date)
	{
		if (date.trim().equals(""))
		{
		    return true;
		}
		else 
		{
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			sdf.setLenient(false);
			
			try 
			{	
				sdf.parse(date);	
			} 
			catch (ParseException e) 
			{
				return false;
			}
			return true;
		} 
	}
	
	private static boolean isBefore(String dDatetime, String aDatetime) throws ParseException
	{
			SimpleDateFormat sdfD = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			sdfD.setLenient(false);
			SimpleDateFormat sdfA = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			sdfA.setLenient(false);
			
			if(sdfA.parse(aDatetime).before(sdfD.parse(dDatetime)))
				return true;
			else
				return false;
	}
	
	public static boolean isEmpty(ArrayList list)
	{
		if(list.size()==0)
			return true;
		return false;
	}
	
	public static void addCustomer()
	{
		Scanner input = new Scanner(System.in);
		boolean userInput;
		String fName = "", lName = "", age = null, phone = null, email = null;
		
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter first name: ");
				fName += input.nextLine();
				if(!fName.matches("^[\\p{L} .'-]+$"))
					throw new Exception();
			}
			catch(Exception e)
			{
				System.out.println("Invalid first name. Please re-enter first name.");
				userInput = false;
			}
		} 
		while(!userInput);
		
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter last name: ");
				lName += input.nextLine();
				if(!lName.matches("^[\\p{L} .'-]+$"))
					throw new Exception();
			}
			catch(Exception e)
			{
				System.out.println("Invalid last name. Please re-enter last name.");
				userInput = false;
			}
		} 
		while(!userInput);
				
		do	
		{
			userInput = true;
			try 
			{
				System.out.println("Enter age: ");
				age = input.next();
				input.nextLine();
				if(!age.matches("[0-9_]+"))
					throw new Exception();
			}
			catch(Exception e)
			{
				System.out.println("Invalid age. Please re-enter an integer.");
				userInput = false;
			}
		} 
		while(!userInput);
		
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter phone number: ");
				phone = input.next();
				input.nextLine();
				if(!phone.matches("[0-9_]+"))
					throw new Exception();
				else
					phone = phone.replaceFirst("(\\d{3})(\\d{3})(\\d+)", "($1) $2-$3");
			}
			catch(Exception e)
			{
				System.out.println("Invalid phone number. Please re-enter phone number.");
				userInput = false;
			}
		} 
		while(!userInput);
				
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter email: ");
				email = input.next();
				input.nextLine();
				if(!email.matches( "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$"))
					throw new Exception();
			}
			catch(Exception e)
			{
				System.out.println("Invalid email. Please re-enter email");
				userInput = false;
			}
		} 
		while(!userInput);

		AirportJDBC.insertPerson(fName,lName,Integer.parseInt(age),phone,email);
		System.out.println("Contact [" + fName + ", " + lName + "] successfully stored with Age: [" 
		+ age + "], Phone: [" + phone + "], Email: [" + email + "]\n");
	}
	
	public static void editCustomerInformation()
	{
		Scanner input = new Scanner(System.in);
		boolean userInput;
		String contactId = null, fName = "", lName = "", age = null, phone = null, email = null; 
		
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter new first name: ");
				fName += input.nextLine();
				if(!fName.matches("^[\\p{L} .'-]+$"))
					throw new Exception();
				}
				catch(Exception e)
				{
					System.out.println("Invalid new first name. Please re-enter new first name.");
					userInput = false;
				}
		} 
		while(!userInput);
		
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter new last name: ");
				lName += input.nextLine();
				if(!lName.matches("^[\\p{L} .'-]+$"))
					throw new Exception();
			}
			catch(Exception e)
			{
				System.out.println("Invalid new last name. Please re-enter new last name.");
				userInput = false;
			}
		} 
		while(!userInput);
		
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter Contact ID: ");
				contactId = input.next();
				input.nextLine();
				if(!contactId.matches("[0-9_]+"))
					throw new Exception();
				try 
				{
					if(!AirportJDBC.checkCustomerExists(Integer.parseInt(contactId)))
						throw new Exception();
				}
				catch(Exception e)
				{
					System.out.println("ID does not exist.");
					userInput = false;
				}
			}
			catch(Exception e)
			{
				System.out.println("Invalid Contact ID. Please re-enter valid Contact ID.");
				userInput = false;
			}
		} 
		while(!userInput);
				
		do	
		{
			userInput = true;
			try 
			{
				System.out.println("Enter new age: ");
				age = input.next();
				input.nextLine();
				if(!age.matches("[0-9_]+"))
					throw new Exception();
			}
			catch(Exception e)
			{
				System.out.println("Invalid new age. Please re-enter an age.");
				userInput = false;
			}
		} 
		while(!userInput);
		
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter new phone number: ");
				phone = input.next();
				input.nextLine();
				if(!phone.matches("[0-9_]+"))
					throw new Exception();
				else
					phone = phone.replaceFirst("(\\d{3})(\\d{3})(\\d+)", "($1) $2-$3");
			}
			catch(Exception e)
			{
				System.out.println("Invalid new phone number. Please re-enter new phone number.");
				userInput = false;
			}
		} 
		while(!userInput);
				
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter new email: ");
				email = input.next();
				input.nextLine();
				if(!email.matches( "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$"))
					throw new Exception();
			}
			catch(Exception e)
			{
				System.out.println("Invalid new email. Please re-enter new email");
				userInput = false;
			}
		} while(!userInput);

		AirportJDBC.updatePerson(Integer.parseInt(contactId),fName,lName,Integer.parseInt(age),phone,email);
		System.out.println("Contact [" + fName + ", " + lName + "] successfully updated with Age: ["
		+ age + "], Phone: [" + phone + "], Email: [" + email + "]\n");
	}
	
	public static void findCustomerByName()
	{
		Scanner input = new Scanner(System.in);
		boolean userInput;
		String fName = "", lName = "";
		
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter first name: ");
				fName += input.nextLine();
				if(!fName.matches("^[\\p{L} .'-]+$"))
					throw new Exception();
			}
			catch(Exception e)
			{
				System.out.println("Invalid first name. Please re-enter first name.");
				userInput = false;
			}
		} 
		while(!userInput);
		
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter last name: ");
				lName += input.nextLine();
				if(!lName.matches("^[\\p{L} .'-]+$"))
					throw new Exception();
			}
			catch(Exception e)
			{
				System.out.println("Invalid last name. Please re-enter last name.");
				userInput = false;
			}
		} while(!userInput);
		
		ArrayList<Customer> matchingCustomers = AirportJDBC.selectPersons(fName,lName);
		if(matchingCustomers == null || matchingCustomers.isEmpty())
		{
			System.out.println("Cannot find the contact.\n");
		}
		else
		{
			for(Customer c: matchingCustomers) 
			{
				System.out.println("[ID: " + c.getContactId() + ", Age: " + c.getAge() + ", Phone: " + c.getPhone() + ", Email: " + c.getEmail() + "]");
			}
		}
	}
	
	public static void addFlight()
	{
		Scanner input = new Scanner(System.in);
		boolean userInput;
		String pID = null, dID = null, aID = null, dDatetime = null, aDatetime = null;
		
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter plane ID: ");
				pID = input.next();
				input.nextLine();
				if(!pID.matches("[0-9_]+"))
					throw new Exception();
				try 
				{
					if(!AirportJDBC.checkPlaneExists(Integer.parseInt(pID)))	
						throw new Exception();
				}
				catch(Exception e)
				{
					System.out.println("Plane ID doesn't exist.");
					userInput = false;
				}
			}
			catch(Exception e)
			{
				System.out.println("Invalid plane ID. Please re-enter valid plane ID.");
				userInput = false;
			}
		} 
		while(!userInput);
	
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter Departing airport ID: ");
				dID = input.next();
				input.nextLine();
				if(!dID.matches("[0-9_]+"))
					throw new Exception();
				try 
				{
					if(!AirportJDBC.checkAirportExists(Integer.parseInt(dID)))	
						throw new Exception();
				}
				catch(Exception e)
				{
					System.out.println("Airport ID doesn't exist.");
					userInput = false;
				}
			}
			catch(Exception e)
			{
				System.out.println("Invalid departing ID. Please re-enter valid departing ID.");
				userInput = false;
			}
		} 
		while(!userInput);
		 
		do 
		{	
			userInput = true;
			try 
			{
				System.out.println("Enter Arriving airport ID: ");
				aID = input.next();
				input.nextLine();
				if(!aID.matches("[0-9_]+"))
					throw new Exception();
				int i = 0;
				try 
				{
					if(!AirportJDBC.checkAirportExists(Integer.parseInt(aID)))
					{
						i = 1;
						throw new Exception();
					}
					else if(aID.equals(dID))
					{
						i = 2;
						throw new Exception();
					}
				}
				catch(Exception e)
				{
					if(i == 1)
					{
						System.out.println("Airport ID doesn't exist.");
						userInput = false;
					}
					else if(i == 2)
					{
						System.out.println("Departing airport and Arriving airport cannot be the same.");
						userInput = false;
					} 
				}
			}
			catch(Exception e)
			{
				System.out.println("Invalid arriving ID. Please re-enter valid arriving ID.");
				userInput = false;
			}
		} 
		while(!userInput);
		
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter Departing datetime with format YYYY-MM-DD HH:mm:ss : ");
				dDatetime = input.nextLine();
				if(!isValid(dDatetime))
					throw new Exception();
			}
			catch(Exception e)
			{
				System.out.println("Invalid datetime. PLease re-enter the datetime.");
				userInput = false;
			}
		} 
		while(!userInput);
		
		do 
		{
			userInput = true;
			int i = 0;
			try 
			{
				System.out.println("Enter Arriving datetime with format YYYY-MM-DD HH:mm:ss : ");
				aDatetime = input.nextLine();
				if(!isValid(aDatetime))
				{
					i = 1;
					throw new Exception();
				}
				else if(isBefore(dDatetime, aDatetime))
				{
					i = 2;
					throw new Exception();
				}		
			}
			catch(Exception e)
			{
				if(i==1)
				{
					System.out.println("Invalid datetime. PLease re-enter the datetime.");
					userInput = false;
				}
				else if(i==2)
				{
					System.out.println("Arriving datetime cannot be before departing datetime.");
					userInput = false;
				}
			}
		} 
		while(!userInput);
		
		AirportJDBC.insertFlight(Integer.parseInt(pID), Integer.parseInt(dID), Integer.parseInt(aID), dDatetime, aDatetime);
		System.out.println("The entry was successful.\n");
	}
	
	public static void editFlight()
	{
		Scanner input = new Scanner(System.in);
		boolean userInput;
		String fID = null, pID = null, dID = null, aID = null, dDatetime = null, aDatetime = null;
		
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter flight ID: ");
				fID = input.next();
				input.nextLine();
				if(!fID.matches("[0-9_]+"))
					throw new Exception();
				try 
				{
					if(!AirportJDBC.checkFlightExists(Integer.parseInt(fID)))	
						throw new Exception();
				}
				catch(Exception e)
				{
					System.out.println("Flight ID doesn't exist.");
					userInput = false;
				}
			}
			catch(Exception e)
			{
				System.out.println("Invalid flight ID. Please re-enter valid flight ID.");
				userInput = false;
			}
		} 
		while(!userInput);
		
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter plane ID: ");
				pID = input.next();
				input.nextLine();
				if(!pID.matches("[0-9_]+"))
					throw new Exception();
				try 
				{
					if(!AirportJDBC.checkPlaneExists(Integer.parseInt(pID)))	
						throw new Exception();
				}
				catch(Exception e)
				{
					System.out.println("Plane ID doesn't exist.");
					userInput = false;
				}
			}
			catch(Exception e)
			{
				System.out.println("Invalid plane ID. Please re-enter valid plane ID.");
				userInput = false;
			}
		} 
		while(!userInput);
		
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter Departing airport ID: ");
				dID = input.next();
				input.nextLine();
				if(!dID.matches("[0-9_]+"))
					throw new Exception();
				try 
				{
					if(!AirportJDBC.checkAirportExists(Integer.parseInt(dID)))	
						throw new Exception();
				}
				catch(Exception e)
				{
					System.out.println("Airport ID doesn't exist.");
					userInput = false;
				}
			}
			catch(Exception e)
			{
				System.out.println("Invalid departing ID. Please re-enter valid departing ID.");
				userInput = false;
			}
		} 
		while(!userInput);
		
		do 
		{	
			userInput = true;
			try 
			{
				System.out.println("Enter Arriving airport ID: ");
				aID = input.next();
				input.nextLine();
				if(!aID.matches("[0-9_]+"))
					throw new Exception();
				int i = 0;
				try 
				{
					if(!AirportJDBC.checkAirportExists(Integer.parseInt(aID)))
					{
						i = 1;
						throw new Exception();
					}
					else if(aID.equals(dID))
					{
						i = 2;
						throw new Exception();
					}
				}
				catch(Exception e)
				{
					if(i == 1)
					{
						System.out.println("Airport ID doesn't exist.");
						userInput = false;
					}
					else if(i == 2)
					{
						System.out.println("Departing airport and Arriving airport cannot be the same.");
						userInput = false;
					} 
				}
			}
			catch(Exception e)
			{
				System.out.println("Invalid arriving ID. Please re-enter valid arriving ID.");
				userInput = false;
			}
		} 
		while(!userInput);
		
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter Departing datetime with format YYYY-MM-DD HH:mm:ss ");
				dDatetime = input.nextLine();
				if(!isValid(dDatetime))
					throw new Exception();
			}
			catch(Exception e)
			{
				System.out.println("Invalid datetime. PLease re-enter the datetime.");
				userInput = false;
			}
		} 
		while(!userInput);
		
		do 
		{
			userInput = true;
			int i = 0;
			try 
			{
				System.out.println("Enter Arriving datetime with format YYYY-MM-DD HH:mm:ss : ");
				aDatetime = input.nextLine();
				if(!isValid(aDatetime))
				{
					i = 1;
					throw new Exception();
				}
				else if(isBefore(dDatetime, aDatetime))
				{
					i = 2;
					throw new Exception();
				}		
			}
			catch(Exception e)
			{
				if(i==1)
				{
					System.out.println("Invalid datetime. PLease re-enter the datetime.");
					userInput = false;
				}
				else if(i==2)
				{
					System.out.println("Arriving datetime cannot be before departing datetime.");
					userInput = false;
				}
			}
		} 
		while(!userInput);
		
		AirportJDBC.updateFlight(Integer.parseInt(fID), Integer.parseInt(pID), Integer.parseInt(dID), Integer.parseInt(aID), dDatetime, aDatetime);
		System.out.println("The entry was successful.\n");
	}

	public static void deleteFlight()
	{
		Scanner input = new Scanner(System.in);
		boolean userInput;
		String fID = null;
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter flight ID: ");
				fID = input.next();
				input.nextLine();
				if(!fID.matches("[0-9_+]+"))
					throw new Exception();
				try 
				{
					if(!AirportJDBC.checkFlightExists(Integer.parseInt(fID)))	
						throw new Exception();
				}
				catch(Exception e)
				{
					System.out.println("Flight ID doesn't exist.");
					userInput = false;
				}
			}
			catch(Exception e)
			{
				System.out.println("Invalid flight ID. Please re-enter valid flight ID.");
				userInput = false;
			}
		} 
		while(!userInput);
		AirportJDBC.deleteFlight(Integer.parseInt(fID));
		System.out.println("Delete was successful.\n");
	}

	public static void bookFlight()
	{
		Scanner input = new Scanner(System.in);
		boolean userInput = true;
		String fID = null, pID = null, seatNo = null;
		
		do 
		{
			try 
			{
				System.out.println("Enter flight ID: ");
				fID = input.next();
				input.nextLine();
				if(!fID.matches("[0-9_]+"))
					throw new Exception();
				try 
				{
					if(!AirportJDBC.checkFlightExists(Integer.parseInt(fID)))	
						throw new Exception();
				}
				catch(Exception e)
				{
					System.out.println("Flight ID doesn't exist.");
					userInput = false;
				}
			}
			catch(Exception e)
			{
				System.out.println("Invalid flight ID. Please re-enter valid flight ID.");
				userInput = false;
			}
		} 
		while(!userInput);
		
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter person ID: ");
				pID = input.next();
				input.nextLine();
				if(!pID.matches("[0-9_]+"))
					throw new Exception();
				try 
				{
					if(!AirportJDBC.checkCustomerExists(Integer.parseInt(pID)))
						throw new Exception();
				}
				catch(Exception e)
				{
					System.out.println("Person ID doesn't exist.");
					userInput = false;
				}
			}
			catch(Exception e)
			{
				System.out.println("Invalid person ID. Please re-enter valid person ID.");
				userInput = false;
			}
		} 
		while(!userInput);

		do 
		{	
			userInput = true;
			char ch;
			boolean check = false;
			try 
			{
				System.out.println("Enter seat number: ");
				seatNo = input.next();
				input.nextLine();
				
				if(seatNo.length()<=5 && seatNo.length()>1)
				{
					ch = seatNo.charAt(0);
					if((ch>='a' && ch<='z') || (ch>='A' && ch<='Z'))
					{
						for(int i=1;i<seatNo.length();i++){
							ch = seatNo.charAt(i);
							if(ch>='0' && ch<='9')
							{
								check = true;
							}
						}
						
					}
				}
				
				if(!check)
					throw new Exception();
				
				else if(AirportJDBC.checkIfFlightIsFull(Integer.parseInt(fID)))
					System.out.println("There is no more seat.");
						
				else if(AirportJDBC.checkIfSeatTaken(Integer.parseInt(fID), seatNo))
					System.out.println("The seat is takens.");
						
				else 
					System.out.println("Flight successfully booked.\n");
			}
			catch(Exception e)
			{
				System.out.println("Invalid seat number. Please re-enter valid seat number.");
				userInput = false;
			}
		} 
		while(!userInput);
		AirportJDBC.bookFlight(Integer.parseInt(fID),Integer.parseInt(pID),seatNo);
		System.out.println("Flight booked!");
	}
	
	public static void cancelFlight()
	{
		Scanner input = new Scanner(System.in);
		boolean userInput;
		String fID = "";
		String pID = "";
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter flight ID: ");
				fID = input.next();
				input.nextLine();
				if(!fID.matches("[0-9_]+"))
					throw new Exception();
				try 
				{
					if(!AirportJDBC.checkFlightExists(Integer.parseInt(fID)))	
						throw new Exception();
				}
				catch(Exception e)
				{
					System.out.println("Flight ID doesn't exist.");
					userInput = false;
				}
			}
			catch(Exception ee)
			{
				System.out.println("Invalid flight ID. Please re-enter valid flight ID.");
				userInput = false;
			}
		} 
		while(!userInput);
		
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter person ID: ");
				pID = input.next();
				input.nextLine();
				if(!pID.matches("[0-9_]+"))
					throw new Exception();
				try 
				{
					if(!AirportJDBC.checkCustomerExists(Integer.parseInt(pID)))
						throw new Exception();
				}
				catch(Exception e)
				{
					System.out.println("Person ID doesn't exist.");
					userInput = false;
				}
			}
			catch(Exception ee)
			{
				System.out.println("Invalid person ID. Please re-enter valid person ID.");
				userInput = false;
			}
		} 
		while(!userInput);
		AirportJDBC.cancelFlight(Integer.parseInt(fID),Integer.parseInt(pID));
		System.out.println("Flight successflly unbooked\n");
	}
	
	public static void viewAllFlightsStartingFromAParticularDay()
	{
		Scanner input = new Scanner(System.in);
		boolean userInput;
		String date = null;
		
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter date with format YYYY-MM-DD: ");
				date = input.next();
				input.nextLine();
				if(!isValidDate(date))
					throw new Exception();
			}
			catch(Exception e)
			{
				System.out.println("Invalid date. PLease re-enter the date.");
				userInput = false;
			}
		} 
		while(!userInput);
		
		ArrayList<Septet<String,String,String,String,String,String,String>> flights = AirportJDBC.viewAllFlightsFromDay(date);
	    if(isEmpty(flights))
	    {
	    	System.out.println("There is no flights from that day onwards yet.\n");
	    }
	    else 
	    {
	    	for(Septet<String, String, String, String, String, String, String> print : flights)
			{
				System.out.println("FlightID: [" + print.getValue0() +  "] Plane: [" + print.getValue1() + 
								   "] From: [" + print.getValue2() + "] To: [" + print.getValue3() + 
								   "] Departure: [" + print.getValue4() + "] Arrival: [" + print.getValue5() + 
								   "] Total Passenger: [" + print.getValue6() + "]");
			}
	    }
	}
	
	public static void archiveFlights()
	{
		Scanner input = new Scanner(System.in);
		boolean userInput;
		String date = null;
		
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter date with format YYYY-MM-DD: HH:mm:ss ");
				date = input.nextLine();
				if(!isValid(date))
					throw new Exception();
			}
			catch(Exception e)
			{
				System.out.println("Invalid date. PLease re-enter the date.");
				userInput = false;
			}
		} 
		while(!userInput);
		
		AirportJDBC.archiveFlights(date);
		System.out.println("Archiving was a success\n");
	}
	
	public static void viewListofAirportLocations()
	{
		ArrayList<Quartet<String,String,String,String>> airports = AirportJDBC.viewAirportLocations();
		for(Quartet<String, String, String, String> print : airports)
		{
			System.out.println("Airport: [" + print.getValue0() +  "] Name: [" + print.getValue1() + 
								"] City: [" + print.getValue2() + "] Country: [" + print.getValue3() + "]");
		}
		System.out.println("\n");
	}
	
	public static void viewAllFlightsAvailableStartingTodayWithSeats()
	{
		 ArrayList<Septet<String,String,String,String,String,String,String>> flights = AirportJDBC.viewAllFlightsFromToday();
		 if(isEmpty(flights))
		    {
		    	System.out.println("There is no flights starting from today yet.\n");
		    }
		    else 
		    {
		    	for(Septet<String, String, String, String, String, String, String> print : flights)
				{
					System.out.println("FlightID: [" + print.getValue0() +  "] PlaneID: [" + print.getValue1() + 
									   "] From: [" + print.getValue2() +"] To: [" + print.getValue3() + 
									   "] Departure: [" + print.getValue4() + "] Arrival: [" + print.getValue5() + 
									   "] Remaining Seats: [" + print.getValue6() + "]");
				}
		    }
	}
	
	public static void viewAllFlightsFromAParticularAirline()
	{
		Scanner input = new Scanner(System.in);
		boolean userInput;
		String airline = "";
		
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter airline name: ");
				airline += input.nextLine();
				if(!airline.matches("^[\\p{L} .'-]+$"))
					throw new Exception();
			}
			catch(Exception e)
			{
				System.out.println("Invalid airline name. Please re-enter airline name.");
				userInput = false;
			}
		} 
		while(!userInput);
		System.out.println("Here are the flights from " + airline);
		ArrayList<Septet<String,String,String,String,String,String,String>> flights = AirportJDBC.viewAllFlightFromAirline(airline);
		if(isEmpty(flights))
		{
		    System.out.println("There is no flights from that airline yet.\n");
		}
		else 
		{
		    for(Septet<String, String, String, String, String, String, String> print : flights)
			{
				System.out.println("FlightID: [" + print.getValue0() +  "] PlaneID: [" + print.getValue1() + 
									"] From: [" + print.getValue2() +"] To: [" + print.getValue3() + 
									"] Departure: [" + print.getValue4() + "] Arrival: [" + print.getValue5() + 
									"] Total Passengers: [" + print.getValue6() + "]");
			}
		    System.out.println("\n");
		}	
	}
	
	public static void viewAllCurrentlyActiveAirlines()
	{
		ArrayList<String> airlines = AirportJDBC.viewAllAirlines();
		System.out.println("All Currently Active Airlines");
		for(int i = 0; i<airlines.size(); i++)
		{
			System.out.println((i+1)+ ". " + airlines.get(i));
		}
		System.out.print("\n");
	}
	
	public static void viewThePassengersOfACertainFlight()
	{
		Scanner input = new Scanner(System.in);
		boolean userInput;
		String fID = null;
		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter flight ID: ");
				fID = input.next();
				input.nextLine();
				if(!fID.matches("[0-9_]+"))
					throw new Exception();
				try 
				{
					if(!AirportJDBC.checkFlightExists(Integer.parseInt(fID)))	
						throw new Exception();
				}
				catch(Exception e)
				{
					System.out.println("Flight ID doesn't exist.");
					userInput = false;
				}
			}
			catch(Exception ee)
			{
				System.out.println("Invalid flight ID. Please re-enter valid flight ID.");
				userInput = false;
			}
		} 
		while(!userInput);
		
		ArrayList<Ennead<String,String,String,String,String,String,String,String,String>> customers = AirportJDBC.viewAllCustomersInFlight(Integer.parseInt(fID));
		if(isEmpty(customers))
		{
		    System.out.println("There were no passengers on that flight.\n");
		}
		else 
		{
		    for(Ennead<String, String, String, String, String, String, String,String,String> print : customers)
			{
				System.out.println("ID: [" + print.getValue0() +  "] Name: [" + print.getValue1() + " " + print.getValue2() +
									"] Age: [" + print.getValue3() + "] Phone: [" + print.getValue4() + "] Email: [" + print.getValue5() + 
									"] Seat No.:[ " + print.getValue6() + "] Luggage size:["+print.getValue7() +"] ExtraCharge:["+print.getValue8()+"]");
									
			}
		    System.out.println("\n");
		}	
	}
	
	public static void viewAllPlanesAndTheirSpecs()
	{
		ArrayList<Quartet<String,String,String,String>> planes = AirportJDBC.viewAllPlanes();
		for(Quartet<String, String, String, String> print : planes)
		{
			System.out.println("PlaneID: [" + print.getValue0() +  "] Model: [" + print.getValue1() + 
							   "] Airline: [" + print.getValue2() + "] Capacity: [" + print.getValue3() + "]");
		}
		System.out.print("\n");
	}
	public static void UpdateLuggage(){
		Scanner input = new Scanner(System.in);
		boolean userInput;
		String fID = null;
		String contactId=null;
		String luggage=null;

		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter flight ID: ");
				fID = input.next();
				input.nextLine();
				if(!fID.matches("[0-9_]+"))
					throw new Exception();
				try 
				{
					if(!AirportJDBC.checkFlightExists(Integer.parseInt(fID)))	
						throw new Exception();
				}
				catch(Exception e)
				{
					System.out.println("Flight ID doesn't exist.");
					userInput = false;
				}
			}
			catch(Exception ee)
			{
				System.out.println("Invalid flight ID. Please re-enter valid flight ID.");
				userInput = false;
			}
		} 
		while(!userInput);

		do 
		{
			userInput = true;
			try 
			{
				System.out.println("Enter Customer(Person) ID: ");
				contactId = input.next();
				input.nextLine();
				if(!contactId.matches("[0-9_]+"))
					throw new Exception();
				try 
				{
					if(!AirportJDBC.checkCustomerExists(Integer.parseInt(contactId)))
						throw new Exception();
				}
				catch(Exception e)
				{
					System.out.println("ID does not exist.");
					userInput = false;
				}
			}
			catch(Exception e)
			{
				System.out.println("Invalid Contact ID. Please re-enter valid Contact ID.");
				userInput = false;
			}
		} 
		while(!userInput);
		
		ArrayList<Ennead<String,String,String,String,String,String,String,String,String>> customers = AirportJDBC.findPassenger(Integer.parseInt(fID),Integer.parseInt(contactId));
		if(isEmpty(customers))
		{
		    System.out.println("There were no passengers with that pid on that flight.\n");
		}
		else 
		{
		    for(Ennead<String, String, String, String, String, String, String,String ,String> print : customers)
			{
				System.out.println("ID: [" + print.getValue0() +  "] Name: [" + print.getValue1() + " " + print.getValue2() +
									"] Luggage size:["+ print.getValue7() +"] ExtraCharge:["+print.getValue8()+"]");
			}
		    System.out.println("\n");
			do 
			{
				userInput = true;
				try 
				{
					System.out.println("Enter Luggage value upto two decimals: ");
					luggage = input.next();
					input.nextLine();
					if(!luggage.matches("[0-9.]+"))
						throw new Exception();
				}
				catch(Exception e)
				{
					System.out.println("Invalid luggage size . Please re-enter valid luggage size.");
					userInput = false;
				}
			} 
			while(!userInput);
			AirportJDBC.updateLuggage(Integer.parseInt(fID),Integer.parseInt(contactId),Float.parseFloat(luggage));
		}
		

	}
}
