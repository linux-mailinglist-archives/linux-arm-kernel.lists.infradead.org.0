Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED4E8F68E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 23:42:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ruu8z0dAMabaX3etIyMWb+MWRjYOd/Gp7uEW1U3TnU=; b=JTcOnRWxIM1Xw9
	l8id+y9tszUzXdMeK3Bnj2POCoTnQ4irIq/i/3zQm6fknJ8TaUYJgesMkRlQdirGP3VXKeWmpaELj
	JKKioPkGM7i9j9Ak2HN+ndVFmvGFJqcj2xs1UsLwadB3mhsmID5XttZwFR6bnLgRQXw/5LkPUwEED
	WxXF6qjqdIRbB0GYbHPH4DpO1XkBMR6xj8BqtV1Ved4buDs7LF0Owu0lxz2cmVrFv1or+OgefvC30
	KSRNpRBcyocj99X1pGddq8Bcax95A3ckw/8LQ9B2xVkRsWOE9eHpuMqAfA9MGJD2x+hEQugeEi/97
	2KnvTsgupYCMJafkle0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyNW7-0004CJ-5X; Thu, 15 Aug 2019 21:42:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyNVJ-0003hW-SW
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 21:41:56 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hyNVA-0007cG-3U; Thu, 15 Aug 2019 23:41:44 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hyNV8-0003Gr-M0; Thu, 15 Aug 2019 23:41:42 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 3/3] pwm: atmel: replace loop in prescale calculation by
 ad-hoc calculation
Date: Thu, 15 Aug 2019 23:41:33 +0200
Message-Id: <20190815214133.11134-3-uwe@kleine-koenig.org>
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
X-CRM114-CacheID: sfid-20190815_144153_916712_9899AB2E 
X-CRM114-Status: GOOD (  16.41  )
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

VGhlIGNhbGN1bGF0ZWQgdmFsdWVzIGFyZSB0aGUgc2FtZSB3aXRoIHRoZSBtb2RpZmllZCBhbGdv
cml0aG0uIFRoZSBvbmx5CmRpZmZlcmVuY2UgaXMgdGhhdCB0aGUgY2FsY3VsYXRpb24gaXMgYSBi
aXQgbW9yZSBlZmZpY2llbnQuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dXdl
QGtsZWluZS1rb2VuaWcub3JnPgotLS0KIGRyaXZlcnMvcHdtL3B3bS1hdG1lbC5jIHwgMjQgKysr
KysrKysrKysrKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwg
NyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tYXRtZWwuYyBiL2Ry
aXZlcnMvcHdtL3B3bS1hdG1lbC5jCmluZGV4IGQ3YTZkMzJiNTc3NC4uNDJmZTdiYzA0M2E4IDEw
MDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tYXRtZWwuYworKysgYi9kcml2ZXJzL3B3bS9wd20t
YXRtZWwuYwpAQCAtNjAsNyArNjAsNyBAQCBzdHJ1Y3QgYXRtZWxfcHdtX3JlZ2lzdGVycyB7CiB9
OwogCiBzdHJ1Y3QgYXRtZWxfcHdtX2NvbmZpZyB7Ci0JdTMyIG1heF9wZXJpb2Q7CisJdTMyIHBl
cmlvZF9iaXRzOwogfTsKIAogc3RydWN0IGF0bWVsX3B3bV9kYXRhIHsKQEAgLTExOSwxNyArMTE5
LDI3IEBAIHN0YXRpYyBpbnQgYXRtZWxfcHdtX2NhbGN1bGF0ZV9jcHJkX2FuZF9wcmVzKHN0cnVj
dCBwd21fY2hpcCAqY2hpcCwKIHsKIAlzdHJ1Y3QgYXRtZWxfcHdtX2NoaXAgKmF0bWVsX3B3bSA9
IHRvX2F0bWVsX3B3bV9jaGlwKGNoaXApOwogCXVuc2lnbmVkIGxvbmcgbG9uZyBjeWNsZXMgPSBz
dGF0ZS0+cGVyaW9kOworCWludCBzaGlmdDsKIAogCS8qIENhbGN1bGF0ZSB0aGUgcGVyaW9kIGN5
Y2xlcyBhbmQgcHJlc2NhbGUgdmFsdWUgKi8KIAljeWNsZXMgKj0gY2xrX2dldF9yYXRlKGF0bWVs
X3B3bS0+Y2xrKTsKIAlkb19kaXYoY3ljbGVzLCBOU0VDX1BFUl9TRUMpOwogCi0JZm9yICgqcHJl
cyA9IDA7IGN5Y2xlcyA+IGF0bWVsX3B3bS0+ZGF0YS0+Y2ZnLm1heF9wZXJpb2Q7IGN5Y2xlcyA+
Pj0gMSkKLQkJKCpwcmVzKSsrOworCS8qCisJICogVGhlIHJlZ2lzdGVyIGZvciB0aGUgcGVyaW9k
IGxlbmd0aCBpcyBjZmcucGVyaW9kX2JpdHMgYml0cyB3aWRlLgorCSAqIFNvIGZvciBlYWNoIGJp
dCB0aGUgbnVtYmVyIG9mIGNsb2NrIGN5Y2xlcyBpcyB3aWRlciBkaXZpZGUgdGhlIGlucHV0CisJ
ICogY2xvY2sgZnJlcXVlbmN5IGJ5IHR3byB1c2luZyBwcmVzIGFuZCBzaGlmdCBjcHJkIGFjY29y
ZGluZ2x5LgorCSAqLworCXNoaWZ0ID0gZmxzKGN5Y2xlcykgLSBhdG1lbF9wd20tPmRhdGEtPmNm
Zy5wZXJpb2RfYml0czsKIAotCWlmICgqcHJlcyA+IFBXTV9NQVhfUFJFUykgeworCWlmIChzaGlm
dCA+IFBXTV9NQVhfUFJFUykgewogCQlkZXZfZXJyKGNoaXAtPmRldiwgInByZXMgZXhjZWVkcyB0
aGUgbWF4aW11bSB2YWx1ZVxuIik7CiAJCXJldHVybiAtRUlOVkFMOworCX0gZWxzZSBpZiAoc2hp
ZnQgPiAwKSB7CisJCSpwcmVzID0gc2hpZnQ7CisJCWN5Y2xlcyA+Pj0gKnByZXM7CisJfSBlbHNl
IHsKKwkJKnByZXMgPSAwOwogCX0KIAogCSpjcHJkID0gY3ljbGVzOwpAQCAtMjg5LDcgKzI5OSw3
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYXRtZWxfcHdtX2RhdGEgYXRtZWxfc2FtOXJsX3B3bV9k
YXRhID0gewogCX0sCiAJLmNmZyA9IHsKIAkJLyogMTYgYml0cyB0byBrZWVwIHBlcmlvZCBhbmQg
ZHV0eS4gKi8KLQkJLm1heF9wZXJpb2QJPSAweGZmZmYsCisJCS5wZXJpb2RfYml0cwk9IDE2LAog
CX0sCiB9OwogCkBAIC0zMDIsNyArMzEyLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBhdG1lbF9w
d21fZGF0YSBhdG1lbF9zYW1hNV9wd21fZGF0YSA9IHsKIAl9LAogCS5jZmcgPSB7CiAJCS8qIDE2
IGJpdHMgdG8ga2VlcCBwZXJpb2QgYW5kIGR1dHkuICovCi0JCS5tYXhfcGVyaW9kCT0gMHhmZmZm
LAorCQkucGVyaW9kX2JpdHMJPSAxNiwKIAl9LAogfTsKIApAQCAtMzE1LDcgKzMyNSw3IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgYXRtZWxfcHdtX2RhdGEgbWNocF9zYW05eDYwX3B3bV9kYXRhID0g
ewogCX0sCiAJLmNmZyA9IHsKIAkJLyogMzIgYml0cyB0byBrZWVwIHBlcmlvZCBhbmQgZHV0eS4g
Ki8KLQkJLm1heF9wZXJpb2QJPSAweGZmZmZmZmZmLAorCQkucGVyaW9kX2JpdHMJPSAzMiwKIAl9
LAogfTsKIAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
