Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA0A101146
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 03:21:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fxmWgDRwzjsfbUb3obDnEiJYoA86KgiTsSymZ2B/3HU=; b=D91z9aYHDOT0BO
	6nCoAaeUwJCowgk6wEe3Rpjsll1aDWLSpJvVADqKVPwyt7Cbf9oslWcIJkfsUbxttreihW0fLwbKh
	3DEo3EjPXX+ZUci6Cqq1i12AnghcCO5vAQzME8S+Pc+UQzntzS4sHwrUgENtaeFGF571Pt9ENxqxG
	IDkR3fpOezJD0AtNF/Ui4y/WgYRBDLk36KcCvzhraWy4zpuCE1MZXBqfDdJeqEaReR2YNyst0uI2m
	PW/YksuAlpioi4j6zSksWYIJAAxIVQuBS5M/ASuNsdTX5jvGkVh5CKIdF6MpaXfmuW3k5wuBMV3Xu
	Uk4TpSKGW9W2U+Tj/v6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWt8j-0000f7-Mt; Tue, 19 Nov 2019 02:21:13 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWt76-0006Ut-AK; Tue, 19 Nov 2019 02:19:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 7B32AB336;
 Tue, 19 Nov 2019 02:19:25 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v4 8/8] arm64: dts: realtek: rtd139x: Add irq muxes and UART
 interrupts
Date: Tue, 19 Nov 2019 03:19:17 +0100
Message-Id: <20191119021917.15917-9-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191119021917.15917-1-afaerber@suse.de>
References: <20191119021917.15917-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_181932_539359_DF948353 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGlzbyBhbmQgbWlzYyBJUlEgbXV4IERUIG5vZGVzIGZvciBSZWFsdGVrIFJURDEzOTUgU29D
LgoKVXBkYXRlIHRoZSBVQVJUIERUIG5vZGVzIHdpdGggaW50ZXJydXB0cyBmcm9tIHRoZXNlIG11
eGVzLApzbyB0aGF0IFVBUlQwIGNhbiBiZSB1c2VkIHdpdGhvdXQgZWFybHljb24uCgpTaWduZWQt
b2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogdjQ6IE5ldwog
CiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTM5eC5kdHNpIHwgMjIgKysrKysrKysr
KysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTM5eC5kdHNpIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEzOXguZHRzaQppbmRleCA3MDZkYTEyZjllYTMuLmY1M2Ni
OGE1MDgzYiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEzOXgu
ZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTM5eC5kdHNpCkBAIC04
NCw2ICs4NCwxNCBAQAogCQkJCSNyZXNldC1jZWxscyA9IDwxPjsKIAkJCX07CiAKKwkJCWlzb19p
cnFfbXV4OiBpbnRlcnJ1cHQtY29udHJvbGxlckA3MDAwIHsKKwkJCQljb21wYXRpYmxlID0gInJl
YWx0ZWsscnRkMTM5NS1pc28taXJxLW11eCI7CisJCQkJcmVnID0gPDB4NzAwMCAweDEwMD47CisJ
CQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDQxIElSUV9UWVBFX0xFVkVMX0hJR0g+OworCQkJCWlu
dGVycnVwdC1jb250cm9sbGVyOworCQkJCSNpbnRlcnJ1cHQtY2VsbHMgPSA8MT47CisJCQl9Owor
CiAJCQlpc29fcmVzZXQ6IHJlc2V0LWNvbnRyb2xsZXJANzA4OCB7CiAJCQkJY29tcGF0aWJsZSA9
ICJzbnBzLGR3LWxvdy1yZXNldCI7CiAJCQkJcmVnID0gPDB4NzA4OCAweDQ+OwpAQCAtMTAzLDYg
KzExMSw4IEBACiAJCQkJcmVnLWlvLXdpZHRoID0gPDQ+OwogCQkJCWNsb2NrLWZyZXF1ZW5jeSA9
IDwyNzAwMDAwMD47CiAJCQkJcmVzZXRzID0gPCZpc29fcmVzZXQgUlREMTI5NV9JU09fUlNUTl9V
UjA+OworCQkJCWludGVycnVwdC1wYXJlbnQgPSA8Jmlzb19pcnFfbXV4PjsKKwkJCQlpbnRlcnJ1
cHRzID0gPDI+OwogCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJCQl9OwogCkBAIC0xMTEsNiAr
MTIxLDE0IEBACiAJCQkJcmVnID0gPDB4MWEyMDAgMHg4PjsKIAkJCX07CiAKKwkJCW1pc2NfaXJx
X211eDogaW50ZXJydXB0LWNvbnRyb2xsZXJAMWIwMDAgeworCQkJCWNvbXBhdGlibGUgPSAicmVh
bHRlayxydGQxMzk1LW1pc2MtaXJxLW11eCI7CisJCQkJcmVnID0gPDB4MWIwMDAgMHgxMDA+Owor
CQkJCWludGVycnVwdHMgPSA8R0lDX1NQSSA0MCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCQlp
bnRlcnJ1cHQtY29udHJvbGxlcjsKKwkJCQkjaW50ZXJydXB0LWNlbGxzID0gPDE+OworCQkJfTsK
KwogCQkJdWFydDE6IHNlcmlhbEAxYjIwMCB7CiAJCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWFw
Yi11YXJ0IjsKIAkJCQlyZWcgPSA8MHgxYjIwMCAweDEwMD47CkBAIC0xMTgsNiArMTM2LDggQEAK
IAkJCQlyZWctaW8td2lkdGggPSA8ND47CiAJCQkJY2xvY2stZnJlcXVlbmN5ID0gPDQzMjAwMDAw
MD47CiAJCQkJcmVzZXRzID0gPCZyZXNldDIgUlREMTI5NV9SU1ROX1VSMT47CisJCQkJaW50ZXJy
dXB0LXBhcmVudCA9IDwmbWlzY19pcnFfbXV4PjsKKwkJCQlpbnRlcnJ1cHRzID0gPDM+OwogCQkJ
CXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJCQl9OwogCkBAIC0xMjgsNiArMTQ4LDggQEAKIAkJCQly
ZWctaW8td2lkdGggPSA8ND47CiAJCQkJY2xvY2stZnJlcXVlbmN5ID0gPDQzMjAwMDAwMD47CiAJ
CQkJcmVzZXRzID0gPCZyZXNldDIgUlREMTI5NV9SU1ROX1VSMj47CisJCQkJaW50ZXJydXB0LXBh
cmVudCA9IDwmbWlzY19pcnFfbXV4PjsKKwkJCQlpbnRlcnJ1cHRzID0gPDg+OwogCQkJCXN0YXR1
cyA9ICJkaXNhYmxlZCI7CiAJCQl9OwogCQl9OwotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
