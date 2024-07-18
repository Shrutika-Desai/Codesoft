<%@ page
    import="java.io.BufferedReader, java.io.InputStreamReader, java.net.HttpURLConnection, java.net.URL, org.json.JSONObject"
    %>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
        <!DOCTYPE html>
        <html>

        <head>
            <title>Currency Conversion Result</title>
        </head>

        <body>
            <h1>Currency Conversion Result</h1>
            <% String apiKey="shru1234" ; // Replace with your Exchange Rate API key String baseCurrency="USD" ; // This
                API uses a base currency to get conversion rates String apiUrl="https://v6.exchangerate-api.com/v6/" +
                apiKey + "/latest/" + baseCurrency; String amountStr=request.getParameter("amount"); String
                fromCurrency=request.getParameter("fromCurrency"); String toCurrency=request.getParameter("toCurrency");
                try { double amount=Double.parseDouble(amountStr); URL url=new URL(apiUrl); HttpURLConnection
                connection=(HttpURLConnection) url.openConnection(); connection.setRequestMethod("GET"); BufferedReader
                in=new BufferedReader(new InputStreamReader(connection.getInputStream())); StringBuilder content=new
                StringBuilder(); String inputLine; while ((inputLine=in.readLine()) !=null) { content.append(inputLine);
                } in.close(); connection.disconnect(); JSONObject json=new JSONObject(content.toString()); JSONObject
                rates=json.getJSONObject("conversion_rates"); double fromRate=rates.getDouble(fromCurrency); double
                toRate=rates.getDouble(toCurrency); double conversionRate=toRate / fromRate; double
                convertedAmount=amount * conversionRate; session.setAttribute("amountStr", amountStr);
                session.setAttribute("fromRate", fromRate); session.setAttribute("fromCurrency", fromCurrency);
                session.setAttribute("toRate", toRate); session.setAttribute("toCurrency", toCurrency);
                session.setAttribute("convertedAmount", convertedAmount); response.sendRedirect("result.jsp"); /*
                out.println("<h2>Converted Amount: " + convertedAmount + " " + toCurrency + "</h2>"); */
                } catch (Exception e) {
                /* out.println("<h2>Error: " + e.getMessage() + "</h2>"); */
                response.sendRedirect("index.jsp");
                }
                %>
                <a href="index.jsp">Back to Converter</a>
        </body>

        </html>