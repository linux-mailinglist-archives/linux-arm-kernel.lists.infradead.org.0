Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD3F13DD47
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 15:19:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/HPeb5zBeSDdt3rKGxNPrWFu9isENnU5wlxe/fhjNyY=; b=hV/GjHi+mZKFUW
	BX5Iu9ooZepsIxThu2eD0kUcEToIFWc9P+0AHCy3VzZe/f0CLN954joFxaq9mdBLvFv/TnUEyqanK
	qK3UpZdiuikenq6+h/Jn7T5gJ4iQ+3YR2ZmwbsGi5cHgnDwN/CZlkWgUeBhg1aW41S+3LkpheRY9K
	isn+HVWupSPb99++18dmvDFx9OG5TH7CPtcyx8G1u41K+pb2R7bALMYkGHOlF5ji0+uZMtbkaDK+o
	rUFI20FrDa8es5rvBr+CwotC6MdP0bhh2Sk0BuiW4WxTxf9t9IUSo3tvphtlkfdbOici3f2pwJu0w
	PtninYvy9KnYc70ER+8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5zP-0006cv-2d; Thu, 16 Jan 2020 14:19:15 +0000
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5zD-0006bl-SS
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 14:19:08 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id 7FC9AE7123; Thu, 16 Jan 2020 15:19:00 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 magratgarlick.emantor.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Received: from localhost (unknown [IPv6:2a01:598:a087:a19a:907e:a13:431:7da5])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id 441B6E7121;
 Thu, 16 Jan 2020 15:18:59 +0100 (CET)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: s.hauer@pengutronix.de,
	shawnguo@kernel.org
Subject: [PATCH] ARM: imx: build v7_cpu_resume() unconditionally
Date: Thu, 16 Jan 2020 15:18:49 +0100
Message-Id: <20200116141849.73955-1-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_061904_221488_EB7ED214 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

This function is not only needed by the platform suspend code, but is also
reused as the CPU resume function when the ARM cores can be powered down
completely in deep idle, which is the case on i.MX6SX and i.MX6UL(L).

Providing the static inline stub whenever CONFIG_SUSPEND is disabled means
that those platforms will hang on resume from cpuidle if suspend is disabled.

So there are two problems:

  - The static inline stub masks the linker error
  - The function is not available where needed

Fix both by just building the function unconditionally, when
CONFIG_SOC_IMX6 is enabled. The actual code is three instructions long,
so it's arguably ok to just leave it in for all i.MX6 kernel configurations.

Fixes: 05136f0897b5 ("ARM: imx: support arm power off in cpuidle for i.mx6sx")
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/mach-imx/Makefile       |  2 ++
 arch/arm/mach-imx/common.h       |  4 ++--
 arch/arm/mach-imx/resume-imx6.S  | 24 ++++++++++++++++++++++++
 arch/arm/mach-imx/suspend-imx6.S | 14 --------------
 4 files changed, 28 insertions(+), 16 deletions(-)
 create mode 100644 arch/arm/mach-imx/resume-imx6.S

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 35ff620537e6..03506ce46149 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -91,6 +91,8 @@ AFLAGS_suspend-imx6.o :=-Wa,-march=armv7-a
 obj-$(CONFIG_SOC_IMX6) += suspend-imx6.o
 obj-$(CONFIG_SOC_IMX53) += suspend-imx53.o
 endif
+AFLAGS_resume-imx6.o :=-Wa,-march=armv7-a
+obj-$(CONFIG_SOC_IMX6) += resume-imx6.o
 obj-$(CONFIG_SOC_IMX6) += pm-imx6.o
 
 obj-$(CONFIG_SOC_IMX1) += mach-imx1.o
diff --git a/arch/arm/mach-imx/common.h b/arch/arm/mach-imx/common.h
index 912aeceb4ff8..5aa5796cff0e 100644
--- a/arch/arm/mach-imx/common.h
+++ b/arch/arm/mach-imx/common.h
@@ -109,17 +109,17 @@ void imx_cpu_die(unsigned int cpu);
 int imx_cpu_kill(unsigned int cpu);
 
 #ifdef CONFIG_SUSPEND
-void v7_cpu_resume(void);
 void imx53_suspend(void __iomem *ocram_vbase);
 extern const u32 imx53_suspend_sz;
 void imx6_suspend(void __iomem *ocram_vbase);
 #else
-static inline void v7_cpu_resume(void) {}
 static inline void imx53_suspend(void __iomem *ocram_vbase) {}
 static const u32 imx53_suspend_sz;
 static inline void imx6_suspend(void __iomem *ocram_vbase) {}
 #endif
 
+void v7_cpu_resume(void);
+
 void imx6_pm_ccm_init(const char *ccm_compat);
 void imx6q_pm_init(void);
 void imx6dl_pm_init(void);
diff --git a/arch/arm/mach-imx/resume-imx6.S b/arch/arm/mach-imx/resume-imx6.S
new file mode 100644
index 000000000000..5bd1ba7ef15b
--- /dev/null
+++ b/arch/arm/mach-imx/resume-imx6.S
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright 2014 Freescale Semiconductor, Inc.
+ */
+
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+#include <asm/asm-offsets.h>
+#include <asm/hardware/cache-l2x0.h>
+#include "hardware.h"
+
+/*
+ * The following code must assume it is running from physical address
+ * where absolute virtual addresses to the data section have to be
+ * turned into relative ones.
+ */
+
+ENTRY(v7_cpu_resume)
+	bl	v7_invalidate_l1
+#ifdef CONFIG_CACHE_L2X0
+	bl	l2c310_early_resume
+#endif
+	b	cpu_resume
+ENDPROC(v7_cpu_resume)
diff --git a/arch/arm/mach-imx/suspend-imx6.S b/arch/arm/mach-imx/suspend-imx6.S
index 062391ff13da..1eabf2d2834b 100644
--- a/arch/arm/mach-imx/suspend-imx6.S
+++ b/arch/arm/mach-imx/suspend-imx6.S
@@ -327,17 +327,3 @@ resume:
 
 	ret	lr
 ENDPROC(imx6_suspend)
-
-/*
- * The following code must assume it is running from physical address
- * where absolute virtual addresses to the data section have to be
- * turned into relative ones.
- */
-
-ENTRY(v7_cpu_resume)
-	bl	v7_invalidate_l1
-#ifdef CONFIG_CACHE_L2X0
-	bl	l2c310_early_resume
-#endif
-	b	cpu_resume
-ENDPROC(v7_cpu_resume)
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
