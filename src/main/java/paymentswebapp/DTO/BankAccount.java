package paymentswebapp;

public class BankAccount {
	private	String  BaName;
	private String  BaBranch;
	private String  IFSC_CODE;
	private String  BaNumber;
	private double  CurrBankBal;
	private int     BaTypeID;
	private int     BaPin;
	private int 	UserId;
	private long 	Phonenum;
	private String	BaAccName;

	
	public String getBaAccName() {
		return BaAccName;
	}
	public void setBaAccName(String baAccName) {
		BaAccName = baAccName;
	}
	
	public long getPhonenum() {
		return Phonenum;
	}
	public void setPhonenum(long phonenum) {
		Phonenum = phonenum;
	}

	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public String getBaName() {
		return BaName;
	}
	public void setBaName(String baName) {
		BaName = baName;
	}
	public String getBaBranch() {
		return BaBranch;
	}
	public void setBaBranch(String baBranch) {
		BaBranch = baBranch;
	}
	public String getIFSC_CODE() {
		return IFSC_CODE;
	}
	public void setIFSC_CODE(String iFSC_CODE) {
		IFSC_CODE = iFSC_CODE;
	}
	public String getBaNumber() {
		return BaNumber;
	}
	public void setBaNumber(String baNumber) {
		BaNumber = baNumber;
	}
	public double getCurrBankBal() {
		return CurrBankBal;
	}
	public void setCurrBankBal(double currBankBal) {
		CurrBankBal = currBankBal;
	}
	public int getBaTypeID() {
		return BaTypeID;
	}
	public void setBaTypeID(int baTypeID) {
		BaTypeID = baTypeID;
	}
	public int getBaPin() {
		return BaPin;
	}
	public void setBaPin(int baPin) {
		BaPin = baPin;
	}
}
