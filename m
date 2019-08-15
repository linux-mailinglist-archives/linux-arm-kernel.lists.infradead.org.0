Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE398F68B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 23:42:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5JgQwTmxQqLjC7LBn1IWnsAaM2zNA8CAFfLJ8ANgN8=; b=aH43JubEunN9G9
	g44+jsn96e5XsaLry7XSOE3EFpF4uNNMU0a8oBlbZQm8JpZzPz4nCF1UUG2ceAEXUrMYh1oBJam9/
	4gdaBSpJwbtCeXwr0vsxwkccoF1YpnRgrE/O4r+8DAkaVonqwakD9v9DGT4MaOGrKRuP4Ri7m6gaD
	uaMw2riwQiSwBwzcT8CeA8OFqkSXIkCBa5SqhmnfanYRo0R2qwY1e3nkQLQSgI9Y+Ss7mgQnbACg3
	VJGBCBfKVQ36UmKsjivbE8lRxbFVDggSITglwCtmgP3XnRb/zD3a/nqtN31U8dzwZwFMTsfIXEfGY
	dIIqN5gIpvQSHJtNiKxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyNVX-0003iS-83; Thu, 15 Aug 2019 21:42:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyNVJ-0003hO-S2
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 21:41:55 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hyNVA-0007cF-3T; Thu, 15 Aug 2019 23:41:44 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hyNV8-0003Go-HM; Thu, 15 Aug 2019 23:41:42 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 2/3] pwm: atmel: use a constant for maximum prescale value
Date: Thu, 15 Aug 2019 23:41:32 +0200
Message-Id: <20190815214133.11134-2-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190815214133.11134-1-uwe@kleine-koenig.org>
References: <20190815214133.11134-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_144153_901712_94E9E34A 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-pwm@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIG1heGltYWwgcHJlc2NhbGUgdmFsdWUgaXMgMTAgZm9yIGFsbCBzdXBwb3J0ZWQgdmFyaWFu
dHMuIFNvIGRyb3AgdGhlCm1lbWJlciBpbiB0aGUgdmFyaWFudCBkZXNjcmlwdGlvbiBhbmQgaW50
cm9kdWNlIGEgZ2xvYmFsIGNvbnN0YW50IGluc3RlYWQuCgpUaGlzIHJlZHVjZXMgdGhlIHNpemUg
b2YgdGhlIHZhcmlhbnQgZGVzY3JpcHRpb25zIGFuZCB0aGUgLmFwcGx5KCkgY2FsbGJhY2sKY2Fu
IGJlIGNvbXBpbGVkIGEgYml0IG1vcmUgZWZmZWN0aXZlbHkuCgpTaWduZWQtb2ZmLWJ5OiBVd2Ug
S2xlaW5lLUvDtm5pZyA8dXdlQGtsZWluZS1rb2VuaWcub3JnPgotLS0KIGRyaXZlcnMvcHdtL3B3
bS1hdG1lbC5jIHwgOCArKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwg
NSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tYXRtZWwuYyBiL2Ry
aXZlcnMvcHdtL3B3bS1hdG1lbC5jCmluZGV4IGFjM2Q3YTIwMGI5ZS4uZDdhNmQzMmI1Nzc0IDEw
MDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tYXRtZWwuYworKysgYi9kcml2ZXJzL3B3bS9wd20t
YXRtZWwuYwpAQCAtNTAsNiArNTAsOCBAQAogI2RlZmluZSBQV01WMl9DUFJECQkweDBDCiAjZGVm
aW5lIFBXTVYyX0NQUkRVUEQJCTB4MTAKIAorI2RlZmluZSBQV01fTUFYX1BSRVMJCTEwCisKIHN0
cnVjdCBhdG1lbF9wd21fcmVnaXN0ZXJzIHsKIAl1OCBwZXJpb2Q7CiAJdTggcGVyaW9kX3VwZDsK
QEAgLTU5LDcgKzYxLDYgQEAgc3RydWN0IGF0bWVsX3B3bV9yZWdpc3RlcnMgewogCiBzdHJ1Y3Qg
YXRtZWxfcHdtX2NvbmZpZyB7CiAJdTMyIG1heF9wZXJpb2Q7Ci0JdTMyIG1heF9wcmVzOwogfTsK
IAogc3RydWN0IGF0bWVsX3B3bV9kYXRhIHsKQEAgLTEyNiw3ICsxMjcsNyBAQCBzdGF0aWMgaW50
IGF0bWVsX3B3bV9jYWxjdWxhdGVfY3ByZF9hbmRfcHJlcyhzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAs
CiAJZm9yICgqcHJlcyA9IDA7IGN5Y2xlcyA+IGF0bWVsX3B3bS0+ZGF0YS0+Y2ZnLm1heF9wZXJp
b2Q7IGN5Y2xlcyA+Pj0gMSkKIAkJKCpwcmVzKSsrOwogCi0JaWYgKCpwcmVzID4gYXRtZWxfcHdt
LT5kYXRhLT5jZmcubWF4X3ByZXMpIHsKKwlpZiAoKnByZXMgPiBQV01fTUFYX1BSRVMpIHsKIAkJ
ZGV2X2VycihjaGlwLT5kZXYsICJwcmVzIGV4Y2VlZHMgdGhlIG1heGltdW0gdmFsdWVcbiIpOwog
CQlyZXR1cm4gLUVJTlZBTDsKIAl9CkBAIC0yODksNyArMjkwLDYgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBhdG1lbF9wd21fZGF0YSBhdG1lbF9zYW05cmxfcHdtX2RhdGEgPSB7CiAJLmNmZyA9IHsK
IAkJLyogMTYgYml0cyB0byBrZWVwIHBlcmlvZCBhbmQgZHV0eS4gKi8KIAkJLm1heF9wZXJpb2QJ
PSAweGZmZmYsCi0JCS5tYXhfcHJlcwk9IDEwLAogCX0sCiB9OwogCkBAIC0zMDMsNyArMzAzLDYg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBhdG1lbF9wd21fZGF0YSBhdG1lbF9zYW1hNV9wd21fZGF0
YSA9IHsKIAkuY2ZnID0gewogCQkvKiAxNiBiaXRzIHRvIGtlZXAgcGVyaW9kIGFuZCBkdXR5LiAq
LwogCQkubWF4X3BlcmlvZAk9IDB4ZmZmZiwKLQkJLm1heF9wcmVzCT0gMTAsCiAJfSwKIH07CiAK
QEAgLTMxNyw3ICszMTYsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGF0bWVsX3B3bV9kYXRhIG1j
aHBfc2FtOXg2MF9wd21fZGF0YSA9IHsKIAkuY2ZnID0gewogCQkvKiAzMiBiaXRzIHRvIGtlZXAg
cGVyaW9kIGFuZCBkdXR5LiAqLwogCQkubWF4X3BlcmlvZAk9IDB4ZmZmZmZmZmYsCi0JCS5tYXhf
cHJlcwk9IDEwLAogCX0sCiB9OwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
