Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2963611C44B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:45:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bMrVpEZOIYxpCY+s5yEnamgXOfWbldu4CFFCks3Y4UM=; b=Ur+iuzAIaZXbEq
	BtUeC6cSpgJ3EfrWGHSdleoKgvL9gLHHBqySCmS725c+upX+URvT/F8L2nYKYH064DC8L27s0CWnZ
	tVXsRDNk7BD/1f2wEIU+hcp+aDjysLrw0yS87aq4h4ZhdAsJvTyXYOtRmUWynKjqZ5Y7MGzgNP37g
	s8lZ53mBcQ3WTcUBlFZ1gh6rVcakvl97cYCS3XuIMHclbLInDVfobLwsXiaqC2NHaeSKNQe5yaT52
	K9WIkuwpe73yC9x4RYamb/TbLPUlCAXkffPui6u698/2C8BsExd+mCr/ETdMM8m/EHUqvk496kmBw
	Tdv4Fi5GBiSMvtp57j0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFPN-00060j-B6; Thu, 12 Dec 2019 03:44:57 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFKj-0000tc-AZ; Thu, 12 Dec 2019 03:40:15 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 66D56AF43;
 Thu, 12 Dec 2019 03:40:07 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org,
	linux-leds@vger.kernel.org
Subject: [RFC 22/25] leds: tm1826: Add combined glyph support
Date: Thu, 12 Dec 2019 04:39:49 +0100
Message-Id: <20191212033952.5967-23-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191212033952.5967-1-afaerber@suse.de>
References: <20191212033952.5967-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_194009_638467_053758E7 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsb3cgdG8gc3F1ZWV6ZSB0aGUgdGV4dCAiSEVsbE8iIGludG8gYSA0LWRpZ2l0IGRpc3BsYXks
CmFzIHNlZW4gb24gTWVMRSBWOSBUViBib3guCgpFbmFibGUgdGhpcyBjb21iaW5pbmcgbW9kZSBv
bmx5IGlmIHRoZSB0ZXh0IHdvdWxkIG92ZXJmbG93LgoKU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBG
w6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0KIGRyaXZlcnMvbGVkcy9sZWRzLXRtMTYyOC5j
IHwgMzEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDMw
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2xlZHMv
bGVkcy10bTE2MjguYyBiL2RyaXZlcnMvbGVkcy9sZWRzLXRtMTYyOC5jCmluZGV4IGUyYzJhNWQ5
MTU5Ni4uMGMwZDA5OWRlOGIwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2xlZHMvbGVkcy10bTE2Mjgu
YworKysgYi9kcml2ZXJzL2xlZHMvbGVkcy10bTE2MjguYwpAQCAtMzQ3LDYgKzM0NywyOCBAQCBz
dGF0aWMgdTggdG0xNjI4X2dldF9jaGFyX3NzZF9tYXAoY2hhciBjaCkKIAlyZXR1cm4gMHgwOwog
fQogCitzdHJ1Y3QgdG0xNjI4X3NzZF9nbHlwaCB7CisJY2hhciAqc3RyOworCXU4IHNlZ3M7Cit9
OworCitzdGF0aWMgY29uc3Qgc3RydWN0IHRtMTYyOF9zc2RfZ2x5cGggdG0xNjI4X2dseXBoX3Nz
ZF9tYXBbXSA9IHsKKwl7ICJsbCIsIFNTRF9UT1BfTEVGVCB8IFNTRF9CT1RUT01fTEVGVCB8CisJ
CVNTRF9UT1BfUklHSFQgfCBTU0RfQk9UVE9NX1JJR0hUIH0sCit9OworCitzdGF0aWMgdTggdG0x
NjI4X2dldF9nbHlwaF9zc2RfbWFwKGNvbnN0IGNoYXIgKnN0cikKK3sKKwlpbnQgaTsKKworCWZv
ciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHRtMTYyOF9nbHlwaF9zc2RfbWFwKTsgaSsrKSB7CisJ
CWlmICghc3RybmNtcCh0bTE2MjhfZ2x5cGhfc3NkX21hcFtpXS5zdHIsIHN0ciwgMikpCisJCQly
ZXR1cm4gdG0xNjI4X2dseXBoX3NzZF9tYXBbaV0uc2VnczsKKwl9CisKKwlyZXR1cm4gMHgwOwor
fQorCiBzdGF0aWMgaW50IHRtMTYyOF9kaXNwbGF5X2FwcGx5X21hcChzdHJ1Y3QgdG0xNjI4ICpz
LAogCXN0cnVjdCB0bTE2MjhfZGlzcGxheSAqZGlzcGxheSwgdTggbWFwKQogewpAQCAtMzY2LDcg
KzM4OCw3IEBAIHN0YXRpYyBzc2l6ZV90IHRleHRfc3RvcmUoc3RydWN0IGRldmljZSAqZGV2LAog
ewogCXN0cnVjdCB0bTE2MjggKnMgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKIAlzaXplX3Qgb2Zm
c2V0LCBsZW4gPSBjb3VudDsKLQl1OCBtYXA7CisJdTggbWFwLCBnbHlwaF9tYXA7CiAJaW50IGks
IHJldDsKIAogCWlmIChsZW4gPiAwICYmIGJ1ZltsZW4gLSAxXSA9PSAnXG4nKQpAQCAtMzc1LDYg
KzM5NywxMyBAQCBzdGF0aWMgc3NpemVfdCB0ZXh0X3N0b3JlKHN0cnVjdCBkZXZpY2UgKmRldiwK
IAlmb3IgKGkgPSAwLCBvZmZzZXQgPSAwOyBpIDwgcy0+bnVtX2Rpc3BsYXlzOyBpKyspIHsKIAkJ
aWYgKG9mZnNldCA8IGxlbikgewogCQkJbWFwID0gdG0xNjI4X2dldF9jaGFyX3NzZF9tYXAoYnVm
W29mZnNldF0pOworCQkJaWYgKG9mZnNldCArIDEgPCBsZW4gJiYgbGVuID4gcy0+bnVtX2Rpc3Bs
YXlzKSB7CisJCQkJZ2x5cGhfbWFwID0gdG0xNjI4X2dldF9nbHlwaF9zc2RfbWFwKGJ1ZiArIG9m
ZnNldCk7CisJCQkJaWYgKGdseXBoX21hcCkgeworCQkJCQltYXAgPSBnbHlwaF9tYXA7CisJCQkJ
CW9mZnNldCsrOworCQkJCX0KKwkJCX0KIAkJCW9mZnNldCsrOwogCQl9IGVsc2UKIAkJCW1hcCA9
IDB4MDsKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
