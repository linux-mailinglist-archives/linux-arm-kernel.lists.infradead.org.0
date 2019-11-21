Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7446B1049E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 06:04:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ZeE0GVFEWGJsTZ5Fvj5XkQnZBcuFeFcoIt9K7zmjQ8=; b=aMbI3AFye1U/3n
	OjzFCedLEIAN+iCehtI/pgojvfY82jghaMebmD+/OLasm5WUp3n/Nscdxj3rCEXPVTV0Y4gS0hQaG
	OUzh1BStZ7Qwh3taSAGOVsBf7hdRImaip7hH0d5dsFy9qRIIvh9d5CYVBs9WKD7ZBEcNec+IC9bID
	LlEclCI/SLPmUSW0a0i5U+8nIGmLUf0Kc5vL3lOL7RcGK0dIy5Dht08t07ZBcK1ho4J0XgHkbqsBL
	Xn1jbg+BRSlLhuPRAKtkXehKVxLqjTElAQvyJcOP0ZyeEY3j5VajcwuArDSOrhFu4srm9Dk6ZRqR4
	UpEE8+XExyqsBiMMmBlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXeeH-0006HU-Fo; Thu, 21 Nov 2019 05:04:57 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXebr-000486-6V; Thu, 21 Nov 2019 05:02:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C0F52B183;
 Thu, 21 Nov 2019 05:02:21 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v5 9/9] arm64: dts: realtek: rtd139x: Add irq muxes and UART
 interrupts
Date: Thu, 21 Nov 2019 06:02:08 +0100
Message-Id: <20191121050208.11324-10-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191121050208.11324-1-afaerber@suse.de>
References: <20191121050208.11324-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_210227_419200_F4A78165 
X-CRM114-Status: UNSURE (   9.41  )
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
b2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogdjQgLT4gdjU6
IFVuY2hhbmdlZAogCiB2NDogTmV3CiAKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQx
Mzl4LmR0c2kgfCAyMiArKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjIg
aW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9y
dGQxMzl4LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTM5eC5kdHNpCmlu
ZGV4IDcwNmRhMTJmOWVhMy4uZjUzY2I4YTUwODNiIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JlYWx0ZWsvcnRkMTM5eC5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVh
bHRlay9ydGQxMzl4LmR0c2kKQEAgLTg0LDYgKzg0LDE0IEBACiAJCQkJI3Jlc2V0LWNlbGxzID0g
PDE+OwogCQkJfTsKIAorCQkJaXNvX2lycV9tdXg6IGludGVycnVwdC1jb250cm9sbGVyQDcwMDAg
eworCQkJCWNvbXBhdGlibGUgPSAicmVhbHRlayxydGQxMzk1LWlzby1pcnEtbXV4IjsKKwkJCQly
ZWcgPSA8MHg3MDAwIDB4MTAwPjsKKwkJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNDEgSVJRX1RZ
UEVfTEVWRUxfSElHSD47CisJCQkJaW50ZXJydXB0LWNvbnRyb2xsZXI7CisJCQkJI2ludGVycnVw
dC1jZWxscyA9IDwxPjsKKwkJCX07CisKIAkJCWlzb19yZXNldDogcmVzZXQtY29udHJvbGxlckA3
MDg4IHsKIAkJCQljb21wYXRpYmxlID0gInNucHMsZHctbG93LXJlc2V0IjsKIAkJCQlyZWcgPSA8
MHg3MDg4IDB4ND47CkBAIC0xMDMsNiArMTExLDggQEAKIAkJCQlyZWctaW8td2lkdGggPSA8ND47
CiAJCQkJY2xvY2stZnJlcXVlbmN5ID0gPDI3MDAwMDAwPjsKIAkJCQlyZXNldHMgPSA8Jmlzb19y
ZXNldCBSVEQxMjk1X0lTT19SU1ROX1VSMD47CisJCQkJaW50ZXJydXB0LXBhcmVudCA9IDwmaXNv
X2lycV9tdXg+OworCQkJCWludGVycnVwdHMgPSA8Mj47CiAJCQkJc3RhdHVzID0gImRpc2FibGVk
IjsKIAkJCX07CiAKQEAgLTExMSw2ICsxMjEsMTQgQEAKIAkJCQlyZWcgPSA8MHgxYTIwMCAweDg+
OwogCQkJfTsKIAorCQkJbWlzY19pcnFfbXV4OiBpbnRlcnJ1cHQtY29udHJvbGxlckAxYjAwMCB7
CisJCQkJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDEzOTUtbWlzYy1pcnEtbXV4IjsKKwkJCQly
ZWcgPSA8MHgxYjAwMCAweDEwMD47CisJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDQwIElSUV9U
WVBFX0xFVkVMX0hJR0g+OworCQkJCWludGVycnVwdC1jb250cm9sbGVyOworCQkJCSNpbnRlcnJ1
cHQtY2VsbHMgPSA8MT47CisJCQl9OworCiAJCQl1YXJ0MTogc2VyaWFsQDFiMjAwIHsKIAkJCQlj
b21wYXRpYmxlID0gInNucHMsZHctYXBiLXVhcnQiOwogCQkJCXJlZyA9IDwweDFiMjAwIDB4MTAw
PjsKQEAgLTExOCw2ICsxMzYsOCBAQAogCQkJCXJlZy1pby13aWR0aCA9IDw0PjsKIAkJCQljbG9j
ay1mcmVxdWVuY3kgPSA8NDMyMDAwMDAwPjsKIAkJCQlyZXNldHMgPSA8JnJlc2V0MiBSVEQxMjk1
X1JTVE5fVVIxPjsKKwkJCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZtaXNjX2lycV9tdXg+OworCQkJ
CWludGVycnVwdHMgPSA8Mz47CiAJCQkJc3RhdHVzID0gImRpc2FibGVkIjsKIAkJCX07CiAKQEAg
LTEyOCw2ICsxNDgsOCBAQAogCQkJCXJlZy1pby13aWR0aCA9IDw0PjsKIAkJCQljbG9jay1mcmVx
dWVuY3kgPSA8NDMyMDAwMDAwPjsKIAkJCQlyZXNldHMgPSA8JnJlc2V0MiBSVEQxMjk1X1JTVE5f
VVIyPjsKKwkJCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZtaXNjX2lycV9tdXg+OworCQkJCWludGVy
cnVwdHMgPSA8OD47CiAJCQkJc3RhdHVzID0gImRpc2FibGVkIjsKIAkJCX07CiAJCX07Ci0tIAoy
LjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
