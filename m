Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B8BCB9C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:04:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WchITlqddb/ymnF3ujVSy/ieStDiogsRK8Tym5mz6cE=; b=cvkbU3I8kGMK4W
	TEveiVmo36u3N8nGqkLL8YP9rlG9//Iih4i1TRYsfiy5eyNJ6tDMkurCOdktuiX75S8u+u9/8PtcK
	J9d1kf9fsOH0FXkGHo7juD4CEqdAcZYMNxKDQvz3ZHXapVLxP17svEKj/kvVbplDkBGLvKZ1rflS5
	CI2TECDLw5gDE02OLLRrwrLdobc1/fdhrO0KXlTWOCo7iungpthNPPHAIWHW/NFzconbyfzvu+QJf
	0iNXFuw8bqxs9EwJm6NoBaKADogS4K/fiAxv7hklpjUkfHWtj8Kpu7Qqwp1Tn1fkV/d1nzVskWWtT
	ZqoANhLDE+i9t6VeXYEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMJv-0001LA-MV; Fri, 04 Oct 2019 12:04:27 +0000
Received: from 6.mo173.mail-out.ovh.net ([46.105.43.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMHK-0007ZA-MA
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:01:48 +0000
Received: from player792.ha.ovh.net (unknown [10.108.42.23])
 by mo173.mail-out.ovh.net (Postfix) with ESMTP id EEC1211A5AC
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  4 Oct 2019 14:01:43 +0200 (CEST)
Received: from kaod.org (lfbn-1-2229-223.w90-76.abo.wanadoo.fr [90.76.50.223])
 (Authenticated sender: clg@kaod.org)
 by player792.ha.ovh.net (Postfix) with ESMTPSA id 59679AA65F0C;
 Fri,  4 Oct 2019 12:01:28 +0000 (UTC)
From: =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
To: linux-mtd@lists.infradead.org, Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH 07/16] mtd: spi-nor: aspeed: Add support for the 4B opcodes
Date: Fri,  4 Oct 2019 13:59:10 +0200
Message-Id: <20191004115919.20788-8-clg@kaod.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191004115919.20788-1-clg@kaod.org>
References: <20191004115919.20788-1-clg@kaod.org>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 3794001212520238003
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrhedugdegudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050146_889857_D63C7580 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.43.93 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Richard Weinberger <richard@nod.at>, Marek Vasut <marek.vasut@gmail.com>,
 Joel Stanley <joel@jms.id.au>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U3dpdGNoIHRoZSBkZWZhdWx0IGNvbnRyb2xsZXIgdmFsdWUgdG8gdXNlIHRoZSByZWFkIG1vZGUg
aW4gb3JkZXIgdG8KY3VzdG9taXplIHRoZSBjb21tYW5kIGFuZCB1c2UgU1BJTk9SX09QX1JFQURf
NEIgKDB4MTMpIHdoZW4gdGhlIGNoaXAKc3VwcG9ydHMgNEIgb3Bjb2Rlcy4KClNpZ25lZC1vZmYt
Ynk6IEPDqWRyaWMgTGUgR29hdGVyIDxjbGdAa2FvZC5vcmc+Ci0tLQogZHJpdmVycy9tdGQvc3Bp
LW5vci9hc3BlZWQtc21jLmMgfCAxMSArKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9zcGkt
bm9yL2FzcGVlZC1zbWMuYyBiL2RyaXZlcnMvbXRkL3NwaS1ub3IvYXNwZWVkLXNtYy5jCmluZGV4
IDFjMTgyMmExMzQwNy4uYWRkOTVhOWFjYTc2IDEwMDY0NAotLS0gYS9kcml2ZXJzL210ZC9zcGkt
bm9yL2FzcGVlZC1zbWMuYworKysgYi9kcml2ZXJzL210ZC9zcGktbm9yL2FzcGVlZC1zbWMuYwpA
QCAtODg4LDE0ICs4ODgsMjEgQEAgc3RhdGljIHUzMiBhc3BlZWRfc21jX2RlZmF1bHRfcmVhZChz
dHJ1Y3QgYXNwZWVkX3NtY19jaGlwICpjaGlwKQogCSAqLwogCXUzMiBjdGxfbWFzayA9IGNoaXAt
PmNvbnRyb2xsZXItPmluZm8gPT0gJnNwaV8yNDAwX2luZm8gPwogCQkgQ09OVFJPTF9JT19BRERS
RVNTXzRCIDogMDsKKwl1OCBjbWQgPSBjaGlwLT5ub3IuZmxhZ3MgJiBTTk9SX0ZfNEJfT1BDT0RF
UyA/IFNQSU5PUl9PUF9SRUFEXzRCIDoKKwkJU1BJTk9SX09QX1JFQUQ7CiAKKwkvKgorCSAqIFVz
ZSB0aGUgInJlYWQgY29tbWFuZCIgbW9kZSB0byBjdXN0b21pemUgdGhlIG9wY29kZS4gSW4KKwkg
KiBub3JtYWwgY29tbWFuZCBtb2RlLCB0aGUgdmFsdWUgaXMgbmVjZXNzYXJpbHkgUkVBRCAoMHgz
KSBvbgorCSAqIHRoZSBBU1QyNDAwLzI1MDAgU29Dcy4KKwkgKi8KIAlyZXR1cm4gKGNoaXAtPmN0
bF92YWxbc21jX3JlYWRdICYgY3RsX21hc2spIHwKIAkJKDB4MDAgPDwgMjgpIHwgLyogU2luZ2xl
IGJpdCAqLwogCQkoMHgwMCA8PCAyNCkgfCAvKiBDRSMgbWF4ICovCi0JCSgweDAzIDw8IDE2KSB8
IC8qIHVzZSBub3JtYWwgcmVhZHMgKi8KKwkJKGNtZCAgPDwgMTYpIHwgLyogdXNlIHJlYWQgbW9k
ZSB0byBzdXBwb3J0IDRCIG9wY29kZSAqLwogCQkoMHgwMCA8PCAgOCkgfCAvKiBIQ0xLLzE2ICov
CiAJCSgweDAwIDw8ICA2KSB8IC8qIG5vIGR1bW15IGN5Y2xlICovCi0JCSgweDAwKTsgICAgICAg
IC8qIG5vcm1hbCBtb2RlICovCisJCSgweDAxKTsgICAgICAgIC8qIHJlYWQgbW9kZSAqLwogfQog
CiBzdGF0aWMgaW50IGFzcGVlZF9zbWNfb3B0aW1pemVfcmVhZChzdHJ1Y3QgYXNwZWVkX3NtY19j
aGlwICpjaGlwLAotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
