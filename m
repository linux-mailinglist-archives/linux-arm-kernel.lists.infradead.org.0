Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C58B06B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 04:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sTgKfQpFBO9iSQdc9nTj+mJv1kJnmzlvKz88VRSu4xs=; b=WWIVEiF7J5Ejhl
	Uo9iuj5RnvfsxhvbVxiIccEGsy45JsV/U+DKsxAVybBH5/VJhTUJtBifiyAbIYhCW6EQfq7w5CFv3
	m5zZ8pyFmkF9Tj7GCy/WC2p+6c+s0sO00b2nwyrLIaYuqVNyRX1X/oB6/chSxxzz5cGX4O7aRSyhv
	j/VwJnX/l8x+p2sEko7iAZY/L8ope7w/nV/x3oIHI1n4aeBbGPgO40Bl8ivQV5IDFGc3OSb74seYW
	XbLOQc7CusrBkO9U8734cgVyt6eddjY/7fz1hc+heo37ZsGMEDfxW1z/9qddIUQgvjF9jyH/TkVTl
	qEuXyJ7GbOkUX8qyhMBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8EdD-0005dS-Ed; Thu, 12 Sep 2019 02:14:47 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Ed1-0005cd-5z
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 02:14:36 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 88483FB03;
 Thu, 12 Sep 2019 04:14:29 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A_58ePPtfpUh; Thu, 12 Sep 2019 04:14:28 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id A7A4246CB1; Wed, 11 Sep 2019 19:14:25 -0700 (PDT)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Anson Huang <Anson.Huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dts: arm64: imx8mq: Enable gpu passive throttling
Date: Wed, 11 Sep 2019 19:14:25 -0700
Message-Id: <cf1b114bcc6ef26e032c352b8c885aaf5f3594d0.1568254197.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_191435_384636_B5C50115 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGVtcGVyYXR1cmUgYW5kIGh5c3RlcmVzaXMgd2VyZSBwaWNrZWQgYWZ0ZXIgdGhlIENQVS4KClNp
Z25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+Ci0tLQogYXJjaC9h
cm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kgfCAxNSArKysrKysrKysrKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2Zy
ZWVzY2FsZS9pbXg4bXEuZHRzaQppbmRleCA1NjQwNDU5Mjc0ODUuLmZkYTYzNjA4NWJiMyAxMDA2
NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKQEAgLTIzNSwxMiArMjM1
LDI2IEBACiAJCQl0aGVybWFsLXNlbnNvcnMgPSA8JnRtdSAxPjsKIAogCQkJdHJpcHMgeworCQkJ
CWdwdS1hbGVydCB7CisJCQkJCXRlbXBlcmF0dXJlID0gPDgwMDAwPjsKKwkJCQkJaHlzdGVyZXNp
cyA9IDwyMDAwPjsKKwkJCQkJdHlwZSA9ICJwYXNzaXZlIjsKKwkJCQl9OworCiAJCQkJZ3B1LWNy
aXQgewogCQkJCQl0ZW1wZXJhdHVyZSA9IDw5MDAwMD47CiAJCQkJCWh5c3RlcmVzaXMgPSA8MjAw
MD47CiAJCQkJCXR5cGUgPSAiY3JpdGljYWwiOwogCQkJCX07CiAJCQl9OworCisJCQljb29saW5n
LW1hcHMgeworCQkJCW1hcDAgeworCQkJCQl0cmlwID0gPCZncHVfYWxlcnQ+OworCQkJCQljb29s
aW5nLWRldmljZSA9CisJCQkJCQk8JmdwdSBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElN
SVQ+OworCQkJCX07CisJCQl9OwogCQl9OwogCiAJCXZwdS10aGVybWFsIHsKQEAgLTEwMDYsNiAr
MTAyMCw3IEBACiAJCQkgICAgICAgICA8JmNsayBJTVg4TVFfQ0xLX0dQVV9BWEk+LAogCQkJICAg
ICAgICAgPCZjbGsgSU1YOE1RX0NMS19HUFVfQUhCPjsKIAkJCWNsb2NrLW5hbWVzID0gImNvcmUi
LCAic2hhZGVyIiwgImJ1cyIsICJyZWciOworCQkJI2Nvb2xpbmctY2VsbHMgPSA8Mj47CiAJCQlh
c3NpZ25lZC1jbG9ja3MgPSA8JmNsayBJTVg4TVFfQ0xLX0dQVV9DT1JFX1NSQz4sCiAJCQkgICAg
ICAgICAgICAgICAgICA8JmNsayBJTVg4TVFfQ0xLX0dQVV9TSEFERVJfU1JDPiwKIAkJCSAgICAg
ICAgICAgICAgICAgIDwmY2xrIElNWDhNUV9DTEtfR1BVX0FYST4sCi0tIAoyLjIzLjAucmMxCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
