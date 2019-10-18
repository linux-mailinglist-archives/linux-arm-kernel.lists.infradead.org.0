Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48171DC6EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 16:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GOvn4M0rEtjIAmpfSUQm1pwnEQRHgRIfPWUFGKHi6jY=; b=N37svWqPlu0MSI
	y3vpIb96oRJ9KEjvEaCgVtPlj6q4tTurNWB9kWU9SZITdLqbnLwH/7UAEKe2EQQykYxCZg7Ktkqed
	yA941aszpeF6cqgM+UhipYODq/5sKF6FtBWNgIn4zqLQqcIE0A/8CwkozjAb0NFC9zMMMavDoMFjB
	3z07lwlUifcaeHkT6cN48Bj08BDzrzKwgCBxalEw/PTxyTK46mqqNchnEPoRumLc/ksmy9z4cIvrS
	oV8i8EB4h4rhYZhYqMRiOBQ0/jk1d4BGZ9WYlXFuy1uCJDvbXJ0HNr6PxZtBwJo/oAscqIiTpG6En
	OnBdjkMZTMKW8e1ya4HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLSvW-0002U5-KU; Fri, 18 Oct 2019 14:08:22 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLSvC-0002NS-U6
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 14:08:04 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 04AF920000A;
 Fri, 18 Oct 2019 14:07:48 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] ARM: at91: add support for SmartKiz board
Date: Fri, 18 Oct 2019 16:06:58 +0200
Message-Id: <20191018140658.31703-3-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191018140658.31703-1-kamel.bouhara@bootlin.com>
References: <20191018140658.31703-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_070803_282869_F1ACB8CA 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Kamel Bouhara <kamel.bouhara@bootlin.com>,
 Mickael GARDET <m.gardet@overkiz.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?K=C3=A9vin=20RAYMOND?= <k.raymond@overkiz.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIHRoZSBkZXZpY2V0cmVlIGZvciB0aGUgT3ZlcmtpeidzIFNtYXJ0S2l6IGJvYXJkLgoKU2ln
bmVkLW9mZi1ieTogS2FtZWwgQm91aGFyYSA8a2FtZWwuYm91aGFyYUBib290bGluLmNvbT4KU2ln
bmVkLW9mZi1ieTogS8OpdmluIFJBWU1PTkQgPGsucmF5bW9uZEBvdmVya2l6LmNvbT4KU2lnbmVk
LW9mZi1ieTogTWlja2FlbCBHQVJERVQgPG0uZ2FyZGV0QG92ZXJraXouY29tPgotLS0KIGFyY2gv
YXJtL2Jvb3QvZHRzL01ha2VmaWxlICAgICAgICAgIHwgICAxICsKIGFyY2gvYXJtL2Jvb3QvZHRz
L2F0OTEtc21hcnRraXouZHRzIHwgMTEyICsrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDIg
ZmlsZXMgY2hhbmdlZCwgMTEzIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNo
L2FybS9ib290L2R0cy9hdDkxLXNtYXJ0a2l6LmR0cwoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jv
b3QvZHRzL01ha2VmaWxlIGIvYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUKaW5kZXggNmIzYTY1
ZjNmNmY4Li4xMmE2YjhjNmIyN2UgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL01ha2Vm
aWxlCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlCkBAIC00MCw2ICs0MCw3IEBAIGR0
Yi0kKENPTkZJR19TT0NfQVQ5MVNBTTkpICs9IFwKIAlhdDkxLWtpemJveG1pbmkuZHRiIFwKIAlh
dDkxLWtpemJveG1pbmktbWIuZHRiIFwKIAlhdDkxLWtpemJveG1pbmktcmQuZHRiIFwKKwlhdDkx
LXNtYXJ0a2l6LmR0YiBcCiAJYXQ5MS13YjQ1bi5kdGIgXAogCWF0OTFzYW05ZzE1ZWsuZHRiIFwK
IAlhdDkxc2FtOWcyNWVrLmR0YiBcCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9hdDkx
LXNtYXJ0a2l6LmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTEtc21hcnRraXouZHRzCm5ldyBm
aWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uZGFlN2U3YjY4NDYyCi0tLSAvZGV2
L251bGwKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MS1zbWFydGtpei5kdHMKQEAgLTAsMCAr
MSwxMTIgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCisvKgorICogQ29w
eXJpZ2h0IChDKSAyMDE3LTIwMTggT3ZlcmtpeiBTQVMKKyAqICAgQXV0aG9yOiBNaWNrYWVsIEdh
cmRldCA8bS5nYXJkZXRAb3Zlcmtpei5jb20+CisgKiAgICAgICAgICAgS8OpdmluIFJheW1vbmQg
PGsucmF5bW9uZEBvdmVya2l6LmNvbT4KKyAqICAgICAgICAgICBEb3JpYW4gUm9jaXBvbiA8ZC5y
b2NpcG9uQG92ZXJraXouY29tPgorICovCisvZHRzLXYxLzsKKyNpbmNsdWRlICJhdDkxLWtpemJv
eG1pbmlfY29tbW9uLmR0c2kiCisKKy8geworCW1vZGVsID0gIk92ZXJraXogU21hcnRLaXoiOwor
CWNvbXBhdGlibGUgPSAib3ZlcmtpeixzbWFydGtpeiIsICJhdG1lbCxhdDkxc2FtOWcyNSIsCisJ
CSAgICAgImF0bWVsLGF0OTFzYW05eDUiLCAiYXRtZWwsYXQ5MXNhbTkiOworCisJY2xvY2tzIHsK
KwkJc2xvd194dGFsIHsKKwkJCWNsb2NrLWZyZXF1ZW5jeSA9IDwzMjc2OD47CisJCX07CisJCWFk
Y19vcF9jbGsgeworCQkJc3RhdHVzID0gIm9rYXkiOworCQl9OworCX07CisKKwlhbGlhc2VzIHsK
KwkJc2VyaWFsNSA9ICZ1YXJ0MDsKKwl9OworCisJcGlvX2tleXMgeworCQloa19yZXNldCB7CisJ
CQlsYWJlbCA9ICJIS19SRVNFVCI7CisJCQlncGlvcyA9IDwmcGlvQyAxMyBHUElPX0FDVElWRV9I
SUdIPjsKKwkJfTsKKworCQlwb3dlcl9yZiB7CisJCQlsYWJlbCA9ICJQT1dFUl9SRiI7CisJCQln
cGlvcyA9IDwmcGlvQSAyMCBHUElPX0FDVElWRV9ISUdIPjsKKwkJfTsKKworCQlwb3dlcl93aWZp
IHsKKwkJCWxhYmVsID0gIlBPV0VSX1dJRkkiOworCQkJZ3Bpb3MgPSA8JnBpb0EgMjEgR1BJT19B
Q1RJVkVfSElHSD47CisJCX07CisJfTsKK307CisKKyZwaW5jdHJsIHsKKwlpMmMxIHsKKwkJcGlu
Y3RybF9pMmMxOiBpMmMxLTAgeworCQkJYXRtZWwscGlucyA9CisJCQkJPEFUOTFfUElPQyAwIEFU
OTFfUEVSSVBIX0MgQVQ5MV9QSU5DVFJMX1BVTExfVVAKKwkJCQlBVDkxX1BJT0MgMSBBVDkxX1BF
UklQSF9DIEFUOTFfUElOQ1RSTF9QVUxMX1VQPjsKKwkJfTsKKwl9OworCisJYWRjMCB7CisJCXBp
bmN0cmxfYWRjMF9hZDA6IGFkYzBfYWQwLTAgeworCQkJLyogcHVsbC11cCBkaXNhYmxlICovCisJ
CQlhdG1lbCxwaW5zID0gPEFUOTFfUElPQiAxMSBBVDkxX1BFUklQSF9HUElPIEFUOTFfUElOQ1RS
TF9OT05FPjsKKwkJfTsKKwkJcGluY3RybF9hZGMwX2FkNTogYWRjMF9hZDUtMCB7CisJCQkvKiBw
dWxsLXVwIGRpc2FibGUgKi8KKwkJCWF0bWVsLHBpbnMgPSA8QVQ5MV9QSU9CIDE2IEFUOTFfUEVS
SVBIX0dQSU8gQVQ5MV9QSU5DVFJMX05PTkU+OworCQl9OworCQlwaW5jdHJsX2FkYzBfYWQ2OiBh
ZGMwX2FkNi0wIHsKKwkJCS8qIHB1bGwtdXAgZGlzYWJsZSAqLworCQkJYXRtZWwscGlucyA9IDxB
VDkxX1BJT0IgMTcgQVQ5MV9QRVJJUEhfR1BJTyBBVDkxX1BJTkNUUkxfTk9ORT47CisJCX07CisJ
CXBpbmN0cmxfYWRjMF9hZDExOiBhZGMwX2FkMTEtMCB7CisJCQkvKiBwdWxsLXVwIGRpc2FibGUg
Ki8KKwkJCWF0bWVsLHBpbnMgPSA8QVQ5MV9QSU9CIDEwIEFUOTFfUEVSSVBIX0dQSU8gQVQ5MV9Q
SU5DVFJMX05PTkU+OworCQl9OworCX07Cit9OworCismaTJjMSB7CisJZG1hcyA9IDwwPiwgPDA+
OworCXBpbmN0cmwtMCA9IDwmcGluY3RybF9pMmMxPjsKKwlzdGF0dXMgPSAiZGlzYWJsZWQiOwor
fTsKKworJm1hY2IwIHsKKwlzdGF0dXMgPSAiZGlzYWJsZWQiOworfTsKKworJnJ0YyB7CisJc3Rh
dHVzID0gIm9rYXkiOworfTsKKworJmxlZHMgeworCWJsdWUgeworCQlzdGF0dXMgPSAib2theSI7
CisJfTsKK307CisKKyZhZGMwIHsKKwlhdG1lbCxhZGMtdnJlZiA9IDwyNTAwPjsKKwlwaW5jdHJs
LW5hbWVzID0gImRlZmF1bHQiOworCXBpbmN0cmwtMCA9IDwKKwkJJnBpbmN0cmxfYWRjMF9hZDAK
KwkJJnBpbmN0cmxfYWRjMF9hZDUKKwkJJnBpbmN0cmxfYWRjMF9hZDYKKwkJJnBpbmN0cmxfYWRj
MF9hZDExCisJPjsKKwlhdG1lbCxhZGMtY2hhbm5lbHMtdXNlZCA9IDwweDA4NjE+OworCXN0YXR1
cyA9ICJva2F5IjsKK307CisKKyZ1YXJ0MCB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKKwotLSAK
Mi4yMy4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
