Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7515E7DB5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 01:58:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sab5E+FDZYa1x0riYjIDI4jtMRNnrykfS+2BlOBv44w=; b=hfNJ6qvvTpwDjN
	QVaOIxttUPsksLLtiblAScw0YCLgCHgccFwzrbNp89zUORn4Sc8+Qik6IDdUpMGP0ifL8vXnyFX7j
	4+/VbH1YtsFPX94wjFkbY5wTKLBnQQX+GMgk0rYZMZHTuJTvM1xzgt6laoSOGAzTorW0pxscJ0PS7
	1nir1MazZQkbwKtygo2OvGLgk6xUk0Iq5UnzlsWAeoQE5dp7dEukWPHr4L0CBnLqeFGRmU2NOmfca
	3eFW/DnSdUqRSmfK7ifI++K+UrFecn0PiUl18ndoyh0+8uP85Lqj2SyuYg514u+4Iokd1PopHb7Rh
	6lR1RYyY9yu0463NDaQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPFq9-0008Qh-2E; Tue, 29 Oct 2019 00:58:29 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPFpv-0008PM-1N
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 00:58:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572310693; bh=ti3Sk/6TB5q7r+RFOeAHsTKYq7LvJhhN9uE/t8+qFwI=;
 h=From:To:Cc:Subject:Date:References:From;
 b=mvHrNhcjSP83n3YV1+Oadkf1d0GZxaqQFq6D9A9X4b4SHBnyjFxRsU9EkebJNX+0C
 RM9tRvqOUcexIQIq3/1el2WgchOV9N1W/yiGlG1V+/ejb0W3tHAVuLOrtAOoawGQYF
 ev2KAsPhbWaa/QEnidHdfH77PLlk7oXw42Jw1P/o=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Marco Felsch <m.felsch@pengutronix.de>, Ondrej Jirman <megous@megous.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@bootlin.com>
Subject: [PATCH 1/3] input: edt-ft5x06: Add support for regulator
Date: Tue, 29 Oct 2019 01:58:04 +0100
Message-Id: <20191029005806.3577376-2-megous@megous.com>
In-Reply-To: <20191029005806.3577376-1-megous@megous.com>
References: <20191029005806.3577376-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_175815_404690_CA46294D 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTXlsw6huZSBKb3NzZXJhbmQgPG15bGVuZS5qb3NzZXJhbmRAYm9vdGxpbi5jb20+CgpB
ZGQgdGhlIHN1cHBvcnQgZm9yIGVuYWJsaW5nIG9wdGlvbmFsIHJlZ3VsYXRvciB0aGF0IG1heSBi
ZSB1c2VkIGFzIFZDQwpzb3VyY2UuCgpTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdv
dXNAbWVnb3VzLmNvbT4KU2lnbmVkLW9mZi1ieTogTXlsw6huZSBKb3NzZXJhbmQgPG15bGVuZS5q
b3NzZXJhbmRAYm9vdGxpbi5jb20+Ci0tLQogZHJpdmVycy9pbnB1dC90b3VjaHNjcmVlbi9lZHQt
ZnQ1eDA2LmMgfCAzMCArKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQs
IDMwIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lucHV0L3RvdWNoc2NyZWVu
L2VkdC1mdDV4MDYuYyBiL2RyaXZlcnMvaW5wdXQvdG91Y2hzY3JlZW4vZWR0LWZ0NXgwNi5jCmlu
ZGV4IDU1MjVmMWZiMTUyNi4uZDYxNzMxYzAwMzdkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2lucHV0
L3RvdWNoc2NyZWVuL2VkdC1mdDV4MDYuYworKysgYi9kcml2ZXJzL2lucHV0L3RvdWNoc2NyZWVu
L2VkdC1mdDV4MDYuYwpAQCAtMjgsNiArMjgsNyBAQAogI2luY2x1ZGUgPGxpbnV4L2lucHV0L210
Lmg+CiAjaW5jbHVkZSA8bGludXgvaW5wdXQvdG91Y2hzY3JlZW4uaD4KICNpbmNsdWRlIDxhc20v
dW5hbGlnbmVkLmg+CisjaW5jbHVkZSA8bGludXgvcmVndWxhdG9yL2NvbnN1bWVyLmg+CiAKICNk
ZWZpbmUgV09SS19SRUdJU1RFUl9USFJFU0hPTEQJCTB4MDAKICNkZWZpbmUgV09SS19SRUdJU1RF
Ul9SRVBPUlRfUkFURQkweDA4CkBAIC04OCw2ICs4OSw3IEBAIHN0cnVjdCBlZHRfZnQ1eDA2X3Rz
X2RhdGEgewogCXN0cnVjdCB0b3VjaHNjcmVlbl9wcm9wZXJ0aWVzIHByb3A7CiAJdTE2IG51bV94
OwogCXUxNiBudW1feTsKKwlzdHJ1Y3QgcmVndWxhdG9yICp2Y2M7CiAKIAlzdHJ1Y3QgZ3Bpb19k
ZXNjICpyZXNldF9ncGlvOwogCXN0cnVjdCBncGlvX2Rlc2MgKndha2VfZ3BpbzsKQEAgLTEwMzYs
NiArMTAzOCwxMyBAQCBlZHRfZnQ1eDA2X3RzX3NldF9yZWdzKHN0cnVjdCBlZHRfZnQ1eDA2X3Rz
X2RhdGEgKnRzZGF0YSkKIAl9CiB9CiAKK3N0YXRpYyB2b2lkIGVkdF9mdDV4MDZfZGlzYWJsZV9y
ZWd1bGF0b3Iodm9pZCAqYXJnKQoreworCXN0cnVjdCBlZHRfZnQ1eDA2X3RzX2RhdGEgKmRhdGEg
PSBhcmc7CisKKwlyZWd1bGF0b3JfZGlzYWJsZShkYXRhLT52Y2MpOworfQorCiBzdGF0aWMgaW50
IGVkdF9mdDV4MDZfdHNfcHJvYmUoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCwKIAkJCQkJIGNv
bnN0IHN0cnVjdCBpMmNfZGV2aWNlX2lkICppZCkKIHsKQEAgLTEwNjQsNiArMTA3MywyNyBAQCBz
dGF0aWMgaW50IGVkdF9mdDV4MDZfdHNfcHJvYmUoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCwK
IAogCXRzZGF0YS0+bWF4X3N1cHBvcnRfcG9pbnRzID0gY2hpcF9kYXRhLT5tYXhfc3VwcG9ydF9w
b2ludHM7CiAKKwl0c2RhdGEtPnZjYyA9IGRldm1fcmVndWxhdG9yX2dldCgmY2xpZW50LT5kZXYs
ICJ2Y2MiKTsKKwlpZiAoSVNfRVJSKHRzZGF0YS0+dmNjKSkgeworCQllcnJvciA9IFBUUl9FUlIo
dHNkYXRhLT52Y2MpOworCQlpZiAoZXJyb3IgIT0gLUVQUk9CRV9ERUZFUikKKwkJCWRldl9lcnIo
JmNsaWVudC0+ZGV2LAorCQkJCSJmYWlsZWQgdG8gcmVxdWVzdCByZWd1bGF0b3I6ICVkXG4iLCBl
cnJvcik7CisJCXJldHVybiBlcnJvcjsKKwl9CisKKwllcnJvciA9IHJlZ3VsYXRvcl9lbmFibGUo
dHNkYXRhLT52Y2MpOworCWlmIChlcnJvciA8IDApIHsKKwkJZGV2X2VycigmY2xpZW50LT5kZXYs
ICJmYWlsZWQgdG8gZW5hYmxlIHZjYzogJWRcbiIsIGVycm9yKTsKKwkJcmV0dXJuIGVycm9yOwor
CX0KKworCWVycm9yID0gZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0KCZjbGllbnQtPmRldiwKKwkJ
CQkJIGVkdF9mdDV4MDZfZGlzYWJsZV9yZWd1bGF0b3IsCisJCQkJCSB0c2RhdGEpOworCWlmIChl
cnJvcikKKwkJcmV0dXJuIGVycm9yOworCiAJdHNkYXRhLT5yZXNldF9ncGlvID0gZGV2bV9ncGlv
ZF9nZXRfb3B0aW9uYWwoJmNsaWVudC0+ZGV2LAogCQkJCQkJICAgICAicmVzZXQiLCBHUElPRF9P
VVRfSElHSCk7CiAJaWYgKElTX0VSUih0c2RhdGEtPnJlc2V0X2dwaW8pKSB7Ci0tIAoyLjIzLjAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
