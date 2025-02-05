<? xml version="1.0"encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>Employee Details</title>
        <link rel="stylesheet" type="text/css"
        href="styles.css">
    </head>
    <body>
        <h2>Employee Details</h2>
        <table id="employeeTable">
            <thead>
                <tr>o
                    <th>Employee Name</th>
                    <th>Designation</th>
                    <th>Date of Joining</th>
                </tr>
            </thead>
            <tbody>
                <!--Filter employees with Designation="Technical Writer" -->
                <xsl:apply-templates select="//Employee[Designation='Technical Writer']"/>
                <!--Filter employess with Salary between 5LPA and 7LPA-->
                <xsl:apply-templates select="//Employee[number(translate(Salary,'LPAMK',"))>
                    5 and number(translate(Salary,'LPAMK',"))<7]"/>
            </tbody>
        </table>
    </body>
    </html>
    </xsl:template>

    <xsl:template match="Employee">
    <tr>
    <td></xsl:value-of select="EmployeeName"/></td></tr>
    </xsl:template>
    </xsl:stylesheet>xsl:stylesheet>