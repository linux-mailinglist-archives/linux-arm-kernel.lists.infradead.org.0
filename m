Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DF916AC52
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 17:55:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GNWyJVPvuC6moSMDYuKjtFRwhG72sSKEh4zaQlSIX5w=; b=ZcD4wTZHHmBeNm
	bGMaX+FuwJVCQcS3qV9JMkj4AUuaJOdGuxh+PI0pV9K2TsXnGy4Zt4RObsIeSNvbx24t2NqcZGeOB
	kG+CvaxPTsEGuie6w1c8cR2BzkI/TdHCK3FH7DnnEXM9aW/3Wl6o/xP2lqrXPX6lcJ3U+hAkbHIMV
	Xy7opHDdEr8m0sj5TIucO2IkwKNgzFS/74jArzlLlUgn9WgRcTFdSRZlvfOjXWOWZXRGoG3Q2kRfU
	IQhI+SwuxDFS4NI8iQ9+iRBwk8305vhFs7W2+AGvLRQdpaS1GEp20Sa45mnReSlBIn/NLK5MsY+ns
	e+1ObXdOj6OHbalnmI9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6H0f-0007kc-1J; Mon, 24 Feb 2020 16:55:09 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6H0O-0007if-GN
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 16:54:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582563288; bh=FwaS6CxBkt9Bed13hZj3FhQm0Xpmwou2Qyewryzy0rk=;
 h=From:To:Cc:Subject:Date:From;
 b=dLIt+PT21mzhB7bkMaBmqfbreoWoLbajY+BfxLlK58bhKOKcNJBo66sTIKJmHNXA5
 v2kxp/PZ7fJ59SGkrQqc7pUq8+Xa+MXH0zWFAX+3baHL9aNAHL4D9EisHbeqzkZPjc
 o3s4M5YcZ68sh5SAahz0MC19nZhe/ByRrpJD8Cmc=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com
Subject: [PATCH v2] ARM: dts: sun8i-h3: Add thermal trip points/cooling maps
Date: Mon, 24 Feb 2020 17:54:46 +0100
Message-Id: <20200224165446.334712-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_085452_746250_4D706CE7 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBlbmFibGVzIHBhc3NpdmUgY29vbGluZyBieSBkb3duLXJlZ3VsYXRpbmcgQ1BVIHZvbHRh
Z2UKYW5kIGZyZXF1ZW5jeS4KCkZvciB0cmlwIHBvaW50cywgSSB1c2VkIGEgc2xpZ2h0bHkgbG93
ZXJlZCB2YWx1ZXMgZnJvbSB0aGUgQlNQCmNvZGUuIFRoZSBjcml0aWNhbCB0ZW1wZXJhdHVyZSBv
ZiAxMTDCsEMgZnJvbSBCU1AgY29kZSBzZWVtZWQKbGlrZSBhIGxvdCwgc28gSSByb3VuZGVkIGl0
IG9mZiB0byAxMDDCsEMuCgpUaGUgY3JpdGljYWwgdHJpcCBwb2ludCB2YWx1ZSBpcyAzMMKwQyBh
Ym92ZSB0aGUgbWF4aW11bSByZWNvbW1lbmRlZAphbWJpZW50IHRlbXBlcmF0dXJlICg3MMKwQykg
Zm9yIHRoZSBTb0MgZnJvbSB0aGUgZGF0YXNoZWV0LCBzbyB0aGVyZSdzCnNvbWUgaGVhZHJvb20g
ZXZlbiBhdCBzdWNoIGEgaGlnaCBhbWJpZW50IHRlbXBlcmF0dXJlLgoKU2lnbmVkLW9mZi1ieTog
T25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMv
c3VuOGktaDMuZHRzaSB8IDI1ICsrKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCAyNSBpbnNlcnRpb25zKCspCgp2MjoKLSBhZGRlZCBtb3JlIGRldGFpbCB0byB0aGUgY29t
bWl0IGRlc2NyaXB0aW9uCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktaDMu
ZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWgzLmR0c2kKaW5kZXggMjAyMTdlMmNhNGQz
YS4uZTgzYWE2ODY2ZTdlYSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktaDMu
ZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9zdW44aS1oMy5kdHNpCkBAIC00MSw2ICs0MSw3
IEBACiAgKi8KIAogI2luY2x1ZGUgInN1bnhpLWgzLWg1LmR0c2kiCisjaW5jbHVkZSA8ZHQtYmlu
ZGluZ3MvdGhlcm1hbC90aGVybWFsLmg+CiAKIC8gewogCWNwdTBfb3BwX3RhYmxlOiBvcHBfdGFi
bGUwIHsKQEAgLTIyNyw2ICsyMjgsMzAgQEAgY3B1X3RoZXJtYWw6IGNwdS10aGVybWFsIHsKIAkJ
CXBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwwPjsKIAkJCXBvbGxpbmctZGVsYXkgPSA8MD47CiAJ
CQl0aGVybWFsLXNlbnNvcnMgPSA8JnRocyAwPjsKKworCQkJdHJpcHMgeworCQkJCWNwdV9ob3Rf
dHJpcDogY3B1LWhvdCB7CisJCQkJCXRlbXBlcmF0dXJlID0gPDgwMDAwPjsKKwkJCQkJaHlzdGVy
ZXNpcyA9IDwyMDAwPjsKKwkJCQkJdHlwZSA9ICJwYXNzaXZlIjsKKwkJCQl9OworCisJCQkJY3B1
X3ZlcnlfaG90X3RyaXA6IGNwdS12ZXJ5LWhvdCB7CisJCQkJCXRlbXBlcmF0dXJlID0gPDEwMDAw
MD47CisJCQkJCWh5c3RlcmVzaXMgPSA8MD47CisJCQkJCXR5cGUgPSAiY3JpdGljYWwiOworCQkJ
CX07CisJCQl9OworCisJCQljb29saW5nLW1hcHMgeworCQkJCWNwdS1ob3QtbGltaXQgeworCQkJ
CQl0cmlwID0gPCZjcHVfaG90X3RyaXA+OworCQkJCQljb29saW5nLWRldmljZSA9IDwmY3B1MCBU
SEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+LAorCQkJCQkJCSA8JmNwdTEgVEhFUk1B
TF9OT19MSU1JVCBUSEVSTUFMX05PX0xJTUlUPiwKKwkJCQkJCQkgPCZjcHUyIFRIRVJNQUxfTk9f
TElNSVQgVEhFUk1BTF9OT19MSU1JVD4sCisJCQkJCQkJIDwmY3B1MyBUSEVSTUFMX05PX0xJTUlU
IFRIRVJNQUxfTk9fTElNSVQ+OworCQkJCX07CisJCQl9OwogCQl9OwogCX07CiB9OwotLSAKMi4y
NS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
