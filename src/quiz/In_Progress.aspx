﻿<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="In_Progress.aspx.cs" Inherits="quiz.In_Progress" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphMainBody" runat="server">
    <div id="timer">
        <script>
            var totalAmountOfTime = 7200; //this is total time in seconds so 300 seconds is 5mins

            var min = parseInt(totalAmountOfTime / 60); //this variable will take the totalamountoftime divide by 60 to get the minutes and parse
            var sec = parseInt(totalAmountOfTime % 60);// sec variable gets the remainder of the totalAmountOfTime with the % sign
            var timer;

            //checkTime function takes the totalAmountOfTime in seconds and converts it to minutes and seconds
            function checkTime() {
                document.getElementById("timer").innerHTML = "Time left: " + min + " minutes ";
                //this if statement checks to make sure the timer does not go to the negative
                if (totalAmountOfTime > 0) {
                    totalAmountOfTime = totalAmountOfTime - 1;
                    min = parseInt(totalAmountOfTime / 60);
                    sec = parseInt(totalAmountOfTime % 60);

                }

            }
            timer = setInterval(checkTime, 1000);

        </script>
    </div>

    <div id="question-count">
        <asp:Label ID="questionCountLabel" runat="server" />
    </div>

    <div id="question-body">
        <asp:Label ID="questionBodyLabel" runat="server" />
    </div>

    <div id="question-answer-options">
        <asp:PlaceHolder ID="answerOptionsPlaceholder" runat="server" />
    </div>

    <asp:Button ID="nextQuestionButton" runat="server" Text="Submit Answer" OnClick="nextQuestion_Click" />
</asp:Content>
