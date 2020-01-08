Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CD3133D15
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 09:29:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2cQL+BVX9vw0Bn+dFHlz6wwSn++UHI9rCVGkzp3yUPo=; b=hRdAJxUawP4KDc
	ecp86a7Apw3B/mBDR5bEwE7N2PbJ/q2HmDyG1Tnywgx9weREtCddVSB6yzleIy4OqFn5kaK2+lrtu
	4ecTSx+1Fad2sjGgf5z2wmpHiouirs0BIWUrDitfkqhH33BGpvVM28hFZtp4QdHLVncuIuIB6eBXU
	MWrJj5wRBKZecIguzh4uqE3hE6EV+awPGSHgmfiTbMYgZsoDtnRfv50AqdQs934rFj8e/lC4JSZVY
	uUPib2szZKLY9YOKdWwisqQF2JE7F8DSPYB73xQafgSdjWaIc4fGw1XnlIW83cV3TIQdt56f0HXTW
	U9DdG0Tn1HS9EkiIkxtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip6iq-0007aD-A8; Wed, 08 Jan 2020 08:29:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip6ih-0007ZK-LG
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 08:29:40 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ip6iZ-00023c-6i; Wed, 08 Jan 2020 09:29:31 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1ip6iY-0005QD-6Y; Wed, 08 Jan 2020 09:29:30 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Russell King <linux@armlinux.org.uk>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH] ARM: add support for DEBUG_STACKOVERFLOW
Date: Wed,  8 Jan 2020 09:29:13 +0100
Message-Id: <20200108082913.29710-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_002939_696575_D7E0559A 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: kernel@pengutronix.de, Marc Zyngier <maz@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBpcyBzaW1pbGFyIHRvIHRoZSBjaGVja3MgZG9uZSBmb3IgbWlwcyB0aGF0IHdlcmUgaW50
cm9kdWNlZCBpbgozMzRjODZjNDk0YjkgKCJNSVBTOiBJUlE6IEFkZCBzdGFja292ZXJmbG93IGRl
dGVjdGlvbiIpIGFuZCBoZWxwcwpkZXRlY3Rpbmcgc3RhY2sgb3ZlcmZsb3dzIGluIGNvbWJpbmF0
aW9uIHdpdGggaW50ZXJydXB0cy4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1
LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQpIZWxsbywKCnRoaXMgaXMgZm9yIG5v
dyBvbmx5IGxpZ2h0bHkgdGVzdGVkIChpdCBjb21waWxlcyBhbmQgZG9lc24ndCB0cmlnZ2VyIG9u
Cm15IHRlc3QgbWFjaGluZSkuCgpCZXN0IHJlZ2FyZHMKVXdlCgogYXJjaC9hcm0vS2NvbmZpZyAg
ICAgIHwgIDEgKwogYXJjaC9hcm0va2VybmVsL2lycS5jIHwgMTkgKysrKysrKysrKysrKysrKysr
KwogMiBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0vS2NvbmZpZyBiL2FyY2gvYXJtL0tjb25maWcKaW5kZXggYmE3NWUzNjYxYTQxLi5mNmM1MzRm
NDE5MTQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL0tjb25maWcKKysrIGIvYXJjaC9hcm0vS2NvbmZp
ZwpAQCAtNzQsNiArNzQsNyBAQCBjb25maWcgQVJNCiAJc2VsZWN0IEhBVkVfQ09OVEVYVF9UUkFD
S0lORwogCXNlbGVjdCBIQVZFX0NfUkVDT1JETUNPVU5UCiAJc2VsZWN0IEhBVkVfREVCVUdfS01F
TUxFQUsKKwlzZWxlY3QgSEFWRV9ERUJVR19TVEFDS09WRVJGTE9XCiAJc2VsZWN0IEhBVkVfRE1B
X0NPTlRJR1VPVVMgaWYgTU1VCiAJc2VsZWN0IEhBVkVfRFlOQU1JQ19GVFJBQ0UgaWYgIVhJUF9L
RVJORUwgJiYgIUNQVV9FTkRJQU5fQkUzMiAmJiBNTVUKIAlzZWxlY3QgSEFWRV9EWU5BTUlDX0ZU
UkFDRV9XSVRIX1JFR1MgaWYgSEFWRV9EWU5BTUlDX0ZUUkFDRQpkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0va2VybmVsL2lycS5jIGIvYXJjaC9hcm0va2VybmVsL2lycS5jCmluZGV4IGVlNTE0MDM0YzBh
MS4uZGZkNWZkYzBlNTY1IDEwMDY0NAotLS0gYS9hcmNoL2FybS9rZXJuZWwvaXJxLmMKKysrIGIv
YXJjaC9hcm0va2VybmVsL2lycS5jCkBAIC00MSw2ICs0MSw3IEBACiAjaW5jbHVkZSA8YXNtL21h
Y2gvYXJjaC5oPgogI2luY2x1ZGUgPGFzbS9tYWNoL2lycS5oPgogI2luY2x1ZGUgPGFzbS9tYWNo
L3RpbWUuaD4KKyNpbmNsdWRlIDxhc20vdGhyZWFkX2luZm8uaD4KIAogdW5zaWduZWQgbG9uZyBp
cnFfZXJyX2NvdW50OwogCkBAIC01Niw2ICs1NywyMyBAQCBpbnQgYXJjaF9zaG93X2ludGVycnVw
dHMoc3RydWN0IHNlcV9maWxlICpwLCBpbnQgcHJlYykKIAlyZXR1cm4gMDsKIH0KIAorI2lmZGVm
IENPTkZJR19ERUJVR19TVEFDS09WRVJGTE9XCisjZGVmaW5lIFNUQUNLX1dBUk4JKFRIUkVBRF9T
SVpFIC8gOCkKK3N0YXRpYyBpbmxpbmUgdm9pZCBjaGVja19zdGFja19vdmVyZmxvdyh2b2lkKQor
eworCXVuc2lnbmVkIGxvbmcgcmVtYWluaW5nX3N0YWNrID0KKwkJY3VycmVudF9zdGFja19wb2lu
dGVyICYgKFRIUkVBRF9TSVpFIC0gMSk7CisKKwlpZiAocmVtYWluaW5nX3N0YWNrIDwgc2l6ZW9m
KHN0cnVjdCB0aHJlYWRfaW5mbykgKyBTVEFDS19XQVJOKSB7CisJCXByX2VycigiaGFuZGxlX0lS
UTogc3RhY2sgb3ZlcmZsb3c6ICVsZFxuIiwKKwkJICAgICAgIHJlbWFpbmluZ19zdGFjayAtIHNp
emVvZihzdHJ1Y3QgdGhyZWFkX2luZm8pKTsKKwkJZHVtcF9zdGFjaygpOworCX0KK30KKyNlbHNl
CitzdGF0aWMgaW5saW5lIHZvaWQgY2hlY2tfc3RhY2tfb3ZlcmZsb3codm9pZCkge30KKyNlbmRp
ZgorCiAvKgogICogaGFuZGxlX0lSUSBoYW5kbGVzIGFsbCBoYXJkd2FyZSBJUlEncy4gIERlY29k
ZWQgSVJRcyBzaG91bGQKICAqIG5vdCBjb21lIHZpYSB0aGlzIGZ1bmN0aW9uLiAgSW5zdGVhZCwg
dGhleSBzaG91bGQgcHJvdmlkZSB0aGVpcgpAQCAtNjQsNiArODIsNyBAQCBpbnQgYXJjaF9zaG93
X2ludGVycnVwdHMoc3RydWN0IHNlcV9maWxlICpwLCBpbnQgcHJlYykKICAqLwogdm9pZCBoYW5k
bGVfSVJRKHVuc2lnbmVkIGludCBpcnEsIHN0cnVjdCBwdF9yZWdzICpyZWdzKQogeworCWNoZWNr
X3N0YWNrX292ZXJmbG93KCk7CiAJX19oYW5kbGVfZG9tYWluX2lycShOVUxMLCBpcnEsIGZhbHNl
LCByZWdzKTsKIH0KIAotLSAKMi4yNC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
