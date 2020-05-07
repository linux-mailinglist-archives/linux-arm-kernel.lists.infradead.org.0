Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFB51C97B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:27:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClsKTZq8cKNnorGlf/IPp2dAvAOKc+vkATfaGWIIX+4=; b=OqxnWeoXjmNjtM
	U62b1y6UHLeuj3Lnhki0tv6+Sr8jyYk3WJCo9CRnyTIRQi/a/ft3V0RpLzetkyZaZnjGdsA8zPUsi
	qLCvS/8qgqT3rOhG21NxapMCqsbmXvNmVGKbOEi3XqPNCztG0z5ytbdFfPFYD1lRwweb7kInQjLQ0
	nFfSwM1KKyVmCFzh7rRM+gsdbV4rfooIA2WvhJQpEr3KSHfDJjOPW7xMHaldWPoFTFxccIDdbOxaU
	ek36On5rzbFbQBNlvMGFgBMO7AEJ2+blAxh80e2/sQsM8GlmlHRzG7MiKIMuwfpjlkmdvkqd/mXa0
	iBWNTfAa6EBfJSaxh/3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkJN-0008Bp-5P; Thu, 07 May 2020 17:27:53 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkFv-0002f3-Nt
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:24:25 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 7E4FB80CD;
 Thu,  7 May 2020 17:25:06 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 14/14] bus: ti-sysc: Timers no longer need legacy quirk
 handling
Date: Thu,  7 May 2020 10:23:30 -0700
Message-Id: <20200507172330.18679-15-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200507172330.18679-1-tony@atomide.com>
References: <20200507172330.18679-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_102419_857100_0A998B5E 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Lokesh Vutla <lokeshvutla@ti.com>,
 Keerthy <j-keerthy@ti.com>, Michael Turquette <mturquette@baylibre.com>,
 Graeme Smecher <gsmecher@threespeedlogic.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
 Andreas Kemnade <andreas@kemnade.info>,
 "H. Nikolaus Schaller" <hns@goldelico.com>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, Brian Hutchinson <b.hutchman@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As timers no longer need legacy quirk handling, let's move them to
the CONFIG_DEBUG section to make it easier to see which drivers still
need more work.

Let's also add detection for few more older timer revisions while at
it as that makes CONFIG_DEBUG output easier to read with proper names.

Cc: Grygorii Strashko <grygorii.strashko@ti.com>
Cc: Keerthy <j-keerthy@ti.com>
Cc: Lokesh Vutla <lokeshvutla@ti.com>
Cc: Tero Kristo <t-kristo@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -1275,13 +1275,6 @@ static const struct sysc_revision_quirk sysc_revision_quirks[] = {
 		   SYSC_QUIRK_LEGACY_IDLE),
 	SYSC_QUIRK("smartreflex", 0, -ENODEV, 0x38, -ENODEV, 0x00000000, 0xffffffff,
 		   SYSC_QUIRK_LEGACY_IDLE),
-	SYSC_QUIRK("timer", 0, 0, 0x10, 0x14, 0x00000015, 0xffffffff,
-		   0),
-	/* Some timers on omap4 and later */
-	SYSC_QUIRK("timer", 0, 0, 0x10, -ENODEV, 0x50002100, 0xffffffff,
-		   0),
-	SYSC_QUIRK("timer", 0, 0, 0x10, -ENODEV, 0x4fff1301, 0xffff00ff,
-		   0),
 	SYSC_QUIRK("uart", 0, 0x50, 0x54, 0x58, 0x00000046, 0xffffffff,
 		   SYSC_QUIRK_SWSUP_SIDLE | SYSC_QUIRK_LEGACY_IDLE),
 	SYSC_QUIRK("uart", 0, 0x50, 0x54, 0x58, 0x00000052, 0xffffffff,
@@ -1404,6 +1397,13 @@ static const struct sysc_revision_quirk sysc_revision_quirks[] = {
 	SYSC_QUIRK("slimbus", 0, 0, 0x10, -ENODEV, 0x40002903, 0xffffffff, 0),
 	SYSC_QUIRK("spinlock", 0, 0, 0x10, -ENODEV, 0x50020000, 0xffffffff, 0),
 	SYSC_QUIRK("rng", 0, 0x1fe0, 0x1fe4, -ENODEV, 0x00000020, 0xffffffff, 0),
+	SYSC_QUIRK("timer", 0, 0, 0x10, 0x14, 0x00000013, 0xffffffff, 0),
+	SYSC_QUIRK("timer", 0, 0, 0x10, 0x14, 0x00000015, 0xffffffff, 0),
+	/* Some timers on omap4 and later */
+	SYSC_QUIRK("timer", 0, 0, 0x10, -ENODEV, 0x50002100, 0xffffffff, 0),
+	SYSC_QUIRK("timer", 0, 0, 0x10, -ENODEV, 0x4fff1301, 0xffff00ff, 0),
+	SYSC_QUIRK("timer32k", 0, 0, 0x4, -ENODEV, 0x00000040, 0xffffffff, 0),
+	SYSC_QUIRK("timer32k", 0, 0, 0x4, -ENODEV, 0x00000011, 0xffffffff, 0),
 	SYSC_QUIRK("timer32k", 0, 0, 0x4, -ENODEV, 0x00000060, 0xffffffff, 0),
 	SYSC_QUIRK("tpcc", 0, 0, -ENODEV, -ENODEV, 0x40014c00, 0xffffffff, 0),
 	SYSC_QUIRK("usbhstll", 0, 0, 0x10, 0x14, 0x00000004, 0xffffffff, 0),
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
