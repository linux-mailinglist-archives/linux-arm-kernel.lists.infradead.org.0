Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8327C90E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:44:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d96+1NMdILE5AfrLrkSM12HlQe3x+E6uKlHprEaCNYw=; b=lyxWLQC4fpzlCF
	HvmEeEAH3qRYBj2osj/Um1eFyF2BVsFSfdjHwJAnkIUq5GvEQHOdMwxFUTZmE/psGOCXSAL5z+wVe
	niLKdBMpMoN6J4ccE26tGSCrtqNZOZ488yUCjAClnTikC5sW/iwK1BDjA9IqUfjr0q+eYhHyy/v93
	cO25AiDquxSX9l2JCz2gUxUVRGE0KKlX7GrgQb9jpOs9gVH/CWJ8NHzLwiHUX7qxDGNRq/ffQL4RZ
	mCsjkQkomDS7MmHxfRbschTBqmKyAvebjrptl3VYRMeOo8TSO3CLWuyPvP9T7kiKs7ac1/dZWTMeU
	2Zk59cz2RvsD+uMX8V0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrhl-0007QF-Ry; Wed, 31 Jul 2019 16:43:57 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrhQ-0007Gg-NE
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:43:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 3E805FB05;
 Wed, 31 Jul 2019 18:43:34 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DuVvq0P8aW1u; Wed, 31 Jul 2019 18:43:33 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 6F50746D8B; Wed, 31 Jul 2019 18:43:31 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH 2/2] reset: imx7: Fix IMX8MQ_RESET_MIPI_DSI_ defines
Date: Wed, 31 Jul 2019 18:43:31 +0200
Message-Id: <bd1504122f6797536a253a37f3604f5c46f02ab2.1564591352.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1564591352.git.agx@sigxcpu.org>
References: <cover.1564591352.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_094336_911632_ABF73AB8 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U29tZSBvZiB0aGUgbWlwaSBkc2kgcmVzZXRzIHdlcmUgY2FsbGVkCgogIElNWDhNUV9SRVNFVF9N
SVBJX0RJU18KCmluc3RlYWQgb2YKCiAgSU1YOE1RX1JFU0VUX01JUElfRFNJXwoKU2luY2UgdGhl
eSdyZSBEU0kgcmVsYXRlZCB0aGlzIGxvb2tzIGxpa2UgYSB0eXBvLgoKSSB3YXNuJ3Qgc3VyZSBp
ZiB0aGlzIHNob3VsZCBiZSBhIHNpbmdsZSBwYXRjaCBzaW5jZSBpdCBvdGhlcndpc2UgYnJlYWtz
CmJpc2VjdGFiaWxpdHkuIEkgY291bGRuJ3QgZmluZCBhbnkgZGV2aWNlIHRyZWVzIHVzaW5nIHRo
aXMgeWV0LgoKU2lnbmVkLW9mZi1ieTogR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4K
LS0tCiBkcml2ZXJzL3Jlc2V0L3Jlc2V0LWlteDcuYyB8IDEyICsrKysrKy0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3Jlc2V0L3Jlc2V0LWlteDcuYyBiL2RyaXZlcnMvcmVzZXQvcmVzZXQtaW14Ny5jCmlu
ZGV4IDNlY2Q3NzBmOTEwYi4uMTQ0M2E1NWEwYzI5IDEwMDY0NAotLS0gYS9kcml2ZXJzL3Jlc2V0
L3Jlc2V0LWlteDcuYworKysgYi9kcml2ZXJzL3Jlc2V0L3Jlc2V0LWlteDcuYwpAQCAtMTY5LDkg
KzE2OSw5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW14N19zcmNfc2lnbmFsIGlteDhtcV9zcmNf
c2lnbmFsc1tJTVg4TVFfUkVTRVRfTlVNXSA9IHsKIAlbSU1YOE1RX1JFU0VUX09URzJfUEhZX1JF
U0VUXQkJPSB7IFNSQ19VU0JPUEhZMl9SQ1IsIEJJVCgwKSB9LAogCVtJTVg4TVFfUkVTRVRfTUlQ
SV9EU0lfUkVTRVRfQllURV9OXQk9IHsgU1JDX01JUElQSFlfUkNSLCBCSVQoMSkgfSwKIAlbSU1Y
OE1RX1JFU0VUX01JUElfRFNJX1JFU0VUX05dCQk9IHsgU1JDX01JUElQSFlfUkNSLCBCSVQoMikg
fSwKLQlbSU1YOE1RX1JFU0VUX01JUElfRElTX0RQSV9SRVNFVF9OXQk9IHsgU1JDX01JUElQSFlf
UkNSLCBCSVQoMykgfSwKLQlbSU1YOE1RX1JFU0VUX01JUElfRElTX0VTQ19SRVNFVF9OXQk9IHsg
U1JDX01JUElQSFlfUkNSLCBCSVQoNCkgfSwKLQlbSU1YOE1RX1JFU0VUX01JUElfRElTX1BDTEtf
UkVTRVRfTl0JPSB7IFNSQ19NSVBJUEhZX1JDUiwgQklUKDUpIH0sCisJW0lNWDhNUV9SRVNFVF9N
SVBJX0RTSV9EUElfUkVTRVRfTl0JPSB7IFNSQ19NSVBJUEhZX1JDUiwgQklUKDMpIH0sCisJW0lN
WDhNUV9SRVNFVF9NSVBJX0RTSV9FU0NfUkVTRVRfTl0JPSB7IFNSQ19NSVBJUEhZX1JDUiwgQklU
KDQpIH0sCisJW0lNWDhNUV9SRVNFVF9NSVBJX0RTSV9QQ0xLX1JFU0VUX05dCT0geyBTUkNfTUlQ
SVBIWV9SQ1IsIEJJVCg1KSB9LAogCVtJTVg4TVFfUkVTRVRfUENJRVBIWV0JCQk9IHsgU1JDX1BD
SUVQSFlfUkNSLAogCQkJCQkJICAgIEJJVCgyKSB8IEJJVCgxKSB9LAogCVtJTVg4TVFfUkVTRVRf
UENJRVBIWV9QRVJTVF0JCT0geyBTUkNfUENJRVBIWV9SQ1IsIEJJVCgzKSB9LApAQCAtMjIwLDkg
KzIyMCw5IEBAIHN0YXRpYyBpbnQgaW14OG1xX3Jlc2V0X3NldChzdHJ1Y3QgcmVzZXRfY29udHJv
bGxlcl9kZXYgKnJjZGV2LAogCiAJY2FzZSBJTVg4TVFfUkVTRVRfUENJRV9DVFJMX0FQUFNfRU46
CiAJY2FzZSBJTVg4TVFfUkVTRVRfUENJRTJfQ1RSTF9BUFBTX0VOOgkvKiBmYWxsdGhyb3VnaCAq
LwotCWNhc2UgSU1YOE1RX1JFU0VUX01JUElfRElTX1BDTEtfUkVTRVRfTjoJLyogZmFsbHRocm91
Z2ggKi8KLQljYXNlIElNWDhNUV9SRVNFVF9NSVBJX0RJU19FU0NfUkVTRVRfTjoJLyogZmFsbHRo
cm91Z2ggKi8KLQljYXNlIElNWDhNUV9SRVNFVF9NSVBJX0RJU19EUElfUkVTRVRfTjoJLyogZmFs
bHRocm91Z2ggKi8KKwljYXNlIElNWDhNUV9SRVNFVF9NSVBJX0RTSV9QQ0xLX1JFU0VUX046CS8q
IGZhbGx0aHJvdWdoICovCisJY2FzZSBJTVg4TVFfUkVTRVRfTUlQSV9EU0lfRVNDX1JFU0VUX046
CS8qIGZhbGx0aHJvdWdoICovCisJY2FzZSBJTVg4TVFfUkVTRVRfTUlQSV9EU0lfRFBJX1JFU0VU
X046CS8qIGZhbGx0aHJvdWdoICovCiAJY2FzZSBJTVg4TVFfUkVTRVRfTUlQSV9EU0lfUkVTRVRf
TjoJLyogZmFsbHRocm91Z2ggKi8KIAljYXNlIElNWDhNUV9SRVNFVF9NSVBJX0RTSV9SRVNFVF9C
WVRFX046CS8qIGZhbGx0aHJvdWdoICovCiAJCXZhbHVlID0gYXNzZXJ0ID8gMCA6IGJpdDsKLS0g
CjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
