Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4242112E52
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 14:47:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZenD1yfDd7eGyUGDCoapH+5lAmwa2CtDs0FRL9pEDM8=; b=oarZDitjHyY384
	Vre550QhVGYlD82FvbNAVGrkEki+NFBeWRllYrHq4k6n+n99LwyEp+iruUseduvdfVdMDXSMh+oZb
	GeRK4LKXHyUkxvEV5z/n0KcC24qsawEYBJDsHkPm6pck5ZBBnZEh/YRpfvROovY/gaPtO3Q2++YqU
	WU0HPBBQ8ne+vqLQ5jeWoqs30kLhO+x3qepZ+R3Qf/jUkxhAK9vU9VvjOnu2f+c7+NoeCyKz2TarU
	Ye0X8Ia9F/Tv0qTsdnFx+Ov+eO+RJhKccYJGmad3GrkQ8uzBho27fDpePUyZINVvMRDX7CM5VOmky
	J5mDWwMUa30zzGCmeb0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXb9-0006sR-QY; Fri, 03 May 2019 12:47:31 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXZZ-0004wg-CW
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:46:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 229B8374;
 Fri,  3 May 2019 05:45:53 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DF6DD3F220;
 Fri,  3 May 2019 05:45:49 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 20/56] arm64/sve: In-kernel vector length availability query
 interface
Date: Fri,  3 May 2019 13:43:51 +0100
Message-Id: <20190503124427.190206-21-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_054553_912180_46ECC75F 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Julien Thierry <julien.thierry@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 "zhang . lei" <zhang.lei@jp.fujitsu.com>, Julien Grall <julien.grall@arm.com>,
 kvmarm@lists.cs.columbia.edu, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogRGF2ZSBNYXJ0aW4gPERhdmUuTWFydGluQGFybS5jb20+CgpLVk0gd2lsbCBuZWVkIHRv
IGludGVycm9nYXRlIHRoZSBzZXQgb2YgU1ZFIHZlY3RvciBsZW5ndGhzCmF2YWlsYWJsZSBvbiB0
aGUgc3lzdGVtLgoKVGhpcyBwYXRjaCBleHBvc2VzIHRoZSByZWxldmFudCBiaXRzIHRvIHRoZSBr
ZXJuZWwsIGFsb25nIHdpdGggYQpzdmVfdnFfYXZhaWxhYmxlKCkgaGVscGVyIHRvIGNoZWNrIHdo
ZXRoZXIgYSBwYXJ0aWN1bGFyIHZlY3RvcgpsZW5ndGggaXMgc3VwcG9ydGVkLgoKX192cV90b19i
aXQoKSBhbmQgX19iaXRfdG9fdnEoKSBhcmUgbm90IGludGVuZGVkIGZvciB1c2Ugb3V0c2lkZQp0
aGVzZSBmdW5jdGlvbnM6IG5vdyB0aGF0IHRoZXNlIGFyZSBleHBvc2VkIG91dHNpZGUgZnBzaW1k
LmMsIHRoZXkKYXJlIHByZWZpeGVkIHdpdGggX18gaW4gb3JkZXIgdG8gcHJvdmlkZSBhbiBleHRy
YSBoaW50IHRoYXQgdGhleQphcmUgbm90IGludGVuZGVkIGZvciBnZW5lcmFsLXB1cnBvc2UgdXNl
LgoKU2lnbmVkLW9mZi1ieTogRGF2ZSBNYXJ0aW4gPERhdmUuTWFydGluQGFybS5jb20+ClJldmll
d2VkLWJ5OiBBbGV4IEJlbm7DqWUgPGFsZXguYmVubmVlQGxpbmFyby5vcmc+ClRlc3RlZC1ieTog
emhhbmcubGVpIDx6aGFuZy5sZWlAanAuZnVqaXRzdS5jb20+ClNpZ25lZC1vZmYtYnk6IE1hcmMg
WnluZ2llciA8bWFyYy56eW5naWVyQGFybS5jb20+Ci0tLQogYXJjaC9hcm02NC9pbmNsdWRlL2Fz
bS9mcHNpbWQuaCB8IDI5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKwogYXJjaC9hcm02NC9r
ZXJuZWwvZnBzaW1kLmMgICAgICB8IDM1ICsrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQogMiBmaWxlcyBjaGFuZ2VkLCAzNyBpbnNlcnRpb25zKCspLCAyNyBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2Zwc2ltZC5oIGIvYXJjaC9hcm02NC9p
bmNsdWRlL2FzbS9mcHNpbWQuaAppbmRleCBkZjdhMTQzMDUyMjIuLmFkNmQyZTQxZWIzNyAxMDA2
NDQKLS0tIGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9mcHNpbWQuaAorKysgYi9hcmNoL2FybTY0
L2luY2x1ZGUvYXNtL2Zwc2ltZC5oCkBAIC0yNCwxMCArMjQsMTMgQEAKIAogI2lmbmRlZiBfX0FT
U0VNQkxZX18KIAorI2luY2x1ZGUgPGxpbnV4L2JpdG1hcC5oPgogI2luY2x1ZGUgPGxpbnV4L2J1
aWxkX2J1Zy5oPgorI2luY2x1ZGUgPGxpbnV4L2J1Zy5oPgogI2luY2x1ZGUgPGxpbnV4L2NhY2hl
Lmg+CiAjaW5jbHVkZSA8bGludXgvaW5pdC5oPgogI2luY2x1ZGUgPGxpbnV4L3N0ZGRlZi5oPgor
I2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CiAKICNpZiBkZWZpbmVkKF9fS0VSTkVMX18pICYmIGRl
ZmluZWQoQ09ORklHX0NPTVBBVCkKIC8qIE1hc2tzIGZvciBleHRyYWN0aW5nIHRoZSBGUFNSIGFu
ZCBGUENSIGZyb20gdGhlIEZQU0NSICovCkBAIC04OSw2ICs5MiwzMiBAQCBleHRlcm4gdTY0IHJl
YWRfemNyX2ZlYXR1cmVzKHZvaWQpOwogCiBleHRlcm4gaW50IF9fcm9fYWZ0ZXJfaW5pdCBzdmVf
bWF4X3ZsOwogZXh0ZXJuIGludCBfX3JvX2FmdGVyX2luaXQgc3ZlX21heF92aXJ0dWFsaXNhYmxl
X3ZsOworLyogU2V0IG9mIGF2YWlsYWJsZSB2ZWN0b3IgbGVuZ3RocywgYXMgdnFfdG9fYml0KHZx
KTogKi8KK2V4dGVybiBfX3JvX2FmdGVyX2luaXQgREVDTEFSRV9CSVRNQVAoc3ZlX3ZxX21hcCwg
U1ZFX1ZRX01BWCk7CisKKy8qCisgKiBIZWxwZXJzIHRvIHRyYW5zbGF0ZSBiaXQgaW5kaWNlcyBp
biBzdmVfdnFfbWFwIHRvIFZRIHZhbHVlcyAoYW5kCisgKiB2aWNlIHZlcnNhKS4gIFRoaXMgYWxs
b3dzIGZpbmRfbmV4dF9iaXQoKSB0byBiZSB1c2VkIHRvIGZpbmQgdGhlCisgKiBfbWF4aW11bV8g
VlEgbm90IGV4Y2VlZGluZyBhIGNlcnRhaW4gdmFsdWUuCisgKi8KK3N0YXRpYyBpbmxpbmUgdW5z
aWduZWQgaW50IF9fdnFfdG9fYml0KHVuc2lnbmVkIGludCB2cSkKK3sKKwlyZXR1cm4gU1ZFX1ZR
X01BWCAtIHZxOworfQorCitzdGF0aWMgaW5saW5lIHVuc2lnbmVkIGludCBfX2JpdF90b192cSh1
bnNpZ25lZCBpbnQgYml0KQoreworCWlmIChXQVJOX09OKGJpdCA+PSBTVkVfVlFfTUFYKSkKKwkJ
Yml0ID0gU1ZFX1ZRX01BWCAtIDE7CisKKwlyZXR1cm4gU1ZFX1ZRX01BWCAtIGJpdDsKK30KKwor
LyogRW5zdXJlIHZxID49IFNWRV9WUV9NSU4gJiYgdnEgPD0gU1ZFX1ZRX01BWCBiZWZvcmUgY2Fs
bGluZyB0aGlzIGZ1bmN0aW9uICovCitzdGF0aWMgaW5saW5lIGJvb2wgc3ZlX3ZxX2F2YWlsYWJs
ZSh1bnNpZ25lZCBpbnQgdnEpCit7CisJcmV0dXJuIHRlc3RfYml0KF9fdnFfdG9fYml0KHZxKSwg
c3ZlX3ZxX21hcCk7Cit9CiAKICNpZmRlZiBDT05GSUdfQVJNNjRfU1ZFCiAKZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQva2VybmVsL2Zwc2ltZC5jIGIvYXJjaC9hcm02NC9rZXJuZWwvZnBzaW1kLmMK
aW5kZXggOGE5M2FmYTc4NjAwLi41NzcyOTZiYmE3MzAgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQv
a2VybmVsL2Zwc2ltZC5jCisrKyBiL2FyY2gvYXJtNjQva2VybmVsL2Zwc2ltZC5jCkBAIC0xMzYs
NyArMTM2LDcgQEAgc3RhdGljIGludCBzdmVfZGVmYXVsdF92bCA9IC0xOwogaW50IF9fcm9fYWZ0
ZXJfaW5pdCBzdmVfbWF4X3ZsID0gU1ZFX1ZMX01JTjsKIGludCBfX3JvX2FmdGVyX2luaXQgc3Zl
X21heF92aXJ0dWFsaXNhYmxlX3ZsID0gU1ZFX1ZMX01JTjsKIC8qIFNldCBvZiBhdmFpbGFibGUg
dmVjdG9yIGxlbmd0aHMsIGFzIHZxX3RvX2JpdCh2cSk6ICovCi1zdGF0aWMgX19yb19hZnRlcl9p
bml0IERFQ0xBUkVfQklUTUFQKHN2ZV92cV9tYXAsIFNWRV9WUV9NQVgpOworX19yb19hZnRlcl9p
bml0IERFQ0xBUkVfQklUTUFQKHN2ZV92cV9tYXAsIFNWRV9WUV9NQVgpOwogLyogU2V0IG9mIHZl
Y3RvciBsZW5ndGhzIHByZXNlbnQgb24gYXQgbGVhc3Qgb25lIGNwdTogKi8KIHN0YXRpYyBfX3Jv
X2FmdGVyX2luaXQgREVDTEFSRV9CSVRNQVAoc3ZlX3ZxX3BhcnRpYWxfbWFwLCBTVkVfVlFfTUFY
KTsKIHN0YXRpYyB2b2lkIF9fcGVyY3B1ICplZmlfc3ZlX3N0YXRlOwpAQCAtMjY5LDI1ICsyNjks
NiBAQCB2b2lkIGZwc2ltZF9zYXZlKHZvaWQpCiAJfQogfQogCi0vKgotICogSGVscGVycyB0byB0
cmFuc2xhdGUgYml0IGluZGljZXMgaW4gc3ZlX3ZxX21hcCB0byBWUSB2YWx1ZXMgKGFuZAotICog
dmljZSB2ZXJzYSkuICBUaGlzIGFsbG93cyBmaW5kX25leHRfYml0KCkgdG8gYmUgdXNlZCB0byBm
aW5kIHRoZQotICogX21heGltdW1fIFZRIG5vdCBleGNlZWRpbmcgYSBjZXJ0YWluIHZhbHVlLgot
ICovCi0KLXN0YXRpYyB1bnNpZ25lZCBpbnQgdnFfdG9fYml0KHVuc2lnbmVkIGludCB2cSkKLXsK
LQlyZXR1cm4gU1ZFX1ZRX01BWCAtIHZxOwotfQotCi1zdGF0aWMgdW5zaWduZWQgaW50IGJpdF90
b192cSh1bnNpZ25lZCBpbnQgYml0KQotewotCWlmIChXQVJOX09OKGJpdCA+PSBTVkVfVlFfTUFY
KSkKLQkJYml0ID0gU1ZFX1ZRX01BWCAtIDE7Ci0KLQlyZXR1cm4gU1ZFX1ZRX01BWCAtIGJpdDsK
LX0KLQogLyoKICAqIEFsbCB2ZWN0b3IgbGVuZ3RoIHNlbGVjdGlvbiBmcm9tIHVzZXJzcGFjZSBj
b21lcyB0aHJvdWdoIGhlcmUuCiAgKiBXZSdyZSBvbiBhIHNsb3cgcGF0aCwgc28gc29tZSBzYW5p
dHktY2hlY2tzIGFyZSBpbmNsdWRlZC4KQEAgLTMwOSw4ICsyOTAsOCBAQCBzdGF0aWMgdW5zaWdu
ZWQgaW50IGZpbmRfc3VwcG9ydGVkX3ZlY3Rvcl9sZW5ndGgodW5zaWduZWQgaW50IHZsKQogCQl2
bCA9IG1heF92bDsKIAogCWJpdCA9IGZpbmRfbmV4dF9iaXQoc3ZlX3ZxX21hcCwgU1ZFX1ZRX01B
WCwKLQkJCSAgICB2cV90b19iaXQoc3ZlX3ZxX2Zyb21fdmwodmwpKSk7Ci0JcmV0dXJuIHN2ZV92
bF9mcm9tX3ZxKGJpdF90b192cShiaXQpKTsKKwkJCSAgICBfX3ZxX3RvX2JpdChzdmVfdnFfZnJv
bV92bCh2bCkpKTsKKwlyZXR1cm4gc3ZlX3ZsX2Zyb21fdnEoX19iaXRfdG9fdnEoYml0KSk7CiB9
CiAKICNpZmRlZiBDT05GSUdfU1lTQ1RMCkBAIC02NDgsNyArNjI5LDcgQEAgc3RhdGljIHZvaWQg
c3ZlX3Byb2JlX3ZxcyhERUNMQVJFX0JJVE1BUChtYXAsIFNWRV9WUV9NQVgpKQogCQl3cml0ZV9z
eXNyZWdfcyh6Y3IgfCAodnEgLSAxKSwgU1lTX1pDUl9FTDEpOyAvKiBzZWxmLXN5bmNpbmcgKi8K
IAkJdmwgPSBzdmVfZ2V0X3ZsKCk7CiAJCXZxID0gc3ZlX3ZxX2Zyb21fdmwodmwpOyAvKiBza2lw
IGludGVydmVuaW5nIGxlbmd0aHMgKi8KLQkJc2V0X2JpdCh2cV90b19iaXQodnEpLCBtYXApOwor
CQlzZXRfYml0KF9fdnFfdG9fYml0KHZxKSwgbWFwKTsKIAl9CiB9CiAKQEAgLTcxNyw3ICs2OTgs
NyBAQCBpbnQgc3ZlX3ZlcmlmeV92cV9tYXAodm9pZCkKIAkgKiBNaXNtYXRjaGVzIGFib3ZlIHN2
ZV9tYXhfdmlydHVhbGlzYWJsZV92bCBhcmUgZmluZSwgc2luY2UKIAkgKiBubyBndWVzdCBpcyBh
bGxvd2VkIHRvIGNvbmZpZ3VyZSBaQ1JfRUwyLkxFTiB0byBleGNlZWQgdGhpczoKIAkgKi8KLQlp
ZiAoc3ZlX3ZsX2Zyb21fdnEoYml0X3RvX3ZxKGIpKSA8PSBzdmVfbWF4X3ZpcnR1YWxpc2FibGVf
dmwpIHsKKwlpZiAoc3ZlX3ZsX2Zyb21fdnEoX19iaXRfdG9fdnEoYikpIDw9IHN2ZV9tYXhfdmly
dHVhbGlzYWJsZV92bCkgewogCQlwcl93YXJuKCJTVkU6IGNwdSVkOiBVbnN1cHBvcnRlZCB2ZWN0
b3IgbGVuZ3RoKHMpIHByZXNlbnRcbiIsCiAJCQlzbXBfcHJvY2Vzc29yX2lkKCkpOwogCQlyZXR1
cm4gLUVJTlZBTDsKQEAgLTgwMSw4ICs3ODIsOCBAQCB2b2lkIF9faW5pdCBzdmVfc2V0dXAodm9p
ZCkKIAkgKiBzbyBzdmVfdnFfbWFwIG11c3QgaGF2ZSBhdCBsZWFzdCBTVkVfVlFfTUlOIHNldC4K
IAkgKiBJZiBzb21ldGhpbmcgd2VudCB3cm9uZywgYXQgbGVhc3QgdHJ5IHRvIHBhdGNoIGl0IHVw
OgogCSAqLwotCWlmIChXQVJOX09OKCF0ZXN0X2JpdCh2cV90b19iaXQoU1ZFX1ZRX01JTiksIHN2
ZV92cV9tYXApKSkKLQkJc2V0X2JpdCh2cV90b19iaXQoU1ZFX1ZRX01JTiksIHN2ZV92cV9tYXAp
OworCWlmIChXQVJOX09OKCF0ZXN0X2JpdChfX3ZxX3RvX2JpdChTVkVfVlFfTUlOKSwgc3ZlX3Zx
X21hcCkpKQorCQlzZXRfYml0KF9fdnFfdG9fYml0KFNWRV9WUV9NSU4pLCBzdmVfdnFfbWFwKTsK
IAogCXpjciA9IHJlYWRfc2FuaXRpc2VkX2Z0cl9yZWcoU1lTX1pDUl9FTDEpOwogCXN2ZV9tYXhf
dmwgPSBzdmVfdmxfZnJvbV92cSgoemNyICYgWkNSX0VMeF9MRU5fTUFTSykgKyAxKTsKQEAgLTgz
MSw3ICs4MTIsNyBAQCB2b2lkIF9faW5pdCBzdmVfc2V0dXAodm9pZCkKIAkJLyogTm8gdmlydHVh
bGlzYWJsZSBWTHM/ICBUaGlzIGlzIGFyY2hpdGVjdHVyYWxseSBmb3JiaWRkZW4uICovCiAJCXN2
ZV9tYXhfdmlydHVhbGlzYWJsZV92bCA9IFNWRV9WUV9NSU47CiAJZWxzZSAvKiBiICsgMSA8IFNW
RV9WUV9NQVggKi8KLQkJc3ZlX21heF92aXJ0dWFsaXNhYmxlX3ZsID0gc3ZlX3ZsX2Zyb21fdnEo
Yml0X3RvX3ZxKGIgKyAxKSk7CisJCXN2ZV9tYXhfdmlydHVhbGlzYWJsZV92bCA9IHN2ZV92bF9m
cm9tX3ZxKF9fYml0X3RvX3ZxKGIgKyAxKSk7CiAKIAlpZiAoc3ZlX21heF92aXJ0dWFsaXNhYmxl
X3ZsID4gc3ZlX21heF92bCkKIAkJc3ZlX21heF92aXJ0dWFsaXNhYmxlX3ZsID0gc3ZlX21heF92
bDsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
