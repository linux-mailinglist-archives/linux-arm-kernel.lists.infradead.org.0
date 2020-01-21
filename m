Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E430914377C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 08:17:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q30IVEac1CtWcFTW/K9pmakJSJ4x8ac50bC/9DouLNk=; b=AGPxFrl0B+VEWl
	nywKrrqeXzGG3OzKUf5q/FSjcKImuBM5cp0INpKdRHWAUb4LhSA8sh/ynStC4dC6moPKOhrgLjl6s
	lbHgoNIWd9oPDNSdM7qNkS+wN2JkAI2C0YUTGXurXpS8Oyd7vyCNVlkzr08OOyS9b6NHOh6FdGyXf
	vWK50E4t0LN7ZZRFXzlY5ReA+PIH2PbcxeBIe3lNguGwY//d5Flk/F3A2ZvR1NUDTaN80mjfHqPcm
	0VNh3Zx/daOurtiMHS+Z31mWOvwGSO+s1yBUZkNp7MIIMUwbAUHkPJglkERIHZ0RP+CygNyIoAYF5
	+BYcgSDm6KYGVl3zXZdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itnn4-0003yV-Gu; Tue, 21 Jan 2020 07:17:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itnms-0003xw-1r
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 07:17:27 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1itnmm-0000az-78; Tue, 21 Jan 2020 08:17:16 +0100
Received: from ukl by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1itnmk-0005Fy-Au; Tue, 21 Jan 2020 08:17:14 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andre Renaud <arenaud@designa-electronics.com>,
 Fabio Estevam <festevam@gmail.com>, Andy Duan <fugang.duan@nxp.com>
Subject: [PATCH v2] serial: imx: fix a race condition in receive path
Date: Tue, 21 Jan 2020 08:17:02 +0100
Message-Id: <20200121071702.20150-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200120211232.21329-1-u.kleine-koenig@pengutronix.de>
References: <20200120211232.21329-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_231722_095776_7B495C3D 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIG1haW4gaXJxIGhhbmRsZXIgZnVuY3Rpb24gc3RhcnRzIGJ5IGZpcnN0IG1hc2tpbmcgZGlz
YWJsZWQKaW50ZXJydXB0cyBpbiB0aGUgc3RhdHVzIHJlZ2lzdGVyIHZhbHVlcyB0byBlbnN1cmUg
dG8gb25seSBoYW5kbGUKZW5hYmxlZCBpbnRlcnJ1cHRzLiBUaGlzIGlzIGltcG9ydGFudCBhcyB3
aGVuIHRoZSBSWCBwYXRoIGluIHRoZQpoYXJkd2FyZSBpcyBkaXNhYmxlZCByZWFkaW5nIHRoZSBS
WCBmaWZvIHJlc3VsdHMgaW4gYW4gZXh0ZXJuYWwgYWJvcnQuCgpUaGlzIGNoZWNraW5nIG11c3Qg
YmUgZG9uZSB1bmRlciB0aGUgcG9ydCBsb2NrLCBvdGhlcndpc2UgdGhlIGZvbGxvd2luZwpjYW4g
aGFwcGVuOgoKICAgICBDUFUxICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgQ1BVMgogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAogICAgIGlycSB0cmlnZ2VycyBhcyB0
aGVyZSBhcmUgY2hhcnMgfAogICAgIGluIHRoZSBSWCBmaWZvICAgICAgICAgICAgICAgICAgfAoJ
CQkJICAgICB8IGdyYWIgcG9ydCBsb2NrCiAgICAgaW14X3VhcnRfaW50IGZpbmRzIFJSRFkgZW5h
YmxlZCB8CiAgICAgYW5kIGNhbGxzIGlteF91YXJ0X3J4aW50IHdoaWNoICB8CiAgICAgaGFzIHRv
IHdhaXQgZm9yIHBvcnQgbG9jayAgICAgICB8CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8IGRpc2FibGUgUlggKGUuZy4gYmVjYXVzZSB3ZSdyZQogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCB1c2luZyBSUzQ4NSB3aXRoICFSWF9EVVJJTkdfVFgpCiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8CiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8IHJlbGVhc2UgcG9ydCBsb2NrCiAgICAgcmVhZCBmcm9tIFJYIGZp
Zm8gd2l0aCBSWCAgICAgICB8CiAgICAgZGlzYWJsZWQgPT4gZXhjZXB0aW9uICAgICAgICAgICB8
CgpTbyB0YWtlIHRoZSBwb3J0IGxvY2sgb25seSBvbmNlIGluIGlteF91YXJ0X2ludCgpIGluc3Rl
YWQgb2YgaW4gdGhlCmZ1bmN0aW9ucyBjYWxsZWQgZnJvbSB0aGVyZS4KClJlcG9ydGVkLWJ5OiBB
bmRyZSBSZW5hdWQgPGFyZW5hdWRAZGVzaWduYS1lbGVjdHJvbmljcy5jb20+CkNjOiBzdGFibGVA
dmdlci5rZXJuZWwub3JnClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWlu
ZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQpDaGFuZ2VzIHNpbmNlIHYxLCBzZW50IHdpdGgK
TWVzc2FnZS1JZDogPDIwMjAwMTIwMjExMjMyLjIxMzI5LTEtdS5rbGVpbmUta29lbmlnQHBlbmd1
dHJvbml4LmRlPjoKCiAtIEZpeAoJZHJpdmVycy90dHkvc2VyaWFsL2lteC5jOjgxMjoxOTogd2Fy
bmluZzogdW51c2VkIHZhcmlhYmxlICdwb3J0JyBbLVd1bnVzZWQtdmFyaWFibGVdCgogZHJpdmVy
cy90dHkvc2VyaWFsL2lteC5jIHwgNTEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0t
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXguYyBiL2RyaXZlcnMvdHR5L3Nl
cmlhbC9pbXguYwppbmRleCBhOWUyMGU2YzYzYWQuLmRkMzEyMGM1ZGIyYiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy90dHkvc2VyaWFsL2lteC5jCisrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXguYwpA
QCAtNzAwLDIyICs3MDAsMzMgQEAgc3RhdGljIHZvaWQgaW14X3VhcnRfc3RhcnRfdHgoc3RydWN0
IHVhcnRfcG9ydCAqcG9ydCkKIAl9CiB9CiAKLXN0YXRpYyBpcnFyZXR1cm5fdCBpbXhfdWFydF9y
dHNpbnQoaW50IGlycSwgdm9pZCAqZGV2X2lkKQorc3RhdGljIGlycXJldHVybl90IF9faW14X3Vh
cnRfcnRzaW50KGludCBpcnEsIHZvaWQgKmRldl9pZCkKIHsKIAlzdHJ1Y3QgaW14X3BvcnQgKnNw
b3J0ID0gZGV2X2lkOwogCXUzMiB1c3IxOwogCi0Jc3Bpbl9sb2NrKCZzcG9ydC0+cG9ydC5sb2Nr
KTsKLQogCWlteF91YXJ0X3dyaXRlbChzcG9ydCwgVVNSMV9SVFNELCBVU1IxKTsKIAl1c3IxID0g
aW14X3VhcnRfcmVhZGwoc3BvcnQsIFVTUjEpICYgVVNSMV9SVFNTOwogCXVhcnRfaGFuZGxlX2N0
c19jaGFuZ2UoJnNwb3J0LT5wb3J0LCAhIXVzcjEpOwogCXdha2VfdXBfaW50ZXJydXB0aWJsZSgm
c3BvcnQtPnBvcnQuc3RhdGUtPnBvcnQuZGVsdGFfbXNyX3dhaXQpOwogCi0Jc3Bpbl91bmxvY2so
JnNwb3J0LT5wb3J0LmxvY2spOwogCXJldHVybiBJUlFfSEFORExFRDsKIH0KIAorc3RhdGljIGly
cXJldHVybl90IGlteF91YXJ0X3J0c2ludChpbnQgaXJxLCB2b2lkICpkZXZfaWQpCit7CisJc3Ry
dWN0IGlteF9wb3J0ICpzcG9ydCA9IGRldl9pZDsKKwlpcnFyZXR1cm5fdCByZXQ7CisKKwlzcGlu
X2xvY2soJnNwb3J0LT5wb3J0LmxvY2spOworCisJcmV0ID0gX19pbXhfdWFydF9ydHNpbnQoaXJx
LCBkZXZfaWQpOworCisJc3Bpbl91bmxvY2soJnNwb3J0LT5wb3J0LmxvY2spOworCisJcmV0dXJu
IHJldDsKK30KKwogc3RhdGljIGlycXJldHVybl90IGlteF91YXJ0X3R4aW50KGludCBpcnEsIHZv
aWQgKmRldl9pZCkKIHsKIAlzdHJ1Y3QgaW14X3BvcnQgKnNwb3J0ID0gZGV2X2lkOwpAQCAtNzI2
LDE0ICs3MzcsMTIgQEAgc3RhdGljIGlycXJldHVybl90IGlteF91YXJ0X3R4aW50KGludCBpcnEs
IHZvaWQgKmRldl9pZCkKIAlyZXR1cm4gSVJRX0hBTkRMRUQ7CiB9CiAKLXN0YXRpYyBpcnFyZXR1
cm5fdCBpbXhfdWFydF9yeGludChpbnQgaXJxLCB2b2lkICpkZXZfaWQpCitzdGF0aWMgaXJxcmV0
dXJuX3QgX19pbXhfdWFydF9yeGludChpbnQgaXJxLCB2b2lkICpkZXZfaWQpCiB7CiAJc3RydWN0
IGlteF9wb3J0ICpzcG9ydCA9IGRldl9pZDsKIAl1bnNpZ25lZCBpbnQgcngsIGZsZywgaWdub3Jl
ZCA9IDA7CiAJc3RydWN0IHR0eV9wb3J0ICpwb3J0ID0gJnNwb3J0LT5wb3J0LnN0YXRlLT5wb3J0
OwogCi0Jc3Bpbl9sb2NrKCZzcG9ydC0+cG9ydC5sb2NrKTsKLQogCXdoaWxlIChpbXhfdWFydF9y
ZWFkbChzcG9ydCwgVVNSMikgJiBVU1IyX1JEUikgewogCQl1MzIgdXNyMjsKIApAQCAtNzkyLDEx
ICs4MDEsMjUgQEAgc3RhdGljIGlycXJldHVybl90IGlteF91YXJ0X3J4aW50KGludCBpcnEsIHZv
aWQgKmRldl9pZCkKIAl9CiAKIG91dDoKLQlzcGluX3VubG9jaygmc3BvcnQtPnBvcnQubG9jayk7
CiAJdHR5X2ZsaXBfYnVmZmVyX3B1c2gocG9ydCk7CisKIAlyZXR1cm4gSVJRX0hBTkRMRUQ7CiB9
CiAKK3N0YXRpYyBpcnFyZXR1cm5fdCBpbXhfdWFydF9yeGludChpbnQgaXJxLCB2b2lkICpkZXZf
aWQpCit7CisJc3RydWN0IGlteF9wb3J0ICpzcG9ydCA9IGRldl9pZDsKKwlpcnFyZXR1cm5fdCBy
ZXQ7CisKKwlzcGluX2xvY2soJnNwb3J0LT5wb3J0LmxvY2spOworCisJcmV0ID0gX19pbXhfdWFy
dF9yeGludChpcnEsIGRldl9pZCk7CisKKwlzcGluX3VubG9jaygmc3BvcnQtPnBvcnQubG9jayk7
CisKKwlyZXR1cm4gcmV0OworfQorCiBzdGF0aWMgdm9pZCBpbXhfdWFydF9jbGVhcl9yeF9lcnJv
cnMoc3RydWN0IGlteF9wb3J0ICpzcG9ydCk7CiAKIC8qCkBAIC04NTUsNiArODc4LDggQEAgc3Rh
dGljIGlycXJldHVybl90IGlteF91YXJ0X2ludChpbnQgaXJxLCB2b2lkICpkZXZfaWQpCiAJdW5z
aWduZWQgaW50IHVzcjEsIHVzcjIsIHVjcjEsIHVjcjIsIHVjcjMsIHVjcjQ7CiAJaXJxcmV0dXJu
X3QgcmV0ID0gSVJRX05PTkU7CiAKKwlzcGluX2xvY2soJnNwb3J0LT5wb3J0LmxvY2spOworCiAJ
dXNyMSA9IGlteF91YXJ0X3JlYWRsKHNwb3J0LCBVU1IxKTsKIAl1c3IyID0gaW14X3VhcnRfcmVh
ZGwoc3BvcnQsIFVTUjIpOwogCXVjcjEgPSBpbXhfdWFydF9yZWFkbChzcG9ydCwgVUNSMSk7CkBA
IC04ODgsMjcgKzkxMywyNSBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgaW14X3VhcnRfaW50KGludCBp
cnEsIHZvaWQgKmRldl9pZCkKIAkJdXNyMiAmPSB+VVNSMl9PUkU7CiAKIAlpZiAodXNyMSAmIChV
U1IxX1JSRFkgfCBVU1IxX0FHVElNKSkgewotCQlpbXhfdWFydF9yeGludChpcnEsIGRldl9pZCk7
CisJCV9faW14X3VhcnRfcnhpbnQoaXJxLCBkZXZfaWQpOwogCQlyZXQgPSBJUlFfSEFORExFRDsK
IAl9CiAKIAlpZiAoKHVzcjEgJiBVU1IxX1RSRFkpIHx8ICh1c3IyICYgVVNSMl9UWERDKSkgewot
CQlpbXhfdWFydF90eGludChpcnEsIGRldl9pZCk7CisJCWlteF91YXJ0X3RyYW5zbWl0X2J1ZmZl
cihzcG9ydCk7CiAJCXJldCA9IElSUV9IQU5ETEVEOwogCX0KIAogCWlmICh1c3IxICYgVVNSMV9E
VFJEKSB7CiAJCWlteF91YXJ0X3dyaXRlbChzcG9ydCwgVVNSMV9EVFJELCBVU1IxKTsKIAotCQlz
cGluX2xvY2soJnNwb3J0LT5wb3J0LmxvY2spOwogCQlpbXhfdWFydF9tY3RybF9jaGVjayhzcG9y
dCk7Ci0JCXNwaW5fdW5sb2NrKCZzcG9ydC0+cG9ydC5sb2NrKTsKIAogCQlyZXQgPSBJUlFfSEFO
RExFRDsKIAl9CiAKIAlpZiAodXNyMSAmIFVTUjFfUlRTRCkgewotCQlpbXhfdWFydF9ydHNpbnQo
aXJxLCBkZXZfaWQpOworCQlfX2lteF91YXJ0X3J0c2ludChpcnEsIGRldl9pZCk7CiAJCXJldCA9
IElSUV9IQU5ETEVEOwogCX0KIApAQCAtOTIzLDYgKzk0Niw4IEBAIHN0YXRpYyBpcnFyZXR1cm5f
dCBpbXhfdWFydF9pbnQoaW50IGlycSwgdm9pZCAqZGV2X2lkKQogCQlyZXQgPSBJUlFfSEFORExF
RDsKIAl9CiAKKwlzcGluX3VubG9jaygmc3BvcnQtPnBvcnQubG9jayk7CisKIAlyZXR1cm4gcmV0
OwogfQogCi0tIAoyLjI1LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
