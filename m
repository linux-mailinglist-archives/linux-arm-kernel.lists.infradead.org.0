Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE01D3229
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:36:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cjfsYjAEeyEHbAB71xA1qyUAjgJUzzSqZCCW21RUuK0=; b=fzmPCGjqEFNPjG
	oghTA8XCtwEM9Ol4I5AT9fcqfC/wtURN0s/H+/ZLmqdIGV6BJFSSrgem3eecVncvSnocELoJO2q+d
	cLeG2vndZKoT5P7w5WpuJecYUozTNVHYHXlnV/TurGZzMBK+xY2LCgQBUL/0qjW+K4f3wKlE4LHE4
	TTsZ7miPkWKJXgM9GTrM31DyLEaZbOUtQDFH4I/C5+Vb7YSDhIGahtzi1dlMWckXmP3GU7N2lQcQA
	NDwenIWrvAupNtYsD0h1OWd8mgKrX6zDo6kuaNiO9uWy/eOSFw4ILPjS5RgNydb/yRpEXXslHNBq8
	EhZ4H5l52fw2Djw8FMMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfAw-00066b-Ez; Thu, 10 Oct 2019 20:36:42 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfAe-0005nJ-Cu
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:36:28 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MYLqs-1ieCBJ1q2k-00VSwa; Thu, 10 Oct 2019 22:36:15 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>
Subject: [PATCH 10/36] ARM: s5pv210: use private pm save/restore
Date: Thu, 10 Oct 2019 22:29:54 +0200
Message-Id: <20191010203043.1241612-10-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:t06pj45vMcSDoEbxSCss3f5CI4Q0mCvmon4HXQKdFVgc3CZE2SZ
 6GDEv57UdL2pMT9oYaML5s6k6H4an0hD0vSPqL1TK9QhIqAiZ3JXJGQRYiLA10kdPybEDLM
 LkmdsIkBh+fEfuZ4qKsBYg1p1Ya6B3jCBopYbIsgcd7xLrXfT9D/yReO3ELSeGlzG11eU+v
 IdbSm0rP+MzyF0ya7wCxQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:XV+MPK70w7E=:BhQ4bhqXydFKuIa+TPbyId
 A5KmTH4/XxVCeHb+3+T5c/+c9wqtBBLomtafNUtbfL7geLlXVDKW10N4L6+AuH1WBjanj7LvJ
 dUFJ4oNaE75ImwWCooDU1IX6BtFBbqMzAypBLcYxMKc7pEA7se7MiEXiGET8BD7NWCYy+Gm4v
 xo32t0jwcI1xZ2hc4rrG7kLEvVfDZ2YUZsJI8Ad4oolmeZVJy//p5Cv5VLW6KYTXCG2TrDC67
 LoQVDf0jAV616OOAAF+jKJIsMqu6Cq2rlSVykk2ZZbKHmByhbdRjqPiUhVpY+ffdMkC7yHUgx
 YLgRrU20ShewwEukIpbl+B7KfZ0zmaawX8Z9CdSYrRKnru5ohJTg3S4SxjyE2WnxZGOBRtFot
 p6i+CXENZsa4rgfp6x9GEoNZj4Rof+xn0WxjqpNP7dNHQECpVls3CHZj7rzGc8TIPzzSqq+1I
 xVHhIuSLdGsq8xL6n8JaiwDD6yqNVPhfeFiSF0SA9MyJulhLZF6n0cQ3zCSauqUSDR7w8XIzf
 O+QLobMdBq81IEEue1nmPN8WlMjIgCZxSjj1H7V2a1hBItJcRp5uCwDjv1vhqM/Yvbj1qkKEt
 lwPpFZ7VPrCtQYmHXOiSDZVRplbPgeD8reNkF4ylUttAds+sCpXi7XwkW/amkRCCjLH5K3bsw
 iksEKWMxTuKZznLo8ThpwcjNdmN6ylK+eBLvmzhHhiW50uLoKZ4wk3YHFRG5ZZyiVoTN++Hji
 IxFdNsp/402JjDicaaBR3WlWnjX586w7YTzQ1x9LvCYrPuIJ8TclTw1NYrMFqu9I8qwXxzJBn
 S3rdkwTgwAzhDmBBaDAvDU72X8nw5Z3tHJ4YIHgDtsFRGEnslYRbRuv+aPzqpybQqwnBOsODv
 44eaAD7nyQxBDF6tZyig==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_133624_746424_11D63CA6 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 Tomasz Figa <tomasz.figa@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pm save/restore code is fairly small, so in order to
separate the s3c and s5p platforms, adding an s5p specific
copy instead of sharing it is actually easier.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-s5pv210/Makefile     |  7 -----
 arch/arm/mach-s5pv210/pm.c         | 45 ++++++++++++++++++++++++++++--
 arch/arm/mach-s5pv210/regs-clock.h |  2 +-
 arch/arm/mach-s5pv210/s5pv210.c    |  2 --
 arch/arm/plat-samsung/Makefile     |  4 +--
 5 files changed, 45 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-s5pv210/Makefile b/arch/arm/mach-s5pv210/Makefile
index e7b551e18e5c..aa0a1f091daf 100644
--- a/arch/arm/mach-s5pv210/Makefile
+++ b/arch/arm/mach-s5pv210/Makefile
@@ -3,12 +3,5 @@
 # Copyright (c) 2010 Samsung Electronics Co., Ltd.
 # 		http://www.samsung.com/
 
-ccflags-$(CONFIG_ARCH_MULTIPLATFORM) += -I$(srctree)/arch/arm/plat-samsung/include
-
-# Core
-
 obj-$(CONFIG_PM_SLEEP)		+= pm.o sleep.o
-
-# machine support
-
 obj-y				+= s5pv210.o
diff --git a/arch/arm/mach-s5pv210/pm.c b/arch/arm/mach-s5pv210/pm.c
index efdb5a27c060..d59c094cdea8 100644
--- a/arch/arm/mach-s5pv210/pm.c
+++ b/arch/arm/mach-s5pv210/pm.c
@@ -13,15 +13,56 @@
 #include <linux/suspend.h>
 #include <linux/syscore_ops.h>
 #include <linux/io.h>
+#include <linux/soc/samsung/s3c-pm.h>
 
 #include <asm/cacheflush.h>
 #include <asm/suspend.h>
 
-#include <plat/pm-common.h>
-
 #include "common.h"
 #include "regs-clock.h"
 
+/* helper functions to save and restore register state */
+struct sleep_save {
+	void __iomem	*reg;
+	unsigned long	val;
+};
+
+#define SAVE_ITEM(x) \
+	{ .reg = (x) }
+
+/**
+ * s3c_pm_do_save() - save a set of registers for restoration on resume.
+ * @ptr: Pointer to an array of registers.
+ * @count: Size of the ptr array.
+ *
+ * Run through the list of registers given, saving their contents in the
+ * array for later restoration when we wakeup.
+ */
+static void s3c_pm_do_save(struct sleep_save *ptr, int count)
+{
+	for (; count > 0; count--, ptr++) {
+		ptr->val = readl_relaxed(ptr->reg);
+		S3C_PMDBG("saved %p value %08lx\n", ptr->reg, ptr->val);
+	}
+}
+
+/**
+ * s3c_pm_do_restore() - restore register values from the save list.
+ * @ptr: Pointer to an array of registers.
+ * @count: Size of the ptr array.
+ *
+ * Restore the register values saved from s3c_pm_do_save().
+ *
+ * WARNING: Do not put any debug in here that may effect memory or use
+ * peripherals, as things may be changing!
+*/
+
+static void s3c_pm_do_restore_core(const struct sleep_save *ptr, int count)
+{
+	for (; count > 0; count--, ptr++)
+		writel_relaxed(ptr->val, ptr->reg);
+}
+
 static struct sleep_save s5pv210_core_save[] = {
 	/* Clock ETC */
 	SAVE_ITEM(S5P_MDNIE_SEL),
diff --git a/arch/arm/mach-s5pv210/regs-clock.h b/arch/arm/mach-s5pv210/regs-clock.h
index 2a35c831a9b0..8c7530614e37 100644
--- a/arch/arm/mach-s5pv210/regs-clock.h
+++ b/arch/arm/mach-s5pv210/regs-clock.h
@@ -9,7 +9,7 @@
 #ifndef __ASM_ARCH_REGS_CLOCK_H
 #define __ASM_ARCH_REGS_CLOCK_H __FILE__
 
-#include <plat/map-base.h>
+#define S3C_VA_SYS		((void __iomem __force *)0xF6100000)
 
 #define S5P_CLKREG(x)		(S3C_VA_SYS + (x))
 
diff --git a/arch/arm/mach-s5pv210/s5pv210.c b/arch/arm/mach-s5pv210/s5pv210.c
index 868f9c20419d..a21ed3bb992a 100644
--- a/arch/arm/mach-s5pv210/s5pv210.c
+++ b/arch/arm/mach-s5pv210/s5pv210.c
@@ -13,8 +13,6 @@
 #include <asm/mach/map.h>
 #include <asm/system_misc.h>
 
-#include <plat/map-base.h>
-
 #include "common.h"
 #include "regs-clock.h"
 
diff --git a/arch/arm/plat-samsung/Makefile b/arch/arm/plat-samsung/Makefile
index d88b9b84f3a9..025ce22876c1 100644
--- a/arch/arm/plat-samsung/Makefile
+++ b/arch/arm/plat-samsung/Makefile
@@ -24,9 +24,7 @@ obj-$(CONFIG_GPIO_SAMSUNG)     += gpio-samsung.o
 
 # PM support
 
-obj-$(CONFIG_PM_SLEEP)		+= pm-common.o
-obj-$(CONFIG_EXYNOS_CPU_SUSPEND) += pm-common.o
-obj-$(CONFIG_SAMSUNG_PM)	+= pm.o
+obj-$(CONFIG_SAMSUNG_PM)	+= pm.o pm-common.o
 obj-$(CONFIG_SAMSUNG_PM_GPIO)	+= pm-gpio.o
 
 obj-$(CONFIG_SAMSUNG_WAKEMASK)	+= wakeup-mask.o
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
