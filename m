Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AD2E1AD6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:38:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mefBZqogeRhAjim5aLQSlkradrb0Z5B2D6xpWeik30c=; b=P512JOXYd9v+fUYdncOHSPNJAc
	22TIzWGLKpDhpLh0nHlJejuOPpIHRhMN4Davh5oy+45D24qLZqmr3fC153ZI3vV55tasLJVBBs9rC
	AdBjEKeQvUKt6A36owiLv2uVlSzUg4iUWGmEv+SpoAF0W8U4cWdOvNG7AJqroSVvBDrbWW4KZV+6z
	R0os+a6EfKOXvNomWly+q1xZLIOb8GmZMJr/LqB4+nOFmfGW5mElJv+s3KjF5F4uJSe+FQ3XuPu3s
	UU/s5uLviIuj9YigSgw4eO9/DjUi6V5VEifAkuuocSSLbeLzk/+rNIVDGOtT0zfCArF2Y/eJa/vTb
	g/S8ik3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFuW-0002xk-N7; Wed, 23 Oct 2019 12:38:44 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFpi-0006ma-8a
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:33:53 +0000
Received: from ramsan ([84.194.98.4]) by xavier.telenet-ops.be with bizsmtp
 id H0Zk2100705gfCL010Zk3g; Wed, 23 Oct 2019 14:33:44 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFpg-0003ty-2B; Wed, 23 Oct 2019 14:33:44 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFpg-0003QT-0z; Wed, 23 Oct 2019 14:33:44 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH v2 06/11] soc: renesas: rcar-sysc: Add R8A77961 support
Date: Wed, 23 Oct 2019 14:33:37 +0200
Message-Id: <20191023123342.13100-7-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191023123342.13100-1-geert+renesas@glider.be>
References: <20191023123342.13100-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_053346_493560_1C25CF95 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
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
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 Eugeniu Rosca <erosca@de.adit-jv.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the power areas in the Renesas R-Car M3-W+ (R8A77961)
SoC to the R-Car System Controller driver.

R-Car M3-W+ (aka R-Car M3-W ES3.0) is very similar to R-Car
M3-W (R8A77960), which allows for both SoCs to share a driver:
  - R-Car M3-W+ lacks the A2VC power area, so its area must be
    nullified,
  - The existing support for the SYSCEXTMASK register added in commit
    9bd645af9d2a49ac ("soc: renesas: r8a7796-sysc: Fix power request
    conflicts") applies to ES3.0 and later only.
    As R-Car M3-W+ uses a different compatible value, differentiate
    based on that, instead of on the ES version.

Based on a patch in the BSP by Dien Pham <dien.pham.ry@renesas.com>.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Tested-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
v2:
  - Add Reviewed-by, Tested-by,
  - Move r8a7796_sysc_info rename to a prerequisite patch,
  - Wrap SoC-specific parts in #ifdefs.
---
 drivers/soc/renesas/Kconfig        |  5 +++++
 drivers/soc/renesas/Makefile       |  1 +
 drivers/soc/renesas/r8a7796-sysc.c | 27 +++++++++++++++------------
 drivers/soc/renesas/rcar-sysc.c    |  3 +++
 drivers/soc/renesas/rcar-sysc.h    |  3 ++-
 5 files changed, 26 insertions(+), 13 deletions(-)

diff --git a/drivers/soc/renesas/Kconfig b/drivers/soc/renesas/Kconfig
index 7b00daa290924445..f93492b72c04e237 100644
--- a/drivers/soc/renesas/Kconfig
+++ b/drivers/soc/renesas/Kconfig
@@ -213,6 +213,7 @@ config ARCH_R8A7796
 config ARCH_R8A77961
 	bool "Renesas R-Car M3-W+ SoC Platform"
 	select ARCH_RCAR_GEN3
+	select SYSC_R8A77961
 	help
 	  This enables support for the Renesas R-Car M3-W+ SoC.
 
@@ -306,6 +307,10 @@ config SYSC_R8A77960
 	bool "R-Car M3-W System Controller support" if COMPILE_TEST
 	select SYSC_RCAR
 
+config SYSC_R8A77961
+	bool "R-Car M3-W+ System Controller support" if COMPILE_TEST
+	select SYSC_RCAR
+
 config SYSC_R8A77965
 	bool "R-Car M3-N System Controller support" if COMPILE_TEST
 	select SYSC_RCAR
diff --git a/drivers/soc/renesas/Makefile b/drivers/soc/renesas/Makefile
index d8a7cfdc9c9cc45f..e595c3c3bd104122 100644
--- a/drivers/soc/renesas/Makefile
+++ b/drivers/soc/renesas/Makefile
@@ -16,6 +16,7 @@ obj-$(CONFIG_SYSC_R8A7792)	+= r8a7792-sysc.o
 obj-$(CONFIG_SYSC_R8A7794)	+= r8a7794-sysc.o
 obj-$(CONFIG_SYSC_R8A7795)	+= r8a7795-sysc.o
 obj-$(CONFIG_SYSC_R8A77960)	+= r8a7796-sysc.o
+obj-$(CONFIG_SYSC_R8A77961)	+= r8a7796-sysc.o
 obj-$(CONFIG_SYSC_R8A77965)	+= r8a77965-sysc.o
 obj-$(CONFIG_SYSC_R8A77970)	+= r8a77970-sysc.o
 obj-$(CONFIG_SYSC_R8A77980)	+= r8a77980-sysc.o
diff --git a/drivers/soc/renesas/r8a7796-sysc.c b/drivers/soc/renesas/r8a7796-sysc.c
index c2accd8d76686ef4..471bd5b3b6ada18d 100644
--- a/drivers/soc/renesas/r8a7796-sysc.c
+++ b/drivers/soc/renesas/r8a7796-sysc.c
@@ -1,19 +1,19 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Renesas R-Car M3-W System Controller
+ * Renesas R-Car M3-W/W+ System Controller
  *
  * Copyright (C) 2016 Glider bvba
+ * Copyright (C) 2018-2019 Renesas Electronics Corporation
  */
 
 #include <linux/bits.h>
 #include <linux/kernel.h>
-#include <linux/sys_soc.h>
 
 #include <dt-bindings/power/r8a7796-sysc.h>
 
 #include "rcar-sysc.h"
 
-static const struct rcar_sysc_area r8a7796_areas[] __initconst = {
+static struct rcar_sysc_area r8a7796_areas[] __initdata = {
 	{ "always-on",	    0, 0, R8A7796_PD_ALWAYS_ON,	-1, PD_ALWAYS_ON },
 	{ "ca57-scu",	0x1c0, 0, R8A7796_PD_CA57_SCU,	R8A7796_PD_ALWAYS_ON,
 	  PD_SCU },
@@ -41,24 +41,27 @@ static const struct rcar_sysc_area r8a7796_areas[] __initconst = {
 };
 
 
-/* Fixups for R-Car M3-W ES1.x revision */
-static const struct soc_device_attribute r8a7796es1[] __initconst = {
-	{ .soc_id = "r8a7796", .revision = "ES1.*" },
-	{ /* sentinel */ }
+#ifdef CONFIG_SYSC_R8A77960
+const struct rcar_sysc_info r8a77960_sysc_info __initconst = {
+	.areas = r8a7796_areas,
+	.num_areas = ARRAY_SIZE(r8a7796_areas),
 };
+#endif /* CONFIG_SYSC_R8A77960 */
 
-static int __init r8a77960_sysc_init(void)
+#ifdef CONFIG_SYSC_R8A77961
+static int __init r8a77961_sysc_init(void)
 {
-	if (soc_device_match(r8a7796es1))
-		r8a77960_sysc_info.extmask_val = 0;
+	rcar_sysc_nullify(r8a7796_areas, ARRAY_SIZE(r8a7796_areas),
+			  R8A7796_PD_A2VC0);
 
 	return 0;
 }
 
-struct rcar_sysc_info r8a77960_sysc_info __initdata = {
-	.init = r8a77960_sysc_init,
+const struct rcar_sysc_info r8a77961_sysc_info __initconst = {
+	.init = r8a77961_sysc_init,
 	.areas = r8a7796_areas,
 	.num_areas = ARRAY_SIZE(r8a7796_areas),
 	.extmask_offs = 0x2f8,
 	.extmask_val = BIT(0),
 };
+#endif /* CONFIG_SYSC_R8A77961 */
diff --git a/drivers/soc/renesas/rcar-sysc.c b/drivers/soc/renesas/rcar-sysc.c
index 5f17b12e9d0c6a87..f0b291e02b8aba1b 100644
--- a/drivers/soc/renesas/rcar-sysc.c
+++ b/drivers/soc/renesas/rcar-sysc.c
@@ -316,6 +316,9 @@ static const struct of_device_id rcar_sysc_matches[] __initconst = {
 #ifdef CONFIG_SYSC_R8A77960
 	{ .compatible = "renesas,r8a7796-sysc", .data = &r8a77960_sysc_info },
 #endif
+#ifdef CONFIG_SYSC_R8A77961
+	{ .compatible = "renesas,r8a77961-sysc", .data = &r8a77961_sysc_info },
+#endif
 #ifdef CONFIG_SYSC_R8A77965
 	{ .compatible = "renesas,r8a77965-sysc", .data = &r8a77965_sysc_info },
 #endif
diff --git a/drivers/soc/renesas/rcar-sysc.h b/drivers/soc/renesas/rcar-sysc.h
index 379a6b2661ebce87..8d074489fba96821 100644
--- a/drivers/soc/renesas/rcar-sysc.h
+++ b/drivers/soc/renesas/rcar-sysc.h
@@ -61,7 +61,8 @@ extern const struct rcar_sysc_info r8a7791_sysc_info;
 extern const struct rcar_sysc_info r8a7792_sysc_info;
 extern const struct rcar_sysc_info r8a7794_sysc_info;
 extern struct rcar_sysc_info r8a7795_sysc_info;
-extern struct rcar_sysc_info r8a77960_sysc_info;
+extern const struct rcar_sysc_info r8a77960_sysc_info;
+extern const struct rcar_sysc_info r8a77961_sysc_info;
 extern const struct rcar_sysc_info r8a77965_sysc_info;
 extern const struct rcar_sysc_info r8a77970_sysc_info;
 extern const struct rcar_sysc_info r8a77980_sysc_info;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
