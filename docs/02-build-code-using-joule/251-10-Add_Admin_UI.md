# Add Admin UI Applications

You’ll design a user interface to showcase and test the content we’ve developed for the customer loyalty program application.

## Create Admin UI

1. Go back to the **Storyboard** and add a first UI application by clicking on Joule icon beside **UI Applications**.

  ![](./images/251-10_Screenshot_1.png)

2. Copy and paste the prompt from below to the input box.

    ```code
    Please create a new Fiori elements app with the following information: 
    "id": "customer_loyal_XX.customers";
    "appDescription": "Manage Customers";
    This app uses list report object page floorplan, that starts with a list of all customers and allows me to drill down into the details of a selected customer. 
    The ui5 version should be 1.130.3
    ```

3. Click on the arrow ![send arrow](./images/joulearrow.png) to send the prompt to Joule.

  ![](./images/251-10_Screenshot_2.png)

   > [!NOTE]
   Please allow some time to install the dependencies and generate the files.

4. Close the **Page Map** for Purchases. 

  ![](./images/251-10_Screenshot_6.png)

5. Add UI application for **Customers** by clicking on Joule icon beside **UI Applications**.

  ![](./images/251-10_Screenshot_3.png)

6. Copy and paste the prompt from below to the input box.

    ```code
    Please create a new Fiori elements app with the following information: 
    "id": "customer_loyal_XX.purchases";
    "appDescription": "Manage Purchases";
    This app uses list report object page floorplan, that starts with a list of all purchases and allows me to drill down into the details of a selected purchase. 
    The ui5 version should be 1.130.3
    ```

7. Click on the arrow ![send arrow](./images/joulearrow.png) to send the prompt to Joule.

  ![](./images/251-10_Screenshot_4.png)

8. Close the **Page Map** for Customers.

  ![](./images/251-10_Screenshot_5.png)

5. Add UI application for **Redemptions** by clicking on Joule icon beside **UI Applications**.

  ![](./images/251-10_Screenshot_7.png)

6. Copy and paste the prompt from below to the input box.

    ```code
    Please create a new Fiori elements app with the following information: 
    "id": "customer_loyal_XX.redemptions";
    "appDescription": "Manage Redemptions";
    This app uses list report object page floorplan, that starts with a list of all redemptions and allows me to drill down into the details of a selected redemption. 
    The ui5 version should be 1.130.3
    ```

7. Click on the arrow ![send arrow](./images/joulearrow.png) to send the prompt to Joule.

  ![](./images/251-10_Screenshot_8.png)

8. Close the **Page Map** for Redemptions.

  ![](./images/251-10_Screenshot_9.png)
    
## Modify the UI for the Purchases

Now we are going to modify the UI for the purchases. We will include the products from SAP S/4HANA as value help in the purchases and hide some fields.

1. Go back to the **Storyboard**

2. Select the **Purchases UI** and open it in the **Page Map**.

    > [!TIP] To see which is the Purchases UI, move mouse pointer over the UI to extend the displayed name.

    ![](./images/251-7_page1.jpg)

3. We want to modify the **Object page**. Therefore select on the **edit** icon

    ![](./images/251-7_page2.jpg)

4. In the Sections, expand **General Information** then expand **Form** and then expand **Fields**.

  - Afterwards it will look like this:

    ![](./images/251-7_page3.jpg)

  > [!NOTE] The reward points are calculated automatically by the logic Joule has created for us.

5. Delete the **Reward Points** field by pressing the trash bin icon next to it and **Confirm** the deletion.

    ![](./images/251-7_page4.jpg)

  > [!NOTE] Instead we want to select the products from SAP S/4HANA for the purchases.

6. Select the field **Selected Product** and change the **Display Type** in the properties on the right side to **Value Help**.

    Set the following:
      - Label: `Product`
      - Value Source Entity: `A_ProductBasicText`

    Keep the rest as it is and press **Apply**.

    ![](./images/251-7_page5.jpg)

## Preview

Let's preview the customer loyalty program application you’ve just built.

1. To preview your application, go to the upper-right corner, and select **Run and Debug**.

    ![](./images/251-9_Preview-1.png)

2. Select **Run customer_loyal_XX**

    ![](./images/251-9_Preview-2.png)

3. The application’s preview is displayed.

    ![](./images/251-9_Preview-3.png)

4. Select **Go** and navigate through each of the tiles (**Customers**, **Purchases**, **Redemptions**) in the Customer Loyal UI to see the generated data. Please note that in the application Preview not all functions may be available.

    ![](./images/251-9_Preview-4.png)

5. Return to your development environment and stop the debugger.

    ![](./images/43.png)

> [!TIP|icon:fa-solid fa-check|label:Congratulations]
You have successfully built and previewed a CAP application using **SAP Build Code** powered by **Joule copilot**!
Now continue with the deployment.
