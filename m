Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F5BE1AA4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LPog9sJjvd+cZxvvM8e6c5s+S7eWo0A6bQxU4BfwQsM=; b=hsJ/oyzWSyAIKhgEDhZaRSUxuZ
	R5QrD0NYmgpJhfnpdp4Lp86IDQgqH3/2dk1hm/vMDPXdHma1jScTIbH0OM85+sW6C3mFJF18Wk1Do
	al2ZHoLrQN2nUJ1xWgRAcvJpeP2tT3QUyYOueLoR5GNU5urTYTbNWd4TQihSUpSooa7Vl7eKmg5/x
	mOZBHa2KjJon13rbBNCZTNozapL6/q1uXkTTF3r7hj+7FLHKpfpeQOyAMIAtWZYpKZ/z2xEFvLowo
	ROe1MJMZzooIT62KwO2IA22z9myjxINh4kIycXG24wKZDdYd+xlpnVjFeRP7p7WsKfQRPEsHsJL6w
	+LZV2R9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFpz-0006st-KK; Wed, 23 Oct 2019 12:34:03 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFm3-00021O-EH
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:30:05 +0000
Received: from ramsan ([84.194.98.4]) by michel.telenet-ops.be with bizsmtp
 id H0Vy2100b05gfCL060VysK; Wed, 23 Oct 2019 14:29:58 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFm2-0000pA-KE; Wed, 23 Oct 2019 14:29:58 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFm2-0003FE-JD; Wed, 23 Oct 2019 14:29:58 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 3/3] pinctrl: sh-pfc: r8a7796: Add R8A77961 PFC support
Date: Wed, 23 Oct 2019 14:29:55 +0200
Message-Id: <20191023122955.12420-4-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191023122955.12420-1-geert+renesas@glider.be>
References: <20191023122955.12420-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_052959_771486_D1AF018A 
X-CRM114-Status: GOOD (  11.58  )
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
 linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
 Eugeniu Rosca <erosca@de.adit-jv.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the Pin Function Controller in the R-Car M3-W+
(R8A77961) SoC.

R-Car M3-W+ is pin compatible with R-Car M3-W (R8A77960), which allows
for both SoCs to share a driver.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Tested-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
v2:
  - Add Reviewed-by, Tested-by,
  - Move r8a7796_pinmux_info rename to a prerequisite patch.
---
 drivers/pinctrl/sh-pfc/Kconfig       |  4 ++++
 drivers/pinctrl/sh-pfc/Makefile      |  1 +
 drivers/pinctrl/sh-pfc/core.c        |  6 ++++++
 drivers/pinctrl/sh-pfc/pfc-r8a7796.c | 29 +++++++++++++++++++++++++++-
 drivers/pinctrl/sh-pfc/sh_pfc.h      |  1 +
 5 files changed, 40 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/sh-pfc/Kconfig b/drivers/pinctrl/sh-pfc/Kconfig
index 93d6034be4ff63f2..28d66e7cb098863b 100644
--- a/drivers/pinctrl/sh-pfc/Kconfig
+++ b/drivers/pinctrl/sh-pfc/Kconfig
@@ -28,6 +28,7 @@ config PINCTRL_SH_PFC
 	select PINCTRL_PFC_R8A7794 if ARCH_R8A7794
 	select PINCTRL_PFC_R8A7795 if ARCH_R8A7795
 	select PINCTRL_PFC_R8A77960 if ARCH_R8A77960 || ARCH_R8A7796
+	select PINCTRL_PFC_R8A77961 if ARCH_R8A77961
 	select PINCTRL_PFC_R8A77965 if ARCH_R8A77965
 	select PINCTRL_PFC_R8A77970 if ARCH_R8A77970
 	select PINCTRL_PFC_R8A77980 if ARCH_R8A77980
@@ -120,6 +121,9 @@ config PINCTRL_PFC_R8A7795
 config PINCTRL_PFC_R8A77960
 	bool "R-Car M3-W pin control support" if COMPILE_TEST
 
+config PINCTRL_PFC_R8A77961
+	bool "R-Car M3-W+ pin control support" if COMPILE_TEST
+
 config PINCTRL_PFC_R8A77965
 	bool "R-Car M3-N pin control support" if COMPILE_TEST
 
diff --git a/drivers/pinctrl/sh-pfc/Makefile b/drivers/pinctrl/sh-pfc/Makefile
index e3594cd2620386af..3bc05666e1a6652e 100644
--- a/drivers/pinctrl/sh-pfc/Makefile
+++ b/drivers/pinctrl/sh-pfc/Makefile
@@ -21,6 +21,7 @@ obj-$(CONFIG_PINCTRL_PFC_R8A7794)	+= pfc-r8a7794.o
 obj-$(CONFIG_PINCTRL_PFC_R8A7795)	+= pfc-r8a7795.o
 obj-$(CONFIG_PINCTRL_PFC_R8A7795)	+= pfc-r8a7795-es1.o
 obj-$(CONFIG_PINCTRL_PFC_R8A77960)	+= pfc-r8a7796.o
+obj-$(CONFIG_PINCTRL_PFC_R8A77961)	+= pfc-r8a7796.o
 obj-$(CONFIG_PINCTRL_PFC_R8A77965)	+= pfc-r8a77965.o
 obj-$(CONFIG_PINCTRL_PFC_R8A77970)	+= pfc-r8a77970.o
 obj-$(CONFIG_PINCTRL_PFC_R8A77980)	+= pfc-r8a77980.o
diff --git a/drivers/pinctrl/sh-pfc/core.c b/drivers/pinctrl/sh-pfc/core.c
index e3292abd6c9456f8..2959623e9b724f40 100644
--- a/drivers/pinctrl/sh-pfc/core.c
+++ b/drivers/pinctrl/sh-pfc/core.c
@@ -591,6 +591,12 @@ static const struct of_device_id sh_pfc_of_table[] = {
 		.data = &r8a77960_pinmux_info,
 	},
 #endif
+#ifdef CONFIG_PINCTRL_PFC_R8A77961
+	{
+		.compatible = "renesas,pfc-r8a77961",
+		.data = &r8a77961_pinmux_info,
+	},
+#endif
 #ifdef CONFIG_PINCTRL_PFC_R8A77965
 	{
 		.compatible = "renesas,pfc-r8a77965",
diff --git a/drivers/pinctrl/sh-pfc/pfc-r8a7796.c b/drivers/pinctrl/sh-pfc/pfc-r8a7796.c
index 9de2909c7ad9dff0..a2496baca85d23f8 100644
--- a/drivers/pinctrl/sh-pfc/pfc-r8a7796.c
+++ b/drivers/pinctrl/sh-pfc/pfc-r8a7796.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * R8A7796 processor support - PFC hardware block.
+ * R8A7796 (R-Car M3-W/W+) support - PFC hardware block.
  *
  * Copyright (C) 2016-2019 Renesas Electronics Corp.
  *
@@ -6236,3 +6236,30 @@ const struct sh_pfc_soc_info r8a77960_pinmux_info = {
 	.pinmux_data_size = ARRAY_SIZE(pinmux_data),
 };
 #endif
+
+#ifdef CONFIG_PINCTRL_PFC_R8A77961
+const struct sh_pfc_soc_info r8a77961_pinmux_info = {
+	.name = "r8a77961_pfc",
+	.ops = &r8a7796_pinmux_ops,
+	.unlock_reg = 0xe6060000, /* PMMR */
+
+	.function = { PINMUX_FUNCTION_BEGIN, PINMUX_FUNCTION_END },
+
+	.pins = pinmux_pins,
+	.nr_pins = ARRAY_SIZE(pinmux_pins),
+	.groups = pinmux_groups.common,
+	.nr_groups = ARRAY_SIZE(pinmux_groups.common) +
+		ARRAY_SIZE(pinmux_groups.automotive),
+	.functions = pinmux_functions.common,
+	.nr_functions = ARRAY_SIZE(pinmux_functions.common) +
+		ARRAY_SIZE(pinmux_functions.automotive),
+
+	.cfg_regs = pinmux_config_regs,
+	.drive_regs = pinmux_drive_regs,
+	.bias_regs = pinmux_bias_regs,
+	.ioctrl_regs = pinmux_ioctrl_regs,
+
+	.pinmux_data = pinmux_data,
+	.pinmux_data_size = ARRAY_SIZE(pinmux_data),
+};
+#endif
diff --git a/drivers/pinctrl/sh-pfc/sh_pfc.h b/drivers/pinctrl/sh-pfc/sh_pfc.h
index a7eb527fdc60ae25..640d2a4cb838804f 100644
--- a/drivers/pinctrl/sh-pfc/sh_pfc.h
+++ b/drivers/pinctrl/sh-pfc/sh_pfc.h
@@ -321,6 +321,7 @@ extern const struct sh_pfc_soc_info r8a7794_pinmux_info;
 extern const struct sh_pfc_soc_info r8a7795_pinmux_info;
 extern const struct sh_pfc_soc_info r8a7795es1_pinmux_info;
 extern const struct sh_pfc_soc_info r8a77960_pinmux_info;
+extern const struct sh_pfc_soc_info r8a77961_pinmux_info;
 extern const struct sh_pfc_soc_info r8a77965_pinmux_info;
 extern const struct sh_pfc_soc_info r8a77970_pinmux_info;
 extern const struct sh_pfc_soc_info r8a77980_pinmux_info;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
