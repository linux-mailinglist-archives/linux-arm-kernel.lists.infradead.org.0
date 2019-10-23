Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C21E1A42
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:32:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bf/z5IwUP5a7/BFR/iO6eBgdZzwD6Ti/q6Qirggd7xI=; b=QuGXqlNojUadUO12QCoQZPvA/8
	/jlIvZOVZ6B/TxbuY4ec1y7vOJYRF4jWsoJCBMZWU+/pYAXN8ILHZwZE6GpihttJwrnGtg4uFWDsN
	CSv3+ItwRmduKy7QqgNhdmhZTbllBa9jGwynCm8byzmfDfeho+9Bgxqxn6yoCR3AE4k8qjFXOa2t+
	gJjZyjEs8uD/ocsbo4su2944Asafa0Uq4kbwBcPaCS4vAGxj7ZRA2iIidowW+4OuV0IXQvRxaOtad
	021HzOKFXhJzG/+l9VX9ywaSB+QnLNcKFhud6Lx+gGay0SjMLbbrReX3SLnZnnCLXJqSj0JkoeufV
	cpSAvyiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFnw-0004rD-HZ; Wed, 23 Oct 2019 12:31:56 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFlq-00021O-Mc
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:29:49 +0000
Received: from ramsan ([84.194.98.4]) by michel.telenet-ops.be with bizsmtp
 id H0Vm2100605gfCL060VmqV; Wed, 23 Oct 2019 14:29:46 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFlp-0000ed-Up; Wed, 23 Oct 2019 14:29:45 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFlp-0003E5-Sm; Wed, 23 Oct 2019 14:29:45 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 4/4] clk: renesas: r8a7796: Add R8A77961 CPG/MSSR support
Date: Wed, 23 Oct 2019 14:29:41 +0200
Message-Id: <20191023122941.12342-5-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191023122941.12342-1-geert+renesas@glider.be>
References: <20191023122941.12342-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_052946_908951_30C33B54 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-renesas-soc@vger.kernel.org, Eugeniu Rosca <erosca@de.adit-jv.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the R-Car M3-W+ (R8A77961) SoC to the Renesas Clock
Pulse Generator / Module Standby and Software Reset driver.

R-Car M3-W+ is very similar to R-Car M3-W (R8A77960), which allows for
both SoCs to share a driver.  R-Car M3-W+ lacks a few modules, so their
clocks must be nullified.

Based on a patch in the BSP by Takeshi Kihara
<takeshi.kihara.df@renesas.com>.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Tested-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
v2:
  - Add Reviewed-by, Tested-by,
  - Add "R-Car M3-W/W+" comment at the top of r8a7796-cpg-mssr.c.
---
 drivers/clk/renesas/Kconfig            |  5 +++++
 drivers/clk/renesas/Makefile           |  1 +
 drivers/clk/renesas/r8a7796-cpg-mssr.c | 24 ++++++++++++++++++++----
 drivers/clk/renesas/renesas-cpg-mssr.c |  6 ++++++
 4 files changed, 32 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/renesas/Kconfig b/drivers/clk/renesas/Kconfig
index a48f75ec1400c090..4cd846bc98cc2ec0 100644
--- a/drivers/clk/renesas/Kconfig
+++ b/drivers/clk/renesas/Kconfig
@@ -22,6 +22,7 @@ config CLK_RENESAS
 	select CLK_R8A7794 if ARCH_R8A7794
 	select CLK_R8A7795 if ARCH_R8A7795
 	select CLK_R8A77960 if ARCH_R8A77960 || ARCH_R8A7796
+	select CLK_R8A77961 if ARCH_R8A77961
 	select CLK_R8A77965 if ARCH_R8A77965
 	select CLK_R8A77970 if ARCH_R8A77970
 	select CLK_R8A77980 if ARCH_R8A77980
@@ -113,6 +114,10 @@ config CLK_R8A77960
 	bool "R-Car M3-W clock support" if COMPILE_TEST
 	select CLK_RCAR_GEN3_CPG
 
+config CLK_R8A77961
+	bool "R-Car M3-W+ clock support" if COMPILE_TEST
+	select CLK_RCAR_GEN3_CPG
+
 config CLK_R8A77965
 	bool "R-Car M3-N clock support" if COMPILE_TEST
 	select CLK_RCAR_GEN3_CPG
diff --git a/drivers/clk/renesas/Makefile b/drivers/clk/renesas/Makefile
index 58211d0f04bf4d4b..4a722bc5aac755c8 100644
--- a/drivers/clk/renesas/Makefile
+++ b/drivers/clk/renesas/Makefile
@@ -19,6 +19,7 @@ obj-$(CONFIG_CLK_R8A7792)		+= r8a7792-cpg-mssr.o
 obj-$(CONFIG_CLK_R8A7794)		+= r8a7794-cpg-mssr.o
 obj-$(CONFIG_CLK_R8A7795)		+= r8a7795-cpg-mssr.o
 obj-$(CONFIG_CLK_R8A77960)		+= r8a7796-cpg-mssr.o
+obj-$(CONFIG_CLK_R8A77961)		+= r8a7796-cpg-mssr.o
 obj-$(CONFIG_CLK_R8A77965)		+= r8a77965-cpg-mssr.o
 obj-$(CONFIG_CLK_R8A77970)		+= r8a77970-cpg-mssr.o
 obj-$(CONFIG_CLK_R8A77980)		+= r8a77980-cpg-mssr.o
diff --git a/drivers/clk/renesas/r8a7796-cpg-mssr.c b/drivers/clk/renesas/r8a7796-cpg-mssr.c
index 90cc6a1026028fa8..e8420d3ada94ca45 100644
--- a/drivers/clk/renesas/r8a7796-cpg-mssr.c
+++ b/drivers/clk/renesas/r8a7796-cpg-mssr.c
@@ -1,9 +1,10 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * r8a7796 Clock Pulse Generator / Module Standby and Software Reset
+ * r8a7796 (R-Car M3-W/W+) Clock Pulse Generator / Module Standby and Software
+ * Reset
  *
- * Copyright (C) 2016 Glider bvba
- * Copyright (C) 2018 Renesas Electronics Corp.
+ * Copyright (C) 2016-2019 Glider bvba
+ * Copyright (C) 2018-2019 Renesas Electronics Corp.
  *
  * Based on r8a7795-cpg-mssr.c
  *
@@ -14,6 +15,7 @@
 #include <linux/device.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
+#include <linux/of.h>
 #include <linux/soc/renesas/rcar-rst.h>
 
 #include <dt-bindings/clock/r8a7796-cpg-mssr.h>
@@ -116,7 +118,7 @@ static const struct cpg_core_clk r8a7796_core_clks[] __initconst = {
 	DEF_BASE("r",           R8A7796_CLK_R,     CLK_TYPE_GEN3_R, CLK_RINT),
 };
 
-static const struct mssr_mod_clk r8a7796_mod_clks[] __initconst = {
+static struct mssr_mod_clk r8a7796_mod_clks[] __initdata = {
 	DEF_MOD("fdp1-0",		 119,	R8A7796_CLK_S0D1),
 	DEF_MOD("scif5",		 202,	R8A7796_CLK_S3D4),
 	DEF_MOD("scif4",		 203,	R8A7796_CLK_S3D4),
@@ -304,6 +306,14 @@ static const struct rcar_gen3_cpg_pll_config cpg_pll_configs[16] __initconst = {
 	{ 2,		192,	1,	192,	1,	32,	},
 };
 
+	/*
+	 * Fixups for R-Car M3-W+
+	 */
+
+static const unsigned int r8a77961_mod_nullify[] __initconst = {
+	MOD_CLK_ID(617),			/* FCPCI0  */
+};
+
 static int __init r8a7796_cpg_mssr_init(struct device *dev)
 {
 	const struct rcar_gen3_cpg_pll_config *cpg_pll_config;
@@ -320,6 +330,12 @@ static int __init r8a7796_cpg_mssr_init(struct device *dev)
 		return -EINVAL;
 	}
 
+	if (of_device_is_compatible(dev->of_node, "renesas,r8a77961-cpg-mssr"))
+		mssr_mod_nullify(r8a7796_mod_clks,
+				 ARRAY_SIZE(r8a7796_mod_clks),
+				 r8a77961_mod_nullify,
+				 ARRAY_SIZE(r8a77961_mod_nullify));
+
 	return rcar_gen3_cpg_init(cpg_pll_config, CLK_EXTALR, cpg_mode);
 }
 
diff --git a/drivers/clk/renesas/renesas-cpg-mssr.c b/drivers/clk/renesas/renesas-cpg-mssr.c
index c2f96e63498e14cc..a2663fbbd7a51067 100644
--- a/drivers/clk/renesas/renesas-cpg-mssr.c
+++ b/drivers/clk/renesas/renesas-cpg-mssr.c
@@ -755,6 +755,12 @@ static const struct of_device_id cpg_mssr_match[] = {
 		.data = &r8a7796_cpg_mssr_info,
 	},
 #endif
+#ifdef CONFIG_CLK_R8A77961
+	{
+		.compatible = "renesas,r8a77961-cpg-mssr",
+		.data = &r8a7796_cpg_mssr_info,
+	},
+#endif
 #ifdef CONFIG_CLK_R8A77965
 	{
 		.compatible = "renesas,r8a77965-cpg-mssr",
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
