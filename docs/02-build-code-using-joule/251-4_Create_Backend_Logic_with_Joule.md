# Create Backend Logic with Joule  

We already have created the entities, services, and sample data with Joule. Now we want to create some logic for our app. We would like to calculate the bonus points automatically when a customer makes a purchase. Additionally, we want to provide logic for customers to redeem these bonus points.


## Purchases Backend Logic

1. Go to **Storyboard**. Click on one of the entities under **Services** and **Open in Graphical Modeler**

    ![](./images/251-4_Screenshot_25.png)


2. Select **Purchases** entity by clicking on the title. 
    
    > [!NOTE]
    If you can not see the Purchases entity you may have to zoom out the view.

3. Select on **Add Logic**

    ![](./images/251-4_Screenshot_26.png)

4. Leave everything by the default value and select **Add**

    ![](./images/251-4_Screenshot_27.png)
 
5. Select the Phase **Before** and the Standard Event **Create**.

    > [!NOTE] That means this logic will be automatically executed if a new purchase is done.

6. Go to **Open Code Editor** > **Application Logic**.
 
    > [!NOTE] This will open Joule again to create the logic for us.

    ![](./images/251-4_Screenshot_28.png)

7. Use the following prompt in Joule to create a backend logic:

```code
Reward points of each purchase will be the one-tenth of the purchase value. Each purchase value will be added to the total purchase value of the related customer. Each reward points will be added to the total reward points of the related customer.
```

8. Select **Generate**.

    ![](./images/251-4_Screenshot_29.png)

9. So Joule created now following logic:
 - Check if the customer exists
 - Calculates the rewardPoints from the purchase value
 - Updates the total purchase value and the total reward points in the customers entity

10. **Accept** the code created by Joule. 

    ![](./images/251-4_Screenshot_30.png)


   > [!NOTE]
   Joule may generate different codes for the same prompt. If the code for the backend logic differs but achieves the same result, you can ignore the variation and continue working on the exercise.

11. Note that you can also adjust already existing logic.

    Select (or type in) **`/cap-app-logic`** command in Joule window.
        
    ![](./images/251-4_Screenshot_37.png)

12. Let's ask Joule to include additional error handling. Copy and paste the prompt from below.

    ```code
    Add error handling
    ```
    
    Click on **Generate**.

    ![](./images/39.png)

13. Make sure that the error handling logic is added in a suggested Joule output.

    Accept the changes by clicking the **Accept** button.

    ![](./images/40.png)


## Redemptions Backend Logic

Now we continue with the Redemptions.

1. Go to back **service.cds** tab. 

2. Select **Redemptions** entity by clicking on the title. 

3. Select **Add Logic**

    ![](./images/251-4_Screenshot_31.png)

4. Select **Add**

    ![](./images/251-4_Screenshot_32.png)

5. Select **Before** and **Create**. 

6. Go to **Application Logic** under **Open Code Editor**.

    ![](./images/251-4_Screenshot_33.png)

7. Use the following Prompt in Joule to create a backend logic:

    ```code
    Deduct the redemption amount from ‘totalRewardPoints’ of the related customer. Add the same redemption amount to the ‘totalRedeemedPoints’ of the related customer.
    ```

    ![](./images/251-4_Screenshot_34.png)

8. **Accept** the code created by Joule. 

    ![](./images/251-4_Screenshot_35.png)

9.  Have a closer look at the generated code. It includes some logic to check if a customer has enough points for the redemption.

    > [!NOTE]
    Joule might generate different codes for the same prompt. So, you might have a different code for the backend logic which is completely fine if it does the same job. You can ignore this and keep working on the exercise.