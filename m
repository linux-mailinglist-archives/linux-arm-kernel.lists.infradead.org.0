Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3482898F73
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 11:36:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RtZT0YzesA6YZHyxf8xsJFYWjGivqG1NOqXeblrSAL8=; b=QZAf4g9kDB1LcP
	Q8npydVbvPGPQdKqvjH/vujIoE3UMUePgA3gqaPtic8qEXUok2SKCBRbg+LoF21hX7IGzF8Xgw/+k
	3Hcw8uBl7VYLiJHnbzuFlzd+2pehKtmk/BKCwYrYG8HcbAgKzvlJOQCVYwQHZWvAJ/YKUtj3wWVji
	7x7f58VNfm8fK35OrYTYAlNek5DJG/KzsbOeNu3REWOTODE8i8jnDBP8wflVnbPA434sTLDmE2s6d
	k4cztef+gWaYDtvYaOcHVNWmO4eS6uC95HFgSsAikbrJ6G84+exEU1DSLwFWDcG0b/ZHi4AbvPucG
	BpHxS1TWfrW1n6/CNpkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0jVo-0001E8-F6; Thu, 22 Aug 2019 09:36:08 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0jTd-0006e2-7T
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 09:33:54 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id E1B59D755A;
 Thu, 22 Aug 2019 11:33:50 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id LqdrDrATp3VP; Thu, 22 Aug 2019 11:33:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id BE2A9D7360;
 Thu, 22 Aug 2019 11:32:58 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ORVKNwk84bqK; Thu, 22 Aug 2019 11:27:49 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id A0F65D7567;
 Thu, 22 Aug 2019 11:26:50 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH v2 13/20] ARM: mmp: DT: convert timer driver to use
 TIMER_OF_DECLARE
Date: Thu, 22 Aug 2019 11:26:36 +0200
Message-Id: <20190822092643.593488-14-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190822092643.593488-1-lkundrak@v3.sk>
References: <20190822092643.593488-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_023353_622480_4473CDA1 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This makes things just a tiny bit simpler.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/mach-mmp/mmp-dt.c  |  5 ++---
 arch/arm/mach-mmp/mmp2-dt.c |  5 ++---
 arch/arm/mach-mmp/time.c    | 38 +++++++++++--------------------------
 3 files changed, 15 insertions(+), 33 deletions(-)

diff --git a/arch/arm/mach-mmp/mmp-dt.c b/arch/arm/mach-mmp/mmp-dt.c
index 35559792d5cca..91214996acecc 100644
--- a/arch/arm/mach-mmp/mmp-dt.c
+++ b/arch/arm/mach-mmp/mmp-dt.c
@@ -9,14 +9,13 @@
 #include <linux/irqchip.h>
 #include <linux/of_platform.h>
 #include <linux/clk-provider.h>
+#include <linux/clocksource.h>
 #include <asm/mach/arch.h>
 #include <asm/mach/time.h>
 #include <asm/hardware/cache-tauros2.h>
 
 #include "common.h"
 
-extern void __init mmp_dt_init_timer(void);
-
 static const char *const pxa168_dt_board_compat[] __initconst = {
 	"mrvl,pxa168-aspenite",
 	NULL,
@@ -32,8 +31,8 @@ static void __init mmp_init_time(void)
 #ifdef CONFIG_CACHE_TAUROS2
 	tauros2_init(0);
 #endif
-	mmp_dt_init_timer();
 	of_clk_init(NULL);
+	timer_probe();
 }
 
 DT_MACHINE_START(PXA168_DT, "Marvell PXA168 (Device Tree Support)")
diff --git a/arch/arm/mach-mmp/mmp2-dt.c b/arch/arm/mach-mmp/mmp2-dt.c
index 8eec881191f4b..510c762ddc484 100644
--- a/arch/arm/mach-mmp/mmp2-dt.c
+++ b/arch/arm/mach-mmp/mmp2-dt.c
@@ -10,21 +10,20 @@
 #include <linux/irqchip.h>
 #include <linux/of_platform.h>
 #include <linux/clk-provider.h>
+#include <linux/clocksource.h>
 #include <asm/mach/arch.h>
 #include <asm/mach/time.h>
 #include <asm/hardware/cache-tauros2.h>
 
 #include "common.h"
 
-extern void __init mmp_dt_init_timer(void);
-
 static void __init mmp_init_time(void)
 {
 #ifdef CONFIG_CACHE_TAUROS2
 	tauros2_init(0);
 #endif
 	of_clk_init(NULL);
-	mmp_dt_init_timer();
+	timer_probe();
 }
 
 static const char *const mmp2_dt_board_compat[] __initconst = {
diff --git a/arch/arm/mach-mmp/time.c b/arch/arm/mach-mmp/time.c
index 483df32583be6..3f6fd0be00512 100644
--- a/arch/arm/mach-mmp/time.c
+++ b/arch/arm/mach-mmp/time.c
@@ -195,30 +195,17 @@ void __init mmp_timer_init(int irq, unsigned long rate)
 	clockevents_config_and_register(&ckevt, rate, MIN_DELTA, MAX_DELTA);
 }
 
-#ifdef CONFIG_OF
-static const struct of_device_id mmp_timer_dt_ids[] = {
-	{ .compatible = "mrvl,mmp-timer", },
-	{}
-};
-
-void __init mmp_dt_init_timer(void)
+static int __init mmp_dt_init_timer(struct device_node *np)
 {
-	struct device_node *np;
 	struct clk *clk;
 	int irq, ret;
 	unsigned long rate;
 
-	np = of_find_matching_node(NULL, mmp_timer_dt_ids);
-	if (!np) {
-		ret = -ENODEV;
-		goto out;
-	}
-
 	clk = of_clk_get(np, 0);
 	if (!IS_ERR(clk)) {
 		ret = clk_prepare_enable(clk);
 		if (ret)
-			goto out;
+			return ret;
 		rate = clk_get_rate(clk) / 2;
 	} else if (cpu_is_pj4()) {
 		rate = 6500000;
@@ -227,18 +214,15 @@ void __init mmp_dt_init_timer(void)
 	}
 
 	irq = irq_of_parse_and_map(np, 0);
-	if (!irq) {
-		ret = -EINVAL;
-		goto out;
-	}
+	if (!irq)
+		return -EINVAL;
+
 	mmp_timer_base = of_iomap(np, 0);
-	if (!mmp_timer_base) {
-		ret = -ENOMEM;
-		goto out;
-	}
+	if (!mmp_timer_base)
+		return -ENOMEM;
+
 	mmp_timer_init(irq, rate);
-	return;
-out:
-	pr_err("Failed to get timer from device tree with error:%d\n", ret);
+	return 0;
 }
-#endif
+
+TIMER_OF_DECLARE(mmp_timer, "mrvl,mmp-timer", mmp_dt_init_timer);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
