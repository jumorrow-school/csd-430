package coffeeBeans;

/*
 Justin Morrow | Date: 06/28/26
 Professor: David Ostrowski
 
 Assignment: CSD Module 4.2
 JavaBean Class used to store Costa Rica Ativity data from Module 2.2 and include new fields Activity Level/Age Restriction
 
 Class Example References:
 MyFirstBean.java (JavaBean structure with Serializable)
 MySecondBean.java (Getter/Setter using String values)
 */

public class CostaRicanBean implements java.io.Serializable {

    private String activity;
    private String category;
    private String description;
    private String activityLevel;
    private String ageRestriction;

    // Default constructor to initialize the JavaBean properties
    public CostaRicanBean() {
        activity = "";
        category = "";
        description = "";
        activityLevel = "";
        ageRestriction = "";
    }

	// Activity property getter/setter
    public void setActivity(String a) {
        activity = a;
    }

    public String getActivity() {
        return activity;
    }

	// Category property getter/setter
    public void setCategory(String c) {
        category = c;
    }

    public String getCategory() {
        return category;
    }

	// Description property getter/setter
    public void setDescription(String d) {
        description = d;
    }

    public String getDescription() {
        return description;
    }

	// Activity Level property getter/setter
    public void setActivityLevel(String l) {
        activityLevel = l;
    }

    public String getActivityLevel() {
        return activityLevel;
    }

	// Age Restriction property getter/setter
    public void setAgeRestriction(String r) {
        ageRestriction = r;
    }

    public String getAgeRestriction() {
        return ageRestriction;
    }
}