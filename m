Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD60516AC48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 17:54:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z9MRrd1bS81FipO6ZvynYrsbQtwuNDdfUGiICghsRBk=; b=B7FBQ0yUfPkXAx
	RJAXeJ6kgl8Leq+ACUdhs63OYqjsTNu3CnYx4Vm111tA+GrQstbUfEiZZ1Y0IPI+BzHIzUILJ2KIb
	iSf7kCKOGzM6oSL6kevzokc4tS9W8mt+4Q+7Kt5PULD4I6iBwQtCZ3TLUSh0WOy5KvGLQe4Nsw6hB
	gCHJz7aaFRVfxshFmWNMklrURapc9RkuR0a3p5F5nhKsmTwscmtg1nHds1P96SbWFrkc1MQXPBm1Q
	uVvZ7ExKUp/wllM2Cfisk2fhTOPGJfMwhsf972UReLikAZPWLoR2rfnS9CfqGIbt9gl0ZbBP28zOm
	v2L65gjOHwSAuvehx7GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6H0E-0007Rm-VN; Mon, 24 Feb 2020 16:54:42 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6H03-0007RI-3k
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 16:54:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582563269; bh=bXleBqxpwvxMLnOw4FuIKeZikmPAgqyT4C7j2/p3/WA=;
 h=From:To:Cc:Subject:Date:From;
 b=NLuyiR9Q7d/imiTXP42D1TVu/I0SKzHae44k3Y8poVJnmljL5ZdzUVKleIRauIGnB
 Zl43UHhSc0bLaurhrdnLUFF7hRx3fVUGq4GpjblSQVPEqvvF7LZgaNAwmox58VdQPH
 Gwsp8ypgtPo9bZGbEcrRLELhN0XcH1HD2vQUDJd4=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com
Subject: [PATCH v2] ARM: dts: sun8i-a83t: Add thermal trip points/cooling maps
Date: Mon, 24 Feb 2020 17:54:17 +0100
Message-Id: <20200224165417.334617-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_085431_321281_923718BD 
X-CRM114-Status: UNSURE (   8.69  )
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
Z2UKYW5kIGZyZXF1ZW5jeS4KCkZvciB0aGUgdHJpcCBwb2ludHMsIEkgdXNlZCB2YWx1ZXMgZnJv
bSB0aGUgQlNQIGNvZGUgZGlyZWN0bHkuCgpUaGUgY3JpdGljYWwgdHJpcCBwb2ludCB2YWx1ZSBp
cyAzMMKwQyBhYm92ZSB0aGUgbWF4aW11bSByZWNvbW1lbmRlZAphbWJpZW50IHRlbXBlcmF0dXJl
ICg3MMKwQykgZm9yIHRoZSBTb0MgZnJvbSB0aGUgZGF0YXNoZWV0LCBzbyB0aGVyZSdzCnNvbWUg
aGVhZHJvb20gZXZlbiBhdCBzdWNoIGEgaGlnaCBhbWJpZW50IHRlbXBlcmF0dXJlLgoKU2lnbmVk
LW9mZi1ieTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+Ci0tLQogYXJjaC9hcm0v
Ym9vdC9kdHMvc3VuOGktYTgzdC5kdHNpIHwgNjAgKysrKysrKysrKysrKysrKysrKysrKysrKysr
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDU0IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgp2
MjoKLSBhZGRlZCBtb3JlIGRldGFpbCB0byB0aGUgY29tbWl0IGRlc2NyaXB0aW9uCgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktYTgzdC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9k
dHMvc3VuOGktYTgzdC5kdHNpCmluZGV4IDc0YWM3ZWU5MzgzY2YuLjUzYzJiNmE4MzZmMjcgMTAw
NjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWE4M3QuZHRzaQorKysgYi9hcmNoL2Fy
bS9ib290L2R0cy9zdW44aS1hODN0LmR0c2kKQEAgLTcyLDcgKzcyLDcgQEAgY3B1MDogY3B1QDAg
ewogCQkJI2Nvb2xpbmctY2VsbHMgPSA8Mj47CiAJCX07CiAKLQkJY3B1QDEgeworCQljcHUxOiBj
cHVAMSB7CiAJCQljb21wYXRpYmxlID0gImFybSxjb3J0ZXgtYTciOwogCQkJZGV2aWNlX3R5cGUg
PSAiY3B1IjsKIAkJCWNsb2NrcyA9IDwmY2N1IENMS19DMENQVVg+OwpAQCAtODMsNyArODMsNyBA
QCBjcHVAMSB7CiAJCQkjY29vbGluZy1jZWxscyA9IDwyPjsKIAkJfTsKIAotCQljcHVAMiB7CisJ
CWNwdTI6IGNwdUAyIHsKIAkJCWNvbXBhdGlibGUgPSAiYXJtLGNvcnRleC1hNyI7CiAJCQlkZXZp
Y2VfdHlwZSA9ICJjcHUiOwogCQkJY2xvY2tzID0gPCZjY3UgQ0xLX0MwQ1BVWD47CkBAIC05NCw3
ICs5NCw3IEBAIGNwdUAyIHsKIAkJCSNjb29saW5nLWNlbGxzID0gPDI+OwogCQl9OwogCi0JCWNw
dUAzIHsKKwkJY3B1MzogY3B1QDMgewogCQkJY29tcGF0aWJsZSA9ICJhcm0sY29ydGV4LWE3IjsK
IAkJCWRldmljZV90eXBlID0gImNwdSI7CiAJCQljbG9ja3MgPSA8JmNjdSBDTEtfQzBDUFVYPjsK
QEAgLTExNiw3ICsxMTYsNyBAQCBjcHUxMDA6IGNwdUAxMDAgewogCQkJI2Nvb2xpbmctY2VsbHMg
PSA8Mj47CiAJCX07CiAKLQkJY3B1QDEwMSB7CisJCWNwdTEwMTogY3B1QDEwMSB7CiAJCQljb21w
YXRpYmxlID0gImFybSxjb3J0ZXgtYTciOwogCQkJZGV2aWNlX3R5cGUgPSAiY3B1IjsKIAkJCWNs
b2NrcyA9IDwmY2N1IENMS19DMUNQVVg+OwpAQCAtMTI3LDcgKzEyNyw3IEBAIGNwdUAxMDEgewog
CQkJI2Nvb2xpbmctY2VsbHMgPSA8Mj47CiAJCX07CiAKLQkJY3B1QDEwMiB7CisJCWNwdTEwMjog
Y3B1QDEwMiB7CiAJCQljb21wYXRpYmxlID0gImFybSxjb3J0ZXgtYTciOwogCQkJZGV2aWNlX3R5
cGUgPSAiY3B1IjsKIAkJCWNsb2NrcyA9IDwmY2N1IENMS19DMUNQVVg+OwpAQCAtMTM4LDcgKzEz
OCw3IEBAIGNwdUAxMDIgewogCQkJI2Nvb2xpbmctY2VsbHMgPSA8Mj47CiAJCX07CiAKLQkJY3B1
QDEwMyB7CisJCWNwdTEwMzogY3B1QDEwMyB7CiAJCQljb21wYXRpYmxlID0gImFybSxjb3J0ZXgt
YTciOwogCQkJZGV2aWNlX3R5cGUgPSAiY3B1IjsKIAkJCWNsb2NrcyA9IDwmY2N1IENMS19DMUNQ
VVg+OwpAQCAtMTE4OCwxMiArMTE4OCw2MCBAQCBjcHUwX3RoZXJtYWw6IGNwdTAtdGhlcm1hbCB7
CiAJCQlwb2xsaW5nLWRlbGF5LXBhc3NpdmUgPSA8MD47CiAJCQlwb2xsaW5nLWRlbGF5ID0gPDA+
OwogCQkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0aHMgMD47CisKKwkJCXRyaXBzIHsKKwkJCQljcHUw
X2hvdDogY3B1LWhvdCB7CisJCQkJCXRlbXBlcmF0dXJlID0gPDgwMDAwPjsKKwkJCQkJaHlzdGVy
ZXNpcyA9IDwyMDAwPjsKKwkJCQkJdHlwZSA9ICJwYXNzaXZlIjsKKwkJCQl9OworCisJCQkJY3B1
MF92ZXJ5X2hvdDogY3B1LXZlcnktaG90IHsKKwkJCQkJdGVtcGVyYXR1cmUgPSA8MTAwMDAwPjsK
KwkJCQkJaHlzdGVyZXNpcyA9IDwwPjsKKwkJCQkJdHlwZSA9ICJjcml0aWNhbCI7CisJCQkJfTsK
KwkJCX07CisKKwkJCWNvb2xpbmctbWFwcyB7CisJCQkJY3B1LWhvdC1saW1pdCB7CisJCQkJCXRy
aXAgPSA8JmNwdTBfaG90PjsKKwkJCQkJY29vbGluZy1kZXZpY2UgPSA8JmNwdTAgVEhFUk1BTF9O
T19MSU1JVCBUSEVSTUFMX05PX0xJTUlUPiwKKwkJCQkJCQkgPCZjcHUxIFRIRVJNQUxfTk9fTElN
SVQgVEhFUk1BTF9OT19MSU1JVD4sCisJCQkJCQkJIDwmY3B1MiBUSEVSTUFMX05PX0xJTUlUIFRI
RVJNQUxfTk9fTElNSVQ+LAorCQkJCQkJCSA8JmNwdTMgVEhFUk1BTF9OT19MSU1JVCBUSEVSTUFM
X05PX0xJTUlUPjsKKwkJCQl9OworCQkJfTsKIAkJfTsKIAogCQljcHUxX3RoZXJtYWw6IGNwdTEt
dGhlcm1hbCB7CiAJCQlwb2xsaW5nLWRlbGF5LXBhc3NpdmUgPSA8MD47CiAJCQlwb2xsaW5nLWRl
bGF5ID0gPDA+OwogCQkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0aHMgMT47CisKKwkJCXRyaXBzIHsK
KwkJCQljcHUxX2hvdDogY3B1LWhvdCB7CisJCQkJCXRlbXBlcmF0dXJlID0gPDgwMDAwPjsKKwkJ
CQkJaHlzdGVyZXNpcyA9IDwyMDAwPjsKKwkJCQkJdHlwZSA9ICJwYXNzaXZlIjsKKwkJCQl9Owor
CisJCQkJY3B1MV92ZXJ5X2hvdDogY3B1LXZlcnktaG90IHsKKwkJCQkJdGVtcGVyYXR1cmUgPSA8
MTAwMDAwPjsKKwkJCQkJaHlzdGVyZXNpcyA9IDwwPjsKKwkJCQkJdHlwZSA9ICJjcml0aWNhbCI7
CisJCQkJfTsKKwkJCX07CisKKwkJCWNvb2xpbmctbWFwcyB7CisJCQkJY3B1LWhvdC1saW1pdCB7
CisJCQkJCXRyaXAgPSA8JmNwdTFfaG90PjsKKwkJCQkJY29vbGluZy1kZXZpY2UgPSA8JmNwdTEw
MCBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+LAorCQkJCQkJCSA8JmNwdTEwMSBU
SEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+LAorCQkJCQkJCSA8JmNwdTEwMiBUSEVS
TUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+LAorCQkJCQkJCSA8JmNwdTEwMyBUSEVSTUFM
X05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+OworCQkJCX07CisJCQl9OwogCQl9OwogCiAJCWdw
dV90aGVybWFsOiBncHUtdGhlcm1hbCB7Ci0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
