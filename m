Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F38EB8A950
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 23:29:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qn5HnjfFe9bP1OuO1EWX+FdUPpT3hfkZfBz+nKkLlGI=; b=AtkF+Pd3H9DN7K
	sAh6vcS3OEyF+CFI5WP/jK8hiNbCfof4DmXJqnrYdUodFAKD9YBoB98JWQcUZu8dVyKs2FjkPVISS
	3ZR4hQTMlQjavF4vlM+knm9xODXGOTfGkXghtu+mxDZ9/x+GW65Kq2be8Bh/DJE6oVTetnL+Uc44Z
	15q0+O5BAgyfgUqRPUf/mYxjP+p03FkcpzoTbgfEe1L0SA8Pf/HUkjStOR6uS+EXABmVjycYQn4W5
	Qdd18B65pqPpfwaQdF56k8V9WkltQy9BwHzXqijSAa0WeUxNLy5DikqkQicNZbcUURbpGba9eaR2O
	eFE0HCy0/6rERS+WH9nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxHso-00029U-9W; Mon, 12 Aug 2019 21:29:38 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxHrc-0001Ga-2l
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 21:28:25 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id D0B8D763AFB; Mon, 12 Aug 2019 23:28:22 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: [PATCH 5/9] ARM: dts: at91: kizboxmini: Style cleanup
Date: Mon, 12 Aug 2019 23:27:53 +0200
Message-Id: <20190812212757.23432-5-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190812212757.23432-1-uwe@kleine-koenig.org>
References: <20190812212757.23432-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_142824_591964_66AB6144 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LSB1c2UgdGFncyBmcm9tIGluY2x1ZGVkIGR0c2kgaW5zdGVhZCBvZiBkdXBsaWNhdGluZyB0aGUg
aGllcmFyY2h5CgpUaGVyZSBhcmUgbm8gZGlmZmVyZW5jZXMgaW4gdGhlIGdlbmVyYXRlZCAuZHRi
CgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dXdlQGtsZWluZS1rb2VuaWcub3Jn
PgotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2F0OTEta2l6Ym94bWluaS5kdHMgfCAxNzkgKysrKysr
KysrKysrKy0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA4OCBpbnNlcnRpb25zKCspLCA5
MSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9hdDkxLWtpemJv
eG1pbmkuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MS1raXpib3htaW5pLmR0cwppbmRleCAw
NjIwZGNkZjRkZmIuLmNiMjJmNWZiMDU1ZiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMv
YXQ5MS1raXpib3htaW5pLmR0cworKysgYi9hcmNoL2FybS9ib290L2R0cy9hdDkxLWtpemJveG1p
bmkuZHRzCkBAIC0zMiw5NiArMzIsNiBAQAogCX07CiAKIAlhaGIgewotCQlhcGIgewotCQkJdGNi
MDogdGltZXJAZjgwMDgwMDAgewotCQkJCXRpbWVyQDAgewotCQkJCQljb21wYXRpYmxlID0gImF0
bWVsLHRjYi10aW1lciI7Ci0JCQkJCXJlZyA9IDwwPjsKLQkJCQl9OwotCi0JCQkJdGltZXJAMSB7
Ci0JCQkJCWNvbXBhdGlibGUgPSAiYXRtZWwsdGNiLXRpbWVyIjsKLQkJCQkJcmVnID0gPDE+Owot
CQkJCX07Ci0JCQl9OwotCi0JCQl1c2FydDA6IHNlcmlhbEBmODAxYzAwMCB7Ci0JCQkJc3RhdHVz
ID0gIm9rYXkiOwotCQkJfTsKLQotCQkJbWFjYjA6IGV0aGVybmV0QGY4MDJjMDAwIHsKLQkJCQlw
aHktbW9kZSA9ICJybWlpIjsKLQkJCQlzdGF0dXMgPSAib2theSI7Ci0JCQl9OwotCi0JCQlwd20w
OiBwd21AZjgwMzQwMDAgewotCQkJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Ci0JCQkJcGlu
Y3RybC0wID0gPCZwaW5jdHJsX3B3bTBfcHdtMF8xCi0JCQkJCSAgICAgJnBpbmN0cmxfcHdtMF9w
d20xXzE+OwotCQkJCXN0YXR1cyA9ICJva2F5IjsKLQkJCX07Ci0KLQkJCWRiZ3U6IHNlcmlhbEBm
ZmZmZjIwMCB7Ci0JCQkJc3RhdHVzID0gIm9rYXkiOwotCQkJfTsKLQotCQkJd2F0Y2hkb2dAZmZm
ZmZlNDAgewotCQkJCXN0YXR1cyA9ICJva2F5IjsKLQkJCX07Ci0JCX07Ci0KLQkJdXNiMDogb2hj
aUA2MDAwMDAgewotCQkJbnVtLXBvcnRzID0gPDE+OwotCQkJc3RhdHVzID0gIm9rYXkiOwotCQl9
OwotCi0JCXVzYjE6IGVoY2lANzAwMDAwIHsKLQkJCXN0YXR1cyA9ICJva2F5IjsKLQkJfTsKLQot
CQllYmk6IGViaUAxMDAwMDAwMCB7Ci0JCQlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfZWJpX2FkZHJf
bmFuZAotCQkJCSAgICAgJnBpbmN0cmxfZWJpX2RhdGFfMF83PjsKLQkJCXBpbmN0cmwtbmFtZXMg
PSAiZGVmYXVsdCI7Ci0JCQlzdGF0dXMgPSAib2theSI7Ci0KLQkJCW5hbmRfY29udHJvbGxlcjog
bmFuZC1jb250cm9sbGVyIHsKLQkJCQlzdGF0dXMgPSAib2theSI7Ci0JCQkJcGluY3RybC0wID0g
PCZwaW5jdHJsX25hbmRfb2Vfd2UKLQkJCQkJICAgICAmcGluY3RybF9uYW5kX2NzCi0JCQkJCSAg
ICAgJnBpbmN0cmxfbmFuZF9yYj47Ci0JCQkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKLQot
CQkJCW5hbmRAMyB7Ci0JCQkJCXJlZyA9IDwweDMgMHgwIDB4ODAwMDAwPjsKLQkJCQkJcmItZ3Bp
b3MgPSA8JnBpb0QgNSBHUElPX0FDVElWRV9ISUdIPjsKLQkJCQkJY3MtZ3Bpb3MgPSA8JnBpb0Qg
NCBHUElPX0FDVElWRV9ISUdIPjsKLQkJCQkJbmFuZC1idXMtd2lkdGggPSA8OD47Ci0JCQkJCW5h
bmQtZWNjLW1vZGUgPSAiaHciOwotCQkJCQluYW5kLWVjYy1zdHJlbmd0aCA9IDw0PjsKLQkJCQkJ
bmFuZC1lY2Mtc3RlcC1zaXplID0gPDUxMj47Ci0JCQkJCW5hbmQtb24tZmxhc2gtYmJ0OwotCQkJ
CQlsYWJlbCA9ICJhdG1lbF9uYW5kIjsKLQotCQkJCQlwYXJ0aXRpb25zIHsKLQkJCQkJCWNvbXBh
dGlibGUgPSAiZml4ZWQtcGFydGl0aW9ucyI7Ci0JCQkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsK
LQkJCQkJCSNzaXplLWNlbGxzID0gPDE+OwotCi0JCQkJCQlib290c3RyYXBAMCB7Ci0JCQkJCQkJ
bGFiZWwgPSAiYm9vdHN0cmFwIjsKLQkJCQkJCQlyZWcgPSA8MHgwIDB4MjAwMDA+OwotCQkJCQkJ
fTsKLQotCQkJCQkJdWJpQDIwMDAwIHsKLQkJCQkJCQlsYWJlbCA9ICJ1YmkiOwotCQkJCQkJCXJl
ZyA9IDwweDIwMDAwIDB4N2ZlMDAwMD47Ci0JCQkJCQl9OwotCQkJCQl9OwotCQkJCX07Ci0JCQl9
OwotCQl9OwotCiAJCW5hbmQwOiBuYW5kQDQwMDAwMDAwIHsKIAkJCW5hbmQtYnVzLXdpZHRoID0g
PDg+OwogCQkJbmFuZC1lY2MtbW9kZSA9ICJodyI7CkBAIC0xMzAsNyArNDAsNiBAQAogCQkJYXRt
ZWwscG1lY2Mtc2VjdG9yLXNpemUgPSA8NTEyPjsKIAkJCW5hbmQtb24tZmxhc2gtYmJ0OwogCQkJ
c3RhdHVzID0gIm9rYXkiOwotCiAJCX07CiAJfTsKIApAQCAtMTcyLDMgKzgxLDkxIEBACiAJCX07
CiAJfTsKIH07CisKKyZkYmd1IHsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCismZWJpIHsKKwlw
aW5jdHJsLTAgPSA8JnBpbmN0cmxfZWJpX2FkZHJfbmFuZAorCQkgICAgICZwaW5jdHJsX2ViaV9k
YXRhXzBfNz47CisJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwlzdGF0dXMgPSAib2theSI7
CisKKwluYW5kLWNvbnRyb2xsZXIgeworCQlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfbmFuZF9vZV93
ZQorCQkJICAgICAmcGluY3RybF9uYW5kX2NzCisJCQkgICAgICZwaW5jdHJsX25hbmRfcmI+Owor
CQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworCQlzdGF0dXMgPSAib2theSI7CisKKwkJbmFu
ZEAzIHsKKwkJCXJlZyA9IDwweDMgMHgwIDB4ODAwMDAwPjsKKwkJCXJiLWdwaW9zID0gPCZwaW9E
IDUgR1BJT19BQ1RJVkVfSElHSD47CisJCQljcy1ncGlvcyA9IDwmcGlvRCA0IEdQSU9fQUNUSVZF
X0hJR0g+OworCQkJbmFuZC1idXMtd2lkdGggPSA8OD47CisJCQluYW5kLWVjYy1tb2RlID0gImh3
IjsKKwkJCW5hbmQtZWNjLXN0cmVuZ3RoID0gPDQ+OworCQkJbmFuZC1lY2Mtc3RlcC1zaXplID0g
PDUxMj47CisJCQluYW5kLW9uLWZsYXNoLWJidDsKKwkJCWxhYmVsID0gImF0bWVsX25hbmQiOwor
CisJCQlwYXJ0aXRpb25zIHsKKwkJCQljb21wYXRpYmxlID0gImZpeGVkLXBhcnRpdGlvbnMiOwor
CQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkJCSNzaXplLWNlbGxzID0gPDE+OworCisJCQkJ
Ym9vdHN0cmFwQDAgeworCQkJCQlsYWJlbCA9ICJib290c3RyYXAiOworCQkJCQlyZWcgPSA8MHgw
IDB4MjAwMDA+OworCQkJCX07CisKKwkJCQl1YmlAMjAwMDAgeworCQkJCQlsYWJlbCA9ICJ1Ymki
OworCQkJCQlyZWcgPSA8MHgyMDAwMCAweDdmZTAwMDA+OworCQkJCX07CisJCQl9OworCQl9Owor
CX07Cit9OworCismbWFjYjAgeworCXBoeS1tb2RlID0gInJtaWkiOworCXN0YXR1cyA9ICJva2F5
IjsKK307CisKKyZwd20wIHsKKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworCXBpbmN0cmwt
MCA9IDwmcGluY3RybF9wd20wX3B3bTBfMQorCQkgICAgICZwaW5jdHJsX3B3bTBfcHdtMV8xPjsK
KwlzdGF0dXMgPSAib2theSI7Cit9OworCismdGNiMCB7CisJdGltZXJAMCB7CisJCWNvbXBhdGli
bGUgPSAiYXRtZWwsdGNiLXRpbWVyIjsKKwkJcmVnID0gPDA+OworCX07CisKKwl0aW1lckAxIHsK
KwkJY29tcGF0aWJsZSA9ICJhdG1lbCx0Y2ItdGltZXIiOworCQlyZWcgPSA8MT47CisJfTsKK307
CisKKyZ1c2FydDAgeworCXN0YXR1cyA9ICJva2F5IjsKK307CisKKyZ1c2IwIHsKKwludW0tcG9y
dHMgPSA8MT47CisJc3RhdHVzID0gIm9rYXkiOworfTsKKworJnVzYjEgeworCXN0YXR1cyA9ICJv
a2F5IjsKK307CisKKyZ3YXRjaGRvZyB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKLS0gCjIuMjAu
MQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
