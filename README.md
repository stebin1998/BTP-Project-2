# BTP405 Project 2

## Submitted By:

- Name: Stebin George
- E-mail: sgeorge33@myseneca.ca


## Product Vision:

To develop a cloud-based restaurant reservation system that streamlines the process of making, managing, and canceling reservations online. The system aims to provide a seamless experience for both customers and restaurant staff, offering features such as real-time booking availability, customer information management, and automated reservation notifications.

## Goals:

- Make it easier for customers to reserve tables.
- Improve efficiency for restaurant staff.
- Enhance overall customer satisfaction.
- Ensure the system is scalable, flexible, and easy to maintain with microservices architecture.

## Requirements:

- System for customers to book tables.
- Backend system for staff to handle bookings and customer details.
- Automated alerts for reservation confirmations and cancellations.
- Secure login and authorization methods.
- Architecture capable of handling different levels of demand.

## Target Audience:

Our target users include restaurant owners, managers, and customers who want to book tables online.


## Key Features:

- User account management.
- Table booking and cancellation.
- Real-time updates on table availability.
- Management of customer information.
- Automated reservation notifications.
- Reporting and analytics tools for restaurant owners.



## Problems Solved:

- Eliminating errors and inefficiencies in manual booking processes.
- Simplifying the management of table availability and customer data.
- Providing timely updates to customers about their reservations.
- Improving communication channels for reservation alerts.




## User Stories:

- As a customer, I want to easily create an account to book tables conveniently.
- As a customer, I want to search for available tables based on date, time, and party size.
- As a staff member, I want to see and manage current table availability.
- As a staff member, I want to receive notifications when a reservation is made or canceled.
- As a customer, I want to receive email confirmations for my reservations.



## Scenarios:

- A customer visits the restaurant's website, signs up, and reserves a table using their email.
- The customer selects the date, time, and party size, and instantly sees available tables.
- Once confirmed, the reservation is logged in the system, and the customer gets an email confirmation.
- If needed, the customer can cancel or change their reservation through their account.
- Restaurant staff get notifications of new reservations and can update table availability through their interface.

## Outcomes: 

#### Create a new User

```
POST /user
Content-Type: application/json
{
    "Name": "Harry Williams",
    "Email": "harry12@gmail.com"
}
```
#### Outcome
```
Status: 201 Created
{
    "user_id": 1,
    "name": "Harry Williams",
    "email": "harry12@gmail.com"
}
```


#### Create a new Reservation:

```
POST /reservation
Content-Type: application/json

{

"user_id": 1,
"reservation_time": "2024-01-19 21:00:00",
"guests": 9,
"status": "Confirmed"
}
```

#### Outcome
```
Status: 201 Created
{
    "message": "Reservation Created Succesfully."
}
```


#### Check Reservations:

```
Status: 200 OK
[
   {
      "reservation_id": 1,
      "user_id": 1,
      "reservation_time": "2024-01-19 21:00:00",
      "guests": 9,
      "status": "Confirmed"

   }
]
```
#### Update Reservation:

```
PUT /reservation/{reservation_id}
Content-Type: application/json
[
   {
      "reservation_time": "2024-01-19 21:00:00",
      "guests": 19,
      "status": "Confirmed"

   }
]

```
#### Outcome
```
Status: 201 Created
{
    "message": "Reservation Updated Succesfully."
}
```

#### Delete Reservation:

```
DELETE /reservation/{reservation_id}
Status: 200 Ok
{
    "message": "Reservation Deleted Succesfully."
}
```
