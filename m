Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DEE72032
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 21:45:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3zgRSpePz8s8ejmueS8hJB4whUlXfbCb2SNBkZQCX28=; b=a3/VPzRmHqwpZR
	5QREWGosVdutZGj6m9MZo3e5ES4/K+iZfMeP3re+iiYUTJqD33lDDizY8k2soLxp/Ej2VvvnMhA+w
	INCqTYt+7LI0AY+y91zppprWxzAf2vhQAjVqO6SQI+EuV9xW1Ay9HzQ+8WliqDFI3tVq7MelGBb29
	9vBBnidS388IUEDKxebxse+RVEmEuwjCSras+Z9oca9pwf0CRzVX1mdJ6VbKK18yZt/17wQVrZUJY
	yVNsLymMQrVBs005vYHD1PrnYYvQFrCQowFkOdHph1w4vOIgzM6C1FfBeKtTgdUQXotLmcd3JfZTJ
	ZSHVstFvgUSdKxxTmPzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq0jC-0004dM-Qr; Tue, 23 Jul 2019 19:45:38 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq0j0-0004SM-U0
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 19:45:28 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 4D60F73695E; Tue, 23 Jul 2019 21:45:21 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alessandro Zummo <a.zummo@towertech.it>
Subject: [PATCH] ARM: kirkwood: ts219: disable the SoC's RTC
Date: Tue, 23 Jul 2019 21:45:05 +0200
Message-Id: <20190723194505.28060-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_124527_123895_957422D3 
X-CRM114-Status: UNSURE (   8.83  )
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
Cc: linux-rtc@vger.kernel.org, Oliver Hartkopp <socketcan@hartkopp.net>,
 tbm@cyrius.com, linux-arm-kernel@lists.infradead.org,
 Andrew Lunn <andrew@lunn.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGludGVybmFsIFJUQyBkb2Vzbid0IHdvcmssIGxvYWRpbmcgdGhlIGRyaXZlciBvbmx5IHlp
ZWxkcwoKCXJ0Yy1tdiBmMTAxMDMwMC5ydGM6IGludGVybmFsIFJUQyBub3QgdGlja2luZwoKLiBT
byBkaXNhYmxlIGl0LgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVp
bmUta29lbmlnLm9yZz4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9raXJrd29vZC10czIxOS5kdHNp
IHwgOCArKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2tpcmt3b29kLXRzMjE5LmR0c2kgYi9hcmNoL2FybS9ib290
L2R0cy9raXJrd29vZC10czIxOS5kdHNpCmluZGV4IGE4OGViMjIwNzBhMS4uOTk0Y2FiY2Y0YjUx
IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9raXJrd29vZC10czIxOS5kdHNpCisrKyBi
L2FyY2gvYXJtL2Jvb3QvZHRzL2tpcmt3b29kLXRzMjE5LmR0c2kKQEAgLTEwNCwzICsxMDQsMTEg
QEAKICZwY2llMCB7CiAJc3RhdHVzID0gIm9rYXkiOwogfTsKKworJnJ0YyB7CisJLyoKKwkgKiBU
aGVyZSBpcyBhIHMzNTM5MGEgYXZhaWxhYmxlIG9uIHRoZSBpMmMgYnVzLCB0aGUgaW50ZXJuYWwg
cnRjIGlzbid0CisJICogd29ya2luZyAocHJvYmFibHkgbm8gY3J5c3RhbCBhc3NlbWJsZWQpLgor
CSAqLworCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cit9OwotLSAKMi4yMC4xCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
