Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9920A143348
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 22:13:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nqXzsa84iK2IGrS71WnNbGVnF6fAyJufHu1VRKDjFzs=; b=EE9IAhjJibMGx2
	b/7QGq2xaq+uSDSDakf5eVcjTJ4M1cDKgJ5ihOUUcgNwFP13DgpJPoDYF/pgwdC/pHqwaC0PG6ptw
	pSOCcPebd2BDRNuQQ4QcXaVnrUJivJkgTj5KEm0qettXB96EaUg2Y2Mu3ijtAlrMKrJZnK5FAfuha
	vQmA0+m2L8Lhr7kRhCSAv5SViAkYKWaCFcnlGdeciaNSpEvjmsPx+tDUL8DUtf/jZA3ekWs4F2Lcq
	O2ijvN29t03NJIaRmDbTSUfu6lA11cCi+5IowDLImqoMSnbCyirMnx/OHxEcbMcB2mvSjeyPKE5gK
	qH5/rYlGz+EAEM1i7Qbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iteLt-0007CG-Or; Mon, 20 Jan 2020 21:12:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iteLl-0007Bq-JX
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 21:12:46 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iteLh-0006um-7f; Mon, 20 Jan 2020 22:12:41 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iteLc-0002MJ-EP; Mon, 20 Jan 2020 22:12:36 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andre Renaud <arenaud@designa-electronics.com>,
 Fabio Estevam <festevam@gmail.com>, Andy Duan <fugang.duan@nxp.com>
Subject: [PATCH] serial: imx: fix a race condition in receive path
Date: Mon, 20 Jan 2020 22:12:32 +0100
Message-Id: <20200120211232.21329-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_131245_643592_93432C63 
X-CRM114-Status: GOOD (  15.74  )
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
ZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQpIZWxsbywKCnRoaXMgcHJvYmxlbSB0eXBlIHdh
cyBhZGRyZXNzZWQgYWxyZWFkeSBpbiBjb21taXRzCgoJNDM3NzY4OTYyZjc1ICgic2VyaWFsOiBp
bXg6IE9ubHkgaGFuZGxlIGlycXMgdGhhdCBhcmUgYWN0dWFsbHkgZW5hYmxlZCIpCgk3NjgyMWUy
MjJjMTggKCJzZXJpYWw6IGlteDogZW5zdXJlIHRoYXQgUlggaXJxcyBhcmUgb2ZmIGlmIFJYIGlz
IG9mZiIpCgp0aGF0IGVudGVyZWQgNC4xNy1yYzEuIEJhY2twb3J0aW5nIHRvIG9sZGVyIHZlcnNp
b25zIHdvdWxkIHJlcXVpcmUgdG8KYmFja3BvcnQgdGhlc2UgdHdvLCB0b28uIEkgZGlkbid0IHRy
eSB0aGF0LCBidXQgSSB0aGluayB0aGlzIGdldHMgbWVzc3ksCnNvIEknZCByZWNvbW1lbmQgdG8g
b25seSBiYWNrcG9ydCB0byA0LjE5LnggYW5kIDUuNC54IChhbmQgNS41LngKYXNzdW1pbmcgdGhp
cyBwYXRjaCB3b24ndCBtYWtlIGl0IGludG8gNS41KS4KCkFuZHJlIFJlbmF1ZCB0ZXN0ZWQgdGhp
cyBwYXRjaCBhbmQgY29uZmlybWVkIGl0IHRvIGZpeCB0aGUgcHJvYmxlbSwgaGUKZGlkbid0IHBy
b3ZpZGUgYSBUZXN0ZWQtYnkgdGFnLCBzbyBJIGRpZG4ndCBhZGQgdGhhdCBoZXJlLgoKQmVzdCBy
ZWdhcmRzClV3ZQoKIGRyaXZlcnMvdHR5L3NlcmlhbC9pbXguYyB8IDUyICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzOSBpbnNlcnRpb25z
KCspLCAxMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3R0eS9zZXJpYWwvaW14
LmMgYi9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMKaW5kZXggYTllMjBlNmM2M2FkLi42NzliMmRl
MjdjNGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXguYworKysgYi9kcml2ZXJz
L3R0eS9zZXJpYWwvaW14LmMKQEAgLTcwMCwyMiArNzAwLDMzIEBAIHN0YXRpYyB2b2lkIGlteF91
YXJ0X3N0YXJ0X3R4KHN0cnVjdCB1YXJ0X3BvcnQgKnBvcnQpCiAJfQogfQogCi1zdGF0aWMgaXJx
cmV0dXJuX3QgaW14X3VhcnRfcnRzaW50KGludCBpcnEsIHZvaWQgKmRldl9pZCkKK3N0YXRpYyBp
cnFyZXR1cm5fdCBfX2lteF91YXJ0X3J0c2ludChpbnQgaXJxLCB2b2lkICpkZXZfaWQpCiB7CiAJ
c3RydWN0IGlteF9wb3J0ICpzcG9ydCA9IGRldl9pZDsKIAl1MzIgdXNyMTsKIAotCXNwaW5fbG9j
aygmc3BvcnQtPnBvcnQubG9jayk7Ci0KIAlpbXhfdWFydF93cml0ZWwoc3BvcnQsIFVTUjFfUlRT
RCwgVVNSMSk7CiAJdXNyMSA9IGlteF91YXJ0X3JlYWRsKHNwb3J0LCBVU1IxKSAmIFVTUjFfUlRT
UzsKIAl1YXJ0X2hhbmRsZV9jdHNfY2hhbmdlKCZzcG9ydC0+cG9ydCwgISF1c3IxKTsKIAl3YWtl
X3VwX2ludGVycnVwdGlibGUoJnNwb3J0LT5wb3J0LnN0YXRlLT5wb3J0LmRlbHRhX21zcl93YWl0
KTsKIAotCXNwaW5fdW5sb2NrKCZzcG9ydC0+cG9ydC5sb2NrKTsKIAlyZXR1cm4gSVJRX0hBTkRM
RUQ7CiB9CiAKK3N0YXRpYyBpcnFyZXR1cm5fdCBpbXhfdWFydF9ydHNpbnQoaW50IGlycSwgdm9p
ZCAqZGV2X2lkKQoreworCXN0cnVjdCBpbXhfcG9ydCAqc3BvcnQgPSBkZXZfaWQ7CisJaXJxcmV0
dXJuX3QgcmV0OworCisJc3Bpbl9sb2NrKCZzcG9ydC0+cG9ydC5sb2NrKTsKKworCXJldCA9IF9f
aW14X3VhcnRfcnRzaW50KGlycSwgZGV2X2lkKTsKKworCXNwaW5fdW5sb2NrKCZzcG9ydC0+cG9y
dC5sb2NrKTsKKworCXJldHVybiByZXQ7Cit9CisKIHN0YXRpYyBpcnFyZXR1cm5fdCBpbXhfdWFy
dF90eGludChpbnQgaXJxLCB2b2lkICpkZXZfaWQpCiB7CiAJc3RydWN0IGlteF9wb3J0ICpzcG9y
dCA9IGRldl9pZDsKQEAgLTcyNiwxNCArNzM3LDEyIEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBpbXhf
dWFydF90eGludChpbnQgaXJxLCB2b2lkICpkZXZfaWQpCiAJcmV0dXJuIElSUV9IQU5ETEVEOwog
fQogCi1zdGF0aWMgaXJxcmV0dXJuX3QgaW14X3VhcnRfcnhpbnQoaW50IGlycSwgdm9pZCAqZGV2
X2lkKQorc3RhdGljIGlycXJldHVybl90IF9faW14X3VhcnRfcnhpbnQoaW50IGlycSwgdm9pZCAq
ZGV2X2lkKQogewogCXN0cnVjdCBpbXhfcG9ydCAqc3BvcnQgPSBkZXZfaWQ7CiAJdW5zaWduZWQg
aW50IHJ4LCBmbGcsIGlnbm9yZWQgPSAwOwogCXN0cnVjdCB0dHlfcG9ydCAqcG9ydCA9ICZzcG9y
dC0+cG9ydC5zdGF0ZS0+cG9ydDsKIAotCXNwaW5fbG9jaygmc3BvcnQtPnBvcnQubG9jayk7Ci0K
IAl3aGlsZSAoaW14X3VhcnRfcmVhZGwoc3BvcnQsIFVTUjIpICYgVVNSMl9SRFIpIHsKIAkJdTMy
IHVzcjI7CiAKQEAgLTc5MiwxMSArODAxLDI2IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBpbXhfdWFy
dF9yeGludChpbnQgaXJxLCB2b2lkICpkZXZfaWQpCiAJfQogCiBvdXQ6Ci0Jc3Bpbl91bmxvY2so
JnNwb3J0LT5wb3J0LmxvY2spOwogCXR0eV9mbGlwX2J1ZmZlcl9wdXNoKHBvcnQpOworCiAJcmV0
dXJuIElSUV9IQU5ETEVEOwogfQogCitzdGF0aWMgaXJxcmV0dXJuX3QgaW14X3VhcnRfcnhpbnQo
aW50IGlycSwgdm9pZCAqZGV2X2lkKQoreworCXN0cnVjdCBpbXhfcG9ydCAqc3BvcnQgPSBkZXZf
aWQ7CisJc3RydWN0IHR0eV9wb3J0ICpwb3J0ID0gJnNwb3J0LT5wb3J0LnN0YXRlLT5wb3J0Owor
CWlycXJldHVybl90IHJldDsKKworCXNwaW5fbG9jaygmc3BvcnQtPnBvcnQubG9jayk7CisKKwly
ZXQgPSBfX2lteF91YXJ0X3J4aW50KGlycSwgZGV2X2lkKTsKKworCXNwaW5fdW5sb2NrKCZzcG9y
dC0+cG9ydC5sb2NrKTsKKworCXJldHVybiByZXQ7Cit9CisKIHN0YXRpYyB2b2lkIGlteF91YXJ0
X2NsZWFyX3J4X2Vycm9ycyhzdHJ1Y3QgaW14X3BvcnQgKnNwb3J0KTsKIAogLyoKQEAgLTg1NSw2
ICs4NzksOCBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgaW14X3VhcnRfaW50KGludCBpcnEsIHZvaWQg
KmRldl9pZCkKIAl1bnNpZ25lZCBpbnQgdXNyMSwgdXNyMiwgdWNyMSwgdWNyMiwgdWNyMywgdWNy
NDsKIAlpcnFyZXR1cm5fdCByZXQgPSBJUlFfTk9ORTsKIAorCXNwaW5fbG9jaygmc3BvcnQtPnBv
cnQubG9jayk7CisKIAl1c3IxID0gaW14X3VhcnRfcmVhZGwoc3BvcnQsIFVTUjEpOwogCXVzcjIg
PSBpbXhfdWFydF9yZWFkbChzcG9ydCwgVVNSMik7CiAJdWNyMSA9IGlteF91YXJ0X3JlYWRsKHNw
b3J0LCBVQ1IxKTsKQEAgLTg4OCwyNyArOTE0LDI1IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBpbXhf
dWFydF9pbnQoaW50IGlycSwgdm9pZCAqZGV2X2lkKQogCQl1c3IyICY9IH5VU1IyX09SRTsKIAog
CWlmICh1c3IxICYgKFVTUjFfUlJEWSB8IFVTUjFfQUdUSU0pKSB7Ci0JCWlteF91YXJ0X3J4aW50
KGlycSwgZGV2X2lkKTsKKwkJX19pbXhfdWFydF9yeGludChpcnEsIGRldl9pZCk7CiAJCXJldCA9
IElSUV9IQU5ETEVEOwogCX0KIAogCWlmICgodXNyMSAmIFVTUjFfVFJEWSkgfHwgKHVzcjIgJiBV
U1IyX1RYREMpKSB7Ci0JCWlteF91YXJ0X3R4aW50KGlycSwgZGV2X2lkKTsKKwkJaW14X3VhcnRf
dHJhbnNtaXRfYnVmZmVyKHNwb3J0KTsKIAkJcmV0ID0gSVJRX0hBTkRMRUQ7CiAJfQogCiAJaWYg
KHVzcjEgJiBVU1IxX0RUUkQpIHsKIAkJaW14X3VhcnRfd3JpdGVsKHNwb3J0LCBVU1IxX0RUUkQs
IFVTUjEpOwogCi0JCXNwaW5fbG9jaygmc3BvcnQtPnBvcnQubG9jayk7CiAJCWlteF91YXJ0X21j
dHJsX2NoZWNrKHNwb3J0KTsKLQkJc3Bpbl91bmxvY2soJnNwb3J0LT5wb3J0LmxvY2spOwogCiAJ
CXJldCA9IElSUV9IQU5ETEVEOwogCX0KIAogCWlmICh1c3IxICYgVVNSMV9SVFNEKSB7Ci0JCWlt
eF91YXJ0X3J0c2ludChpcnEsIGRldl9pZCk7CisJCV9faW14X3VhcnRfcnRzaW50KGlycSwgZGV2
X2lkKTsKIAkJcmV0ID0gSVJRX0hBTkRMRUQ7CiAJfQogCkBAIC05MjMsNiArOTQ3LDggQEAgc3Rh
dGljIGlycXJldHVybl90IGlteF91YXJ0X2ludChpbnQgaXJxLCB2b2lkICpkZXZfaWQpCiAJCXJl
dCA9IElSUV9IQU5ETEVEOwogCX0KIAorCXNwaW5fdW5sb2NrKCZzcG9ydC0+cG9ydC5sb2NrKTsK
KwogCXJldHVybiByZXQ7CiB9CiAKLS0gCjIuMjQuMAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
