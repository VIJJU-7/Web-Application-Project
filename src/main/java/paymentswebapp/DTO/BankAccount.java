package paymentswebapp;

public class BankAccount {
	String  BaName;
	String  BaBranch;
	String  IFSC_CODE;
	long    BaNumber;
	double  CurrBankBal;
	int     BaTypeID;
	int     BaPin;
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
	public long getBaNumber() {
		return BaNumber;
	}
	public void setBaNumber(long baNumber) {
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
