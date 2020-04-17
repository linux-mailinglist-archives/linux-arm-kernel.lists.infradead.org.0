Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EED31AE2DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 18:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rA58tcKMx46zPsRo01ehmp39dqh88jPZZz5eoMg9afU=; b=aYmlR210xf96Ff
	HgZgVfHTbmXfq0FnrwkQNQp3Eb0ObWnlgoOSHe5m4Nr02TUVUTPrT4TkzHeshOwzd2IQ91V2SAb1Z
	C8UF/6wGmXBbciE/6bCjYaFSfW5vbJRzp84ylg09sCz2r3/z+6rFnrfmVd3Ex19acctHXytUUbL0F
	oVeFSsRKZyjlUAMNQQbgW+0PD8m6eF7s42V2tEGqy+BwuaH6h/fpX7bMEA6ww1xx/PgllhMDAFXJA
	yWahmdi1BWUN8RYBtGeeec680LUOEObLSJaEJPMbuYgun49cmg/V8AMEsArUUPgWUfZCZrAskNsO/
	dwT/Z1Ycj4XtU5N9vqtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPUIt-0005Np-9p; Fri, 17 Apr 2020 16:57:23 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPUHL-0004Ee-Du
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 16:55:48 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 9DDFB8047;
 Fri, 17 Apr 2020 16:56:32 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 05/14] ARM: OMAP2+: Add omap_init_time_of()
Date: Fri, 17 Apr 2020 09:55:10 -0700
Message-Id: <20200417165519.4979-6-tony@atomide.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200417165519.4979-1-tony@atomide.com>
References: <20200417165519.4979-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_095547_537130_8F574451 
X-CRM114-Status: UNSURE (   8.99  )
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
Cc: devicetree@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Lokesh Vutla <lokeshvutla@ti.com>, Keerthy <j-keerthy@ti.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Stephen Boyd <sboyd@kernel.org>,
 Andreas Kemnade <andreas@kemnade.info>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Thomas Gleixner <tglx@linutronix.de>, Adam Ford <aford173@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This allows us to move the SoCs to probe system timers one SoC
at at time. As arch/arm/mach-omap2/timer.c will be eventually gone,
let's just add omap_init_time_of() to board-generic.c directly.

Cc: Keerthy <j-keerthy@ti.com>
Cc: Lokesh Vutla <lokeshvutla@ti.com>
Cc: Tero Kristo <t-kristo@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/board-generic.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/mach-omap2/board-generic.c b/arch/arm/mach-omap2/board-generic.c
--- a/arch/arm/mach-omap2/board-generic.c
+++ b/arch/arm/mach-omap2/board-generic.c
@@ -12,6 +12,7 @@
 #include <linux/of_irq.h>
 #include <linux/of_platform.h>
 #include <linux/irqdomain.h>
+#include <linux/clocksource.h>
 
 #include <asm/setup.h>
 #include <asm/mach/arch.h>
@@ -31,6 +32,13 @@ static void __init __maybe_unused omap_generic_init(void)
 	omap_soc_device_init();
 }
 
+/* Clocks are needed early, see drivers/clocksource for the rest */
+void __init __maybe_unused omap_init_time_of(void)
+{
+	omap_clk_init();
+	timer_probe();
+}
+
 #ifdef CONFIG_SOC_OMAP2420
 static const char *const omap242x_boards_compat[] __initconst = {
 	"ti,omap2420",
-- 
2.26.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
