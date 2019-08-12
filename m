Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF5A8A956
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 23:30:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gW0u8Q8JM/zyHBqRLRFTrGIhqVd10Mc/J5vaiwVV+sI=; b=rjjS9w+kkvP4eN
	ZgxFKSSV+A6kjQBX8CqQzZCqGeG3Vdt46syGGxV+tSOfRYmkFCuLjsTLiZQ6vhDGl2VxaAvdNhwK1
	1BTxW1WZEmHQFoBkaDYkmiQHsPBaXKuINeJ4GFb0cI3Y6o0nGgdwNRpl90Qe8aROKdZcJ/ItV3/Ax
	ozKf1ni7OJKlYgaEodsM4B1JCIHvUYR0sivgCxMLAHG0ydJHODqSB+WEi/TIokRtmcMjLbVYo0yTO
	Wsxa9B0s8ErCipecIP76owcQZ+aVprOXOk4Av+y9FGxKpxVTFou78qPmEHcZ00eS7ReoJi7eVUXXG
	drpHco4Gjts7qOUkw2Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxHtw-0004Kd-Mi; Mon, 12 Aug 2019 21:30:48 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxHrm-0001QV-Me
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 21:28:37 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 5C6DC763B03; Mon, 12 Aug 2019 23:28:33 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: [PATCH 9/9] ARM: dts: at91: at91sam9x5dm.dtsi: Style cleanup
Date: Mon, 12 Aug 2019 23:27:57 +0200
Message-Id: <20190812212757.23432-9-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190812212757.23432-1-uwe@kleine-koenig.org>
References: <20190812212757.23432-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_142835_103438_97A59172 
X-CRM114-Status: UNSURE (   9.53  )
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
cwoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9y
Zz4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9hdDkxc2FtOXg1ZG0uZHRzaSB8IDg2ICsrKysrKysr
KysrKysrLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygrKSwg
NDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MXNhbTl4
NWRtLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9hdDkxc2FtOXg1ZG0uZHRzaQppbmRleCBiMDRl
YmYxYTMxMzEuLjdmMDBjMWY1N2I5MCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvYXQ5
MXNhbTl4NWRtLmR0c2kKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MXNhbTl4NWRtLmR0c2kK
QEAgLTksNTEgKzksNiBAQAogICovCiAKIC8gewotCWFoYiB7Ci0JCWFwYiB7Ci0JCQlpMmMwOiBp
MmNAZjgwMTAwMDAgewotCQkJCXF0MTA3MDoga2V5Ym9hcmRAMWIgewotCQkJCQljb21wYXRpYmxl
ID0gInF0MTA3MCI7Ci0JCQkJCXJlZyA9IDwweDFiPjsKLQkJCQkJaW50ZXJydXB0LXBhcmVudCA9
IDwmcGlvQT47Ci0JCQkJCWludGVycnVwdHMgPSA8NyAweDA+OwotCQkJCQlwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOwotCQkJCQlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfcXQxMDcwX2lycT47Ci0J
CQkJCXdha2V1cC1zb3VyY2U7Ci0JCQkJfTsKLQkJCX07Ci0KLQkJCWhsY2RjOiBobGNkY0BmODAz
ODAwMCB7Ci0JCQkJaGxjZGMtZGlzcGxheS1jb250cm9sbGVyIHsKLQkJCQkJcGluY3RybC1uYW1l
cyA9ICJkZWZhdWx0IjsKLQkJCQkJcGluY3RybC0wID0gPCZwaW5jdHJsX2xjZF9iYXNlICZwaW5j
dHJsX2xjZF9yZ2I4ODg+OwotCi0JCQkJCXBvcnRAMCB7Ci0JCQkJCQlobGNkY19wYW5lbF9vdXRw
dXQ6IGVuZHBvaW50QDAgewotCQkJCQkJCXJlZyA9IDwwPjsKLQkJCQkJCQlyZW1vdGUtZW5kcG9p
bnQgPSA8JnBhbmVsX2lucHV0PjsKLQkJCQkJCX07Ci0JCQkJCX07Ci0JCQkJfTsKLQkJCX07Ci0K
LQkJCWFkYzA6IGFkY0BmODA0YzAwMCB7Ci0JCQkJYXRtZWwsYWRjLXRzLXdpcmVzID0gPDQ+Owot
CQkJCWF0bWVsLGFkYy10cy1wcmVzc3VyZS10aHJlc2hvbGQgPSA8MTAwMDA+OwotCQkJCXN0YXR1
cyA9ICJva2F5IjsKLQkJCX07Ci0KLQkJCXBpbmN0cmxAZmZmZmY0MDAgewotCQkJCWJvYXJkIHsK
LQkJCQkJcGluY3RybF9xdDEwNzBfaXJxOiBxdDEwNzBfaXJxIHsKLQkJCQkJCWF0bWVsLHBpbnMg
PQotCQkJCQkJCTxBVDkxX1BJT0EgNyBBVDkxX1BFUklQSF9HUElPIEFUOTFfUElOQ1RSTF9QVUxM
X1VQX0RFR0xJVENIPjsKLQkJCQkJfTsKLQkJCQl9OwotCQkJfTsKLQkJfTsKLQl9OwotCiAJYmFj
a2xpZ2h0OiBiYWNrbGlnaHQgewogCQljb21wYXRpYmxlID0gInB3bS1iYWNrbGlnaHQiOwogCQlw
d21zID0gPCZobGNkY19wd20gMCA1MDAwMCAwPjsKQEAgLTk4LDMgKzUzLDQ0IEBACiAJCXN0YXR1
cyA9ICJkaXNhYmxlZCI7CiAJfTsKIH07CisKKyZhZGMwIHsKKwlhdG1lbCxhZGMtdHMtd2lyZXMg
PSA8ND47CisJYXRtZWwsYWRjLXRzLXByZXNzdXJlLXRocmVzaG9sZCA9IDwxMDAwMD47CisJc3Rh
dHVzID0gIm9rYXkiOworfTsKKworJmkyYzAgeworCWtleWJvYXJkQDFiIHsKKwkJY29tcGF0aWJs
ZSA9ICJxdDEwNzAiOworCQlyZWcgPSA8MHgxYj47CisJCWludGVycnVwdC1wYXJlbnQgPSA8JnBp
b0E+OworCQlpbnRlcnJ1cHRzID0gPDcgMHgwPjsKKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0
IjsKKwkJcGluY3RybC0wID0gPCZwaW5jdHJsX3F0MTA3MF9pcnE+OworCQl3YWtldXAtc291cmNl
OworCX07Cit9OworCismaGxjZGMgeworCWhsY2RjLWRpc3BsYXktY29udHJvbGxlciB7CisJCXBp
bmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJCXBpbmN0cmwtMCA9IDwmcGluY3RybF9sY2RfYmFz
ZSAmcGluY3RybF9sY2RfcmdiODg4PjsKKworCQlwb3J0QDAgeworCQkJaGxjZGNfcGFuZWxfb3V0
cHV0OiBlbmRwb2ludEAwIHsKKwkJCQlyZWcgPSA8MD47CisJCQkJcmVtb3RlLWVuZHBvaW50ID0g
PCZwYW5lbF9pbnB1dD47CisJCQl9OworCQl9OworCX07Cit9OworCismcGluY3RybCB7CisJYm9h
cmQgeworCQlwaW5jdHJsX3F0MTA3MF9pcnE6IHF0MTA3MF9pcnEgeworCQkJYXRtZWwscGlucyA9
CisJCQkJPEFUOTFfUElPQSA3IEFUOTFfUEVSSVBIX0dQSU8gQVQ5MV9QSU5DVFJMX1BVTExfVVBf
REVHTElUQ0g+OworCQl9OworCX07Cit9OwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
