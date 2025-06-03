# Logic for UI Components  

## Configure Redeem Points Page

1. Select **Card 1** > Click to **ABC icon** under Title

    ![](./images/252-5_Screenshot_161-1.png)

2. Select **Formula** > Select **Formula Bar**

    ![](./images/252-5_Screenshot_161.png)

3. Paste the formula below > Select Save and Save again.

    ```
    "Customer Number: " + data.Customers1[0].customerNumber
    ```

    ![](./images/252-5_Screenshot_162.png)

4. Select **Card 1** > Click on **ABC icon** under Content

    ![](./images/252-5_Screenshot_163.png)

5. Select **Formula** > Select **Formula Bar**

    Paste the formula from below and select **Save**

    ```
    "Customer Name: " + data.Customers1[0].name
    ```

    ![](./images/252-5_Screenshot_164.png)

6.  Select **Card 2** > Click on **ABC icon** under Title

    ![](./images/252-5_Screenshot_165.png)

7. Select **Formula** > Select **Formula Bar**

    Paste the formula from below and select **Save**

    ```
    data.Customers1[0].totalRewardPoints
    ```

    ![](./images/252-5_Screenshot_166.png)

8. Select Card 3 > Click on **ABC icon** under Title.

    ![](./images/252-5_Screenshot_167.png)

9. Select **Formula** > Select **Formula Bar**
    
    Paste the formula from below and select **Save**

    ```
    data.Customers1[0].totalRedeemedRewardPoints
    ```

    ![](./images/252-5_Screenshot_168.png)


9. Select Card 4 > Click on **ABC icon** under Title.

    ![](./images/252-5_Screenshot_169.png)

10. Select **Formula** > Select **Formula Bar**
    
    Paste the formula from below and select **Save**

    ```
    data.Customers1[0].totalPurchaseValue
    ```

    ![](./images/252-5_Screenshot_170.png)

11. **Save** your App 

    ![](./images/252-5_Screenshot_171.png)

## Configure Purchase Page

1. Go to the Page: **New Purchase**

    ![](./images/252-5_Screenshot_172.png)

2. Select **Card 1** > Click on **ABC icon** under Title

    ![](./images/252-5_Screenshot_173.png)

3. Select **Formula** > Select **Formula Bar**

    Paste the formula from below and select **Save**

    ```
    "Customer Number: " + data.Customers1[0].customerNumber
    ```

    ![](./images/252-5_Screenshot_174.png)

4. Select **Card 1** > Click on **ABC icon** under Content

    ![](./images/252-5_Screenshot_175.png)

5.  Select **Formula** > Select **Formula Bar**
    
    Paste the formula from below and select **Save**

    ```
    "Customer Name: " + data.Customers1[0].name
    ```

    ![](./images/252-5_Screenshot_176.png)

6.  Select **Card 2** > Click on **ABC icon** under Title

    ![](./images/252-5_Screenshot_177.png)

7.  Select **Formula** > Select **Formula Bar**

    Paste the formula from below and select **Save**

    ```
    data.Customers1[0].totalRewardPoints
    ```

    ![](./images/252-5_Screenshot_178.png)

8.  Select Card 3 > Click on **ABC icon** under Title

    ![](./images/252-5_Screenshot_179.png)

9.  Select **Formula** > Select **Formula Bar**

    Paste the formula from below and select **Save**

    ```
    data.Customers1[0].totalRedeemedRewardPoints
    ```

    ![](./images/252-5_Screenshot_180.png)


10. Select Card 4 > Click on **ABC icon** under Title

    ![](./images/252-5_Screenshot_181.png)

11. Select **Formula** > Select **Formula Bar**

    Paste the formula from below and select **Save**

    ```
    data.Customers1[0].totalPurchaseValue
    ```

    ![](./images/252-5_Screenshot_182.png)

12. **Save** your App 

    ![](./images/252-5_Screenshot_183.png)