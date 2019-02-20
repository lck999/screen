package com.example.helloworld.echo;

import java.io.Serializable;

public class EchoForm implements Serializable {
    private static final long serialVersionUID = 2557725707095364445L;
/*
    @NotNull // (1)
    @Size(min = 1, max = 5) // (2)
*/
    private String name;

    private String ID;


    private String mei;
    private String month;
    private String mei2;
    private String team;
    private String mei3;
    private String mei4;
    private String sex;
    private String old;


    public String getMei() {
		return mei;
	}

	public void setMei(String mei) {
		this.mei = mei;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getMei2() {
		return mei2;
	}

	public void setMei2(String mei2) {
		this.mei2 = mei2;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public String getMei3() {
		return mei3;
	}

	public void setMei3(String mei3) {
		this.mei3 = mei3;
	}

	public String getMei4() {
		return mei4;
	}

	public void setMei4(String mei4) {
		this.mei4 = mei4;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getOld() {
		return old;
	}

	public void setOld(String old) {
		this.old = old;
	}



	public String getID() {
		return ID;
	}

	public void setID(String ID) {
		this.ID = ID;
	}




	public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}