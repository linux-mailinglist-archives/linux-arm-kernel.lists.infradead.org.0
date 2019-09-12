Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEFBB06D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 04:41:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=svr1G+kF/Yn42gQQNLM5nWURhOYBhd3wiAelrhGsoFM=; b=DxuZ8pm027k6fe
	GDtqxlmWHJgNlIjEXX7peFUefWSvMeG3ECZWWMeQ49IH/Jc6Nb6SmsC1A3+9J7qRyJL6dHMMXGs/S
	t7/uqM3SyhxS/tOysJMZPDwO/YbeHzo4Vvv+PA41l+tyjmpyOzBx/Gepziwp+hHBFvDd4ic/N3xv4
	5B0LwTOCu9t5clkNBpcJ4E90ZdXLh4NZPLJf9KzXcK3nRiq2J/tpsfX6dGD0W509QOIezo/Tbo0oX
	YIl7eu1NR3Mwl54k4Zado3+zSHSUUq953vOZ5cFf8J0wwvLvxm4ymlNWd3uDNZ5Z5Z6VNvDX7yHfH
	DSxGbqTXCB4lin+H+sYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8F2k-0007Vh-Fh; Thu, 12 Sep 2019 02:41:10 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8F2J-0007Ls-HS
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 02:40:44 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id D8DCBFB02;
 Thu, 12 Sep 2019 04:40:40 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VqZf75Uf_RKR; Thu, 12 Sep 2019 04:40:38 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 5495846CBF; Wed, 11 Sep 2019 19:40:36 -0700 (PDT)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: "To : Lucas Stach" <l.stach@pengutronix.de>,
 Russell King <linux+etnaviv@armlinux.org.uk>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>, etnaviv@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] dts: arm64: imx8mq: Enable gpu passive throttling
Date: Wed, 11 Sep 2019 19:40:35 -0700
Message-Id: <0ab2ee7de9c2e24f6de860ffcbcdfc25b72c2c61.1568255903.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <cover.1568255903.git.agx@sigxcpu.org>
References: <cover.1568255903.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_194043_731134_1F88CBE6 
X-CRM114-Status: UNSURE (   9.60  )
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
ZWVzY2FsZS9pbXg4bXEuZHRzaQppbmRleCA0ZmRkNjBmMmM1MWUuLjUwMjNhMGU1MDY4ZCAxMDA2
NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKQEAgLTIzNSwxMiArMjM1
LDI2IEBACiAJCQl0aGVybWFsLXNlbnNvcnMgPSA8JnRtdSAxPjsKIAogCQkJdHJpcHMgeworCQkJ
CWdwdV9hbGVydDogZ3B1LWFsZXJ0IHsKKwkJCQkJdGVtcGVyYXR1cmUgPSA8ODAwMDA+OworCQkJ
CQloeXN0ZXJlc2lzID0gPDIwMDA+OworCQkJCQl0eXBlID0gInBhc3NpdmUiOworCQkJCX07CisK
IAkJCQlncHUtY3JpdCB7CiAJCQkJCXRlbXBlcmF0dXJlID0gPDkwMDAwPjsKIAkJCQkJaHlzdGVy
ZXNpcyA9IDwyMDAwPjsKIAkJCQkJdHlwZSA9ICJjcml0aWNhbCI7CiAJCQkJfTsKIAkJCX07CisK
KwkJCWNvb2xpbmctbWFwcyB7CisJCQkJbWFwMCB7CisJCQkJCXRyaXAgPSA8JmdwdV9hbGVydD47
CisJCQkJCWNvb2xpbmctZGV2aWNlID0KKwkJCQkJCTwmZ3B1IFRIRVJNQUxfTk9fTElNSVQgVEhF
Uk1BTF9OT19MSU1JVD47CisJCQkJfTsKKwkJCX07CiAJCX07CiAKIAkJdnB1LXRoZXJtYWwgewpA
QCAtOTEyLDYgKzkyNiw3IEBACiAJCQkgICAgICAgICA8JmNsayBJTVg4TVFfQ0xLX0dQVV9BWEk+
LAogCQkJICAgICAgICAgPCZjbGsgSU1YOE1RX0NMS19HUFVfQUhCPjsKIAkJCWNsb2NrLW5hbWVz
ID0gImNvcmUiLCAic2hhZGVyIiwgImJ1cyIsICJyZWciOworCQkJI2Nvb2xpbmctY2VsbHMgPSA8
Mj47CiAJCQlhc3NpZ25lZC1jbG9ja3MgPSA8JmNsayBJTVg4TVFfQ0xLX0dQVV9DT1JFX1NSQz4s
CiAJCQkgICAgICAgICAgICAgICAgICA8JmNsayBJTVg4TVFfQ0xLX0dQVV9TSEFERVJfU1JDPiwK
IAkJCSAgICAgICAgICAgICAgICAgIDwmY2xrIElNWDhNUV9DTEtfR1BVX0FYST4sCi0tIAoyLjIz
LjAucmMxCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
