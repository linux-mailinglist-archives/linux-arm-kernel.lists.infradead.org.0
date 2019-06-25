Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 420E752695
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 10:28:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KQS4KWhoI9bOOKGFZTaGgUQYFNl3Ff1RZ36jg5+LvLI=; b=TZHVMqfdBe34cr
	o1ntLYA0MjCKO6LhJ2H3/vV/cvXdr2UXActzaQGOsY6Z+qbF8ITuHYQHLCpdyMfLx3dGhwAvfpBat
	ldKe9wUrpIH8y5N171pLrj/ZOQQebASCCXp9jhkPPw8eZzphg4VjCZ0l5vktwEpBKsmnGIN6hBXFQ
	5JMuWCQLCaO5axcPNq/6z4Uy/iIaUWUCbCa7/PA01vjXmGcqZ1oiYk8LJixq2eHiIHaqwvYL/fki6
	upnD0DpL8DXWdtMLZd5eERcBUJmFkwjzbXNJWZwOLBQ6lDHfZja+0prvT2FIt1Qg04PlXlifPYTwM
	o0v6b8K5TliKdRD4hUOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgo8-0003Sg-SX; Tue, 25 Jun 2019 08:28:04 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgnY-0003FA-Uq
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 08:27:30 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 553A6FB05;
 Tue, 25 Jun 2019 10:27:23 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pFjeKLXJ8mOX; Tue, 25 Jun 2019 10:27:22 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 0EC7848DDA; Tue, 25 Jun 2019 10:27:22 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>,
 Lucas Stach <l.stach@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: imx8mq: Add DT node for the Mixel MIPI D-PHY
Date: Tue, 25 Jun 2019 10:27:19 +0200
Message-Id: <cover.1561451144.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_012729_153701_6DCB6311 
X-CRM114-Status: UNSURE (   8.89  )
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

Tm93IHRoYXQgdGhlIGRyaXZlciBpcyBpbiBsaW51eC1uZXh0IGFzIG9mIDIwMTkwNjI0IGxldCdz
IGhhdmUgYSBEVCBub2RlCmZvciB0aGUgaS5NWDhtcSBhbmQgZW5hYmxlIGl0IG9uIHRoZSBMaWJy
ZW0gNSBkZXZraXQuCgpHdWlkbyBHw7xudGhlciAoMik6CiAgYXJtNjQ6IGR0czogaW14OG1xOiBB
ZGQgTUlQSSBELVBIWQogIGFybTY0OiBkdHM6IGlteDhtcS1saWJyZW01OiBFbmFibGUgTUlQSSBE
LVBIWQoKIC4uLi9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLWxpYnJlbTUtZGV2a2l0LmR0cyAg
ICB8ICA0ICsrKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpICAg
ICAgICAgICB8IDEzICsrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9u
cygrKQoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
