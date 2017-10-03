# API Design & Implementation Exercise

## Environment Setup

### Steps
1. Install [docker](https://www.docker.com/community-edition) by choosing your specific platform.
1. Run the following commands on your local machine to pull the mysql docker image and start mysql instance:

    ```
    $ docker pull mysql
    $ docker run -p 3306:3306 --name eshop-mysql -e MYSQL_ROOT_PASSWORD=123456 -d mysql
    ```

1. Login into mysql to create shema and table, the script is `src/resources/create_table.sql`
1. Load test data, the script is `src/resources/load_test_data.sql`
1. download [ODBC](https://dev.mysql.com/downloads/connector/odbc/5.3.html), and added to your project

## Deploy Solution

- Import project into Mulesoft Anypoint Studio
- Run as Mule Application

## Test Solution
Install [postman](https://www.getpostman.com/) by choosing your specific platform.

In post man, test api by typing below URL

* To List **customers**, use `http://address:port/api/customers?startdate={startdate}&enddate={enddate}`, the `{startend}` and `{enddate}` used for filter
![list][list]

* To Create a new **customer**, use `http://address:port/api/customers/`, the example payload just like below
```
{
	"id":5,
	"firstname":"Jiahao",
	"lastname":"Wang",
	"address":"181 grafton road, Grafton, Auckland"
}
```
![create][create]

* To get a **customer**, use `http://address:port/api/customers/{id}`, the `{id}` is the customer's identity
![get][get]

* To update a **customer**, use `http://address:port/api/customers/{id}`, the `{id}` is the customer's identity and the example payload just like below 
```
{
        "lastname": "Larry",
        "firstname": "Ellison",
        "id": 2
}
```
![update][update]

* To delete a **customer**, use `http://address:port/api/customers/{id}`, the `{id}` is the customer's identity
![delete][delete]

[list]: README-resources/list.png
[create]: README-resources/create.png
[get]: README-resources/get.png
[update]: README-resources/update.png
[delete]: README-resources/delete.png
