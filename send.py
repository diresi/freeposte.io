#!/usr/bin/env python
import smtplib
s = smtplib.SMTP("mail.example.net", 2525)
s.ehlo()
s.login("test@example.net", "test")
s.sendmail("xxx@example.net", ["test@example.net"], open("spam.eml").read())
