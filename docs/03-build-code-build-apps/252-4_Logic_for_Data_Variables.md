# Logic for Data Variables

## Configure Purchase Page

1. Go to **Variables** > Go to **Data Variables**

    ![](./images/252-4_Screenshot_116.png)

2. Add 2 data variables: **A_ProductBasicText** and **Customers**.

    Select **Save**.

    > [!NOTE]
    Please make sure that you have same data variable names in your screen: **A_ProductBasicText1** and **Customers1**

    ![](./images/252-4_Screenshot_117.png)

3. Select **Customers1** data entity. Click on the **[X]** icon under Filter condition. 

    ![](./images/252-4_Screenshot_118.png)

4. Select **Object with Properties**.

    ![](./images/252-4_Screenshot_119.png)

5. Add a condition:

    - Property: `customerNumber`
    - Condition type: `equal`
    - Select the ‘123’ icon under Compared value

    ![](./images/252-4_Screenshot_120.png)

6. Go to **Formula** > Click into the Formula field

    ![](./images/252-4_Screenshot_121.png)

7. Enter the formula below and **Save** the formula afterwards

    ```
    INTEGER(params.SelectedCustomerNumber)
    ```

    ![](./images/252-4_Screenshot_122.png)

8.  **Save** the condition.
  
    ![](./images/252-4_Screenshot_123.png)

10. Go to **User Interface**.

    Drag & Drop the UI Components with the following order: 
    - Dropdown field
    - Input field
    - Button

    Click on **Save**.

    ![](./images/252-4_Screenshot_124.png)

11. Go to **VARIABLE** > **PAGE VARIABLES**

    Create 2 Page Variables:

    - Variable 1: `PurchaseValue` Value type: **number**
    - Variable 2: `SelectedProduct` Value type: **text**

    ![](./images/252-4_Screenshot_125.png)

12. Go to **User Interface** and then:
    - Select Dropdown field. 
    - Rename the Label text: `Select Product`. 
    - Select the **'[ ]' icon** under **Option list**.

    ![](./images/252-4_Screenshot_126.png)

13. Go to **Formula** and type the formula from below

    ```
    MAP(data.A_ProductBasicText1, {label:item.Product, value:item.Product})
    ```
    
    **Save** the Formula.
    
    ![](./images/252-4_Screenshot_127-save.png)

14. Select the **X** under Selected value

    Go to **Data and Variables** > **Page variable** > **SelectedProduct** > select **Save**

    ![](./images/252-4_Screenshot_128.png)

15. Select **Input field** and Rename label to `Purchase Value`
    
    Select the **‘X’ icon** under **Value**

    ![](./images/252-4_Screenshot_129.png)

16. Go to **Data and Variables** > **Page variable**.

    Select page variable as **PurchaseValue**.
    
    Select **Save**.

    ![](./images/252-4_Screenshot_132.png)

17. Select **Button** > Rename label to `Add Points`

    Open **Logic Canvas**

    ![](./images/252-4_Screenshot_130.png)

18. **Drag & Drop** the **logic components** below to create and **join** each component.

    - Create record
    - Alert
    - Navigate back

    ![](./images/252-4_Screenshot_131.png)

19. Select **Save**.
    
    Select **Create record** function > Select the data entity: **Purchases** and **Save**
    
    Select the **Custom Object**

    ![](./images/252-4_Screenshot_133.png)

20. Click on the **ABC** icon under ID > **Formula**

    Select the **Formula bar**

    ![](./images/252-4_Screenshot_134.png)

21. Type the following formula and **Save**: 

    ```
    GENERATE_UUID()
    ```

    ![](./images/252-4_Screenshot_135.png)

22. Click on the **[X]** icon under customer_ID > Formula > Create formula

    ![](./images/252-4_Screenshot_136.png)

23. Type the following formula and **Save**: 

    ```
    data.Customers1[0].ID
    ```

    ![](./images/252-4_Screenshot_137.png)

24. Click on the **[X]** icon under purchaseValue > Formula > Create formula

    ![](./images/252-4_Screenshot_138.png)

25. Type the following formula and **Save**: 

    ```
    INTEGER(pageVars.PurchaseValue)
    ```

    ![](./images/252-4_Screenshot_139.png)

26. Click on the **[X]** icon under selectedProduct > Data and Variables > Page Variable > SelectedProduct

    ![](./images/252-4_Screenshot_140.png)

27. **Save** the window

    ![](./images/252-4_Screenshot_141.png)

28. Select **Alert** component > CLick on the *ABC icon* under Dialog title > Formula 

    ![](./images/252-4_Screenshot_142.png)

29. Copy and Paste (as plain text) the formula below > Save

    ```
    data.Customers1[0].name + " has successfully earned " + outputs["Create record"].response.rewardPoints + " points!"
    ```

    ![](./images/252-4_Screenshot_143.png)

## Configure Redeem Points Page

1.  Go to the **Redeem Points** page.

    ![](./images/252-4_Screenshot_144.png)

2.  Drag & Drop the UI Components in the following order: 
    
    - Input field
    - Button

    ![](./images/252-4_Screenshot_145.png)

3.  Go to **Variables** > **Page Variables**

    Rename as follows:

    - Variable Name: **`RedemptionAmount`**
    - Variable Value type: **`number`**

    Click **Save**.

    ![](./images/252-4_Screenshot_146.png)

4.  Go to **Data Variables** > **Add Data Variable** > **Customers1**

    Select **X** under Filter Condition

    ![](./images/252-4_Screenshot_147.png)

5.  Select **Object with Properties**

    ![](./images/252-4_Screenshot_148.png)

6.  Select **Add Condition**

    - Property: **`customerNumber`**
    - Condition type: **`equal`**

    Select **‘123’** icon under Compared value

    ![](./images/252-4_Screenshot_149.png)

7.  Select **Formula** > Click on the Formula Bar and enter the following formula: 
    
    ```
    INTEGER(params.SelectedCustomerNumber)
    ```

    Hit **Save** twice.

    ![](./images/252-4_Screenshot_150.png)

8.  Go to **User Interface** and select **Input field**

    Rename label to `Redemption Amount`
    
    Select **[X]** icon under Value

    ![](./images/252-4_Screenshot_151.png)

9.  Choose **Data and Variables** > **Page Variable**

    Select page variable as **Redemption Amount** and **Save**

    ![](./images/252-4_Screenshot_152.png)

10. Select **Button** > Rename label to `Redeem Points`  
    Open **Logic Canvas**

    ![](./images/252-4_Screenshot_153.png)

11. **Drag & Drop** the **logic components** below to create and **join** each component.

    - Create record
    - Alert
    - Navigate back

    ![](./images/252-4_Screenshot_131.png)

12. Select **Create record** function

    Select data entity: **Redemptions** from the drop down. **Save** your work.

    Select the **Custom Object**

    ![](./images/252-4_Screenshot_155.png)

13. Click on the **ABC** icon under ID > **Formula** > Click on the **Formula bar**

    ![](./images/252-4_Screenshot_156.png)

14. Type the following formula and **Save**: 

    ```
    GENERATE_UUID()
    ```

    ![](./images/252-4_Screenshot_157.png)

15. Click on the **[X]** icon under customer_ID > **Formula** > **Create formula**

    ![](./images/252-4_Screenshot_158.png)

16. Type the following formula and **Save**: 

    ```
    data.Customers1[0].ID
    ```

    ![](./images/252-4_Screenshot_159.png)

17. Click on the **[X]** icon under redeemedAmount > **Formula** > **Create formula**

    ![](./images/252-4_Screenshot_160.png)

18. Type the following formula and **Save**:  

    ```
    INTEGER(pageVars.RedemptionAmount)
    ```

    ![](./images/252-4_Screenshot_161.png)

19. **Save** the window

    ![](./images/252-4_Screenshot_162.png)

20. Select **Alert component** > Click on the **ABC** icon under **Dialog title** > **Formula**

    ![](./images/252-4_Screenshot_163.png)

21. Copy and Paste (as plain text) the formula below and Save

    ```
    data.Customers1[0].name + " has redeemed " + pageVars.RedemptionAmount + " successfully"
    ```

    ![](./images/252-4_Screenshot_164.png)