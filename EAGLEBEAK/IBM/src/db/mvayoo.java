package db;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;


public class mvayoo {
	
	public static void main(String[] args) {
		sendSms("8143657491", "my second msg text");
	}
	
	public static String sendSms(String no,String msg) {
		msg=msg.replace(" ", "%20");
        String status="";
        try {
	   String u ="http://api.mvaayoo.com/mvaayooapi/MessageCompose?user=nova.vj9@gmail.com:novavj&senderID=TEST%20SMS&receipientno="+no+"&dcs=0&msgtxt="+msg+"&state=4";
   URL url = new URL(u);
            URLConnection conn = url.openConnection();
            conn.setDoOutput(true);
                      
            BufferedReader in = 
                new BufferedReader( new InputStreamReader( conn.getInputStream() ) );
            
            String response;
            while ( (response = in.readLine()) != null ) {
		System.out.println(response);
                status=response;
				System.out.println(status);
            }
            in.close();
			//}
         }
        catch ( MalformedURLException ex ) {
            status="failure";
			ex.printStackTrace();
			
        }
        catch ( IOException ex ) {
             status="failure";
			 ex.printStackTrace();
        }
		System.out.println(status);
		return status;
    }

}
