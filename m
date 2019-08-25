Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E47F39C330
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 14:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:From:References
	:In-Reply-To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PLbjtBPAcFYw4i+P3KLkmRkMv0F4CBKbnRvIXtCHXH8=; b=EGFNQz62HzD7N0
	uEQfnvakp8X5vtIrw02DyBfWNbbq+Fmfy58QHk9T6OUPne+nGOmCW3p/frTQrE3WQ+OtHp2S3KwGw
	Zug4ziZYdU0vJs31t2LgEwqZ/z0K2DdM5vXIaZNoiLaRPsIR2ME332Nc4ZGg0yXmwDaSJ8IiU/Oa7
	6MdveSkhA0Av1FqLsJW+YD0Iuy2Ix43CXixP7ZlYk/7PPglwWzpfbiFdD4hoxZqHewLB26YiaciZ+
	430RA6n+8yysR1e0MpvsumGEnvWVRz5pgRw/tGouzm5WONNhSq8vch5IuDw8t95NllBgOwIQvoTn9
	bF1ARxxsvr2y/C2Jtqyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1rTi-0004Al-Jl; Sun, 25 Aug 2019 12:18:38 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1rSp-0003ej-4M
 for linux-arm-kernel@lists.infradead.org; Sun, 25 Aug 2019 12:17:46 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 46GYyB0Qd1zM6;
 Sun, 25 Aug 2019 14:16:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1566735362; bh=Al1lbbPw+zZcMOPjHh4luaJeNVrX1Hy7lFV9zPv3gns=;
 h=Date:In-Reply-To:References:From:Subject:To:Cc:From;
 b=AUtdOu+12L8K334By+FEnF5Sz8vjG/7tlzwrridx/BYCNe1nDD8qbDIXTCIGlTHC4
 JJY9OdYg474V+1OT1P4kqrH9WlT1AmltPhjkpH3AXlibgJ8P8sgJGFwfVYbERr0p6z
 1H0w93OxlvbHTrC9Z2AhilyUgS4AJMiBFBd4YE88ir9xv/IOUdzaTsZMENESU379Vn
 UBLu9T3+5CY97OzHZxoBOvux0csC2S7TpFv56DfdeRKaOirB0qhBgsbUnZPXLeiDuT
 J25VmB+hOeat6/A0o8USeCMQ6+TjfUl0N3DIgaMPHTQVv/RkcnVLVlVzr1EycZ86bQ
 zK90APevAdooQ==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.2 at mail
Date: Sun, 25 Aug 2019 14:17:37 +0200
Message-Id: <0b92f741a4c382cb8d50c1aebfa9da15d7e470ae.1566734631.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1566734630.git.mirq-linux@rere.qmqm.pl>
References: <cover.1566734630.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH v2 3/4] ASoC: wm8904: automatically choose clock source
MIME-Version: 1.0
To: alsa-devel@alsa-project.org,
	patches@opensource.cirrus.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_051743_518749_A3BF3C52 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Maxime Jourdan <mjourdan@baylibre.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Kirill Marinushkin <kmarinushkin@birdec.tech>, Takashi Iwai <tiwai@suse.com>,
 Paul Cercueil <paul@crapouillou.net>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Anders Roxell <anders.roxell@linaro.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 Charles Keepax <ckeepax@opensource.cirrus.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Piotr Stankiewicz <piotrs@opensource.cirrus.com>,
 Annaliese McDermond <nh6z@nh6z.net>,
 Richard Fitzgerald <rf@opensource.cirrus.com>, Mark Brown <broonie@kernel.org>,
 Nariman Poushin <npoushin@opensource.cirrus.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jaroslav Kysela <perex@perex.cz>,
 zhong jiang <zhongjiang@huawei.com>, Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Nikesh Oswal <nikesh@opensource.cirrus.com>, linux-kernel@vger.kernel.org,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2hvb3NlIGNsb2NrIHNvdXJjZSBhdXRvbWF0aWNhbGx5IGlmIG5vdCBwcm92aWRlZC4gVGhpcyB3
aWxsIGJlIHRoZSBjYXNlCndpdGggZWcuIGF1ZGlvLWdyYXBoLWNhcmQuCgpTaWduZWQtb2ZmLWJ5
OiBNaWNoYcWCIE1pcm9zxYJhdyA8bWlycS1saW51eEByZXJlLnFtcW0ucGw+Ci0tLQogc291bmQv
c29jL2NvZGVjcy93bTg5MDQuYyB8IDQyICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKystLQogMSBmaWxlIGNoYW5nZWQsIDQwIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvc291bmQvc29jL2NvZGVjcy93bTg5MDQuYyBiL3NvdW5kL3NvYy9jb2Rl
Y3Mvd204OTA0LmMKaW5kZXggYzkzMThmZTM0ZjkxLi45NDYzMTVkNGNlY2YgMTAwNjQ0Ci0tLSBh
L3NvdW5kL3NvYy9jb2RlY3Mvd204OTA0LmMKKysrIGIvc291bmQvc29jL2NvZGVjcy93bTg5MDQu
YwpAQCAtMzY3LDE1ICszNjcsMzQgQEAgc3RhdGljIGludCB3bTg5MDRfZW5hYmxlX3N5c2Nsayhz
dHJ1Y3Qgd204OTA0X3ByaXYgKnByaXYpCiAJcmV0dXJuIGVycjsKIH0KIAorc3RhdGljIGludCB3
bTg5MDRfYnVtcF9mbGxfc3lzY2xrKHVuc2lnbmVkIGludCAqcmF0ZSk7CisKIHN0YXRpYyBpbnQg
d204OTA0X3NldF9zeXNjbGsoc3RydWN0IHNuZF9zb2NfZGFpICpkYWksIGludCBjbGtfaWQsCiAJ
CQkgICAgIHVuc2lnbmVkIGludCByYXRlLCBpbnQgZGlyKQogewogCXN0cnVjdCBzbmRfc29jX2Nv
bXBvbmVudCAqY29tcG9uZW50ID0gZGFpLT5jb21wb25lbnQ7CiAJc3RydWN0IHdtODkwNF9wcml2
ICp3bTg5MDQgPSBzbmRfc29jX2NvbXBvbmVudF9nZXRfZHJ2ZGF0YShjb21wb25lbnQpOwogCXVu
c2lnbmVkIGludCBjbG9jazAsIGNsb2NrMjsKLQlpbnQgZXJyOworCWludCBlcnIsIGRvX2RpdiA9
IGZhbHNlOwogCiAJc3dpdGNoIChjbGtfaWQpIHsKKwljYXNlIDA6CisJCWlmIChyYXRlID09IGNs
a19yb3VuZF9yYXRlKHdtODkwNC0+bWNsaywgcmF0ZSkpIHsKKwkJCWNsa19pZCA9IFdNODkwNF9D
TEtfTUNMSzsKKwkJfSBlbHNlIGlmIChyYXRlICogMiA9PSBjbGtfcm91bmRfcmF0ZSh3bTg5MDQt
Pm1jbGssIHJhdGUgKiAyKSkgeworCQkJcmF0ZSAqPSAyOworCQkJY2xrX2lkID0gV004OTA0X0NM
S19NQ0xLOworCQkJZG9fZGl2ID0gdHJ1ZTsKKwkJfSBlbHNlIHsKKwkJCWNsa19pZCA9IFdNODkw
NF9DTEtfRkxMOworCQkJZXJyID0gd204OTA0X2J1bXBfZmxsX3N5c2NsaygmcmF0ZSk7CisJCQlp
ZiAoZXJyKSB7CisJCQkJZGV2X2RiZyhjb21wb25lbnQtPmRldiwgIkNhbid0IG1hdGNoICV1IG92
ZXIgRkxMIDE0MDYyNTAgSHogbWluaW11bVxuIiwgcmF0ZSk7CisJCQkJcmV0dXJuIGVycjsKKwkJ
CX0KKwkJfQorCQlicmVhazsKKwogCWNhc2UgV004OTA0X0NMS19NQ0xLOgogCWNhc2UgV004OTA0
X0NMS19GTEw6CiAJCWJyZWFrOwpAQCAtNDIxLDcgKzQ0MCw5IEBAIHN0YXRpYyBpbnQgd204OTA0
X3NldF9zeXNjbGsoc3RydWN0IHNuZF9zb2NfZGFpICpkYWksIGludCBjbGtfaWQsCiAJfQogCiAJ
LyogU1lTQ0xLIHNob3VsZG4ndCBiZSBvdmVyIDEzLjVNSHogKi8KLQlpZiAocmF0ZSA+IDEzNTAw
MDAwKSB7CisJaWYgKHJhdGUgPiAxMzUwMDAwMCkKKwkJZG9fZGl2ID0gdHJ1ZTsKKwlpZiAoZG9f
ZGl2KSB7CiAJCWNsb2NrMCA9IFdNODkwNF9NQ0xLX0RJVjsKIAkJd204OTA0LT5zeXNjbGtfcmF0
ZSA9IHJhdGUgLyAyOwogCX0gZWxzZSB7CkBAIC0xMzUwLDYgKzEzNzEsMjMgQEAgc3RhdGljIHN0
cnVjdCB7CiAJeyA0ODAsIDIwIH0sCiB9OwogCitzdGF0aWMgaW50IHdtODkwNF9idW1wX2ZsbF9z
eXNjbGsodW5zaWduZWQgaW50ICpyYXRlKQoreworCWludCBpOworCisJLyogYnVtcCBTWVNDTEsg
cmF0ZSBpZiBiZWxvdyBtaW5pbWFsIEZMTCBvdXRwdXQgKi8KKworCWZvciAoaSA9IDA7IGkgPCBB
UlJBWV9TSVpFKGJjbGtfZGl2cyk7IGkrKykgeworCQlpZiAoKnJhdGUgKiBiY2xrX2RpdnNbaV0u
ZGl2ID49IDE0MDYyNTAgKiAxMCkKKwkJCWJyZWFrOworCX0KKworCWlmIChpID09IEFSUkFZX1NJ
WkUoYmNsa19kaXZzKSkKKwkJcmV0dXJuIC1FUkFOR0U7CisKKwkqcmF0ZSA9ICgqcmF0ZSAqIGJj
bGtfZGl2c1tpXS5kaXYpIC8gMTA7CisJcmV0dXJuIDA7Cit9CiAKIHN0YXRpYyBpbnQgd204OTA0
X2h3X3BhcmFtcyhzdHJ1Y3Qgc25kX3BjbV9zdWJzdHJlYW0gKnN1YnN0cmVhbSwKIAkJCSAgICBz
dHJ1Y3Qgc25kX3BjbV9od19wYXJhbXMgKnBhcmFtcywKLS0gCjIuMjAuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
