Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD7DD32D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mllW56cfcgBIRtXLXVXsnvP6Hl7eHVOOKeJofenIFwI=; b=sWQCh+/CR2rrvp
	5tr6SOSbt9ZpsL8ZCE8K8rk9YgIqTDhc1HxE7oIdx0xIJE+/0DQ3lJKeemvuD5NXzYiIoc0AXrAHj
	SI3Eh+ZPIYgLrqs+v1pZDv2rR/fAWpnCcgtyUIcjv3fHodPbVjfwP77INI31IzNBjJktGSUQX8YPh
	lncQdwOZj/MtDplpp4LYrvaa/eYIlMms2MrV1I2a0Enp7im5zu32vbzFCHcKVb6z271V/NQ7AwdII
	7L9YH75FSfpPR7Jrp1cuSdv0JUHgxxUM6xOl1w19sXDT1ZZH8sjmycWVyWVDnz4lHWS4bh7VsnQrL
	TsLjCjTb1EV/Lk+NmdDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfMf-0005e9-NG; Thu, 10 Oct 2019 20:48:49 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfMX-0005df-Vp
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:48:43 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MTfgb-1ifaUZ33Ur-00U5u3; Thu, 10 Oct 2019 22:48:34 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH 24/36] ARM: s3c: include mach/irqs.h where needed
Date: Thu, 10 Oct 2019 22:30:08 +0200
Message-Id: <20191010203043.1241612-24-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:mxR2atMIkFLn1IgJFwrmFpipyrqnk7641DccCJyjICtC4J7j5YR
 9EAWFeoHeBXLUfhhhmvgttKCxljJ1ys2sQ/cCilSl03dwLrvgwxuIv3Tn5d3RVHQ5nPsfWT
 7MJ/qMgYYvU+7VhT2As0ZvQBR/EoIkJP7+4lawhMfXBrDNlqi0LMDyfzWD/m/sekrGpwW1j
 QfuwcSrnJpeH014Y8jFAg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Z61gxMjaFVs=:Ih3uXFePxNcmJWJvunNRK+
 a42+5Emq9WsBlyCKcwMEIv11ikzptUKw4hOu5fy2eKjYFbAMpbi4fwf6xj09eu0vA1btJainS
 SrYfAPCG8WEWT4Wc570ENO4HD90TYXP/N8QxnGBxz6W6I/3kOdqUVwYILzPGXlwi2gSPiXAwV
 k2ADuuG+gihtNHztSjDrL9LCviLd6gB4chSZnOni7uRd2tWNyZQy3zQhvw8zojzli/i8Aj2j5
 8Eieqryg2oXn7d8Xns1DXcz4sJgJbyuYLhZL1Nhc1FDjMfXu7KDnilQbM48YpvFCO1O7IXzfb
 V9GjsePa4oXqxrpaDq3Kh72WUsDtVR5s7f+GcTcp22zvoAIBHHWOSRZmw2GWNe/YHJXr+9MVu
 8p8GGywKQuNDCz/buIFiRvuA/O4KETGSPsqLyk7YGzQ2SxAK6R3ZHu+/C+9HdryTJyhhr0Sjx
 k0M4NgTxZpqGOCbbANBGbUAVMQi8yrx4IpEuJuEL3c1obC28/BGwZrtsp9whpxkKLtdi/KyTH
 wHj4x1g87s43AAzEJouRQuoTO8LFspykPuz87PQPVDcnNtpb3hhj3Ecrc+qnQAMrSiqeDrwVH
 zV/a2TvN4zP7bgKoDR3EqUB2Wosl3m9UjLPae3ZYIrs46V5OpriIBCJuMxqEjMxbJHlKnXZJ+
 IPBGoMZV+HOdQOUynXx0ZQLP9SWlay5GKFPOSz16SLrdt64gN101rs3euTyDiTi8DpI8oOqz6
 DkUkqPGIQ1OJXO9sAEkGJXoTXfB1JfUInfzMTqslQDEBT5Wgc10njpsCMGC1qFq82YJCQOWDE
 3gSrhRFy2QnjnhvQJGRn21flQXQ/+1RlVYKo/F5OEW5TnLJCFZSaAulG/4aQbA1OvGfEwQ39P
 hP1/CjFjJ20Fe7d9iNkA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_134842_314506_7E892B0A 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Preparing for a later conversion to sparse IRQs, this ensures that
the mach/irqs.h header is still visible in files that reference
an IRQ number.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-s3c24xx/bast-ide.c    | 1 +
 arch/arm/mach-s3c24xx/bast-irq.c    | 1 +
 arch/arm/mach-s3c24xx/common.h      | 1 +
 arch/arm/mach-s3c24xx/irq-s3c24xx.c | 1 +
 arch/arm/mach-s3c24xx/pm-s3c2412.c  | 2 ++
 arch/arm/mach-s3c24xx/s3c2443.c     | 1 +
 arch/arm/mach-s3c24xx/simtec-usb.c  | 1 +
 7 files changed, 8 insertions(+)

diff --git a/arch/arm/mach-s3c24xx/bast-ide.c b/arch/arm/mach-s3c24xx/bast-ide.c
index 067944398f46..ee6fbb407640 100644
--- a/arch/arm/mach-s3c24xx/bast-ide.c
+++ b/arch/arm/mach-s3c24xx/bast-ide.c
@@ -20,6 +20,7 @@
 #include <asm/mach/irq.h>
 
 #include <mach/map.h>
+#include <mach/irqs.h>
 
 #include "bast.h"
 
diff --git a/arch/arm/mach-s3c24xx/bast-irq.c b/arch/arm/mach-s3c24xx/bast-irq.c
index 03728058d58d..4cec084ae443 100644
--- a/arch/arm/mach-s3c24xx/bast-irq.c
+++ b/arch/arm/mach-s3c24xx/bast-irq.c
@@ -17,6 +17,7 @@
 
 #include <mach/hardware.h>
 #include <mach/regs-irq.h>
+#include <mach/irqs.h>
 
 #include "bast.h"
 
diff --git a/arch/arm/mach-s3c24xx/common.h b/arch/arm/mach-s3c24xx/common.h
index d087b20e8857..97eb72f1d8bf 100644
--- a/arch/arm/mach-s3c24xx/common.h
+++ b/arch/arm/mach-s3c24xx/common.h
@@ -10,6 +10,7 @@
 #define __ARCH_ARM_MACH_S3C24XX_COMMON_H __FILE__
 
 #include <linux/reboot.h>
+#include <mach/irqs.h>
 
 struct s3c2410_uartcfg;
 
diff --git a/arch/arm/mach-s3c24xx/irq-s3c24xx.c b/arch/arm/mach-s3c24xx/irq-s3c24xx.c
index d2031fecc386..b0e879ee14c1 100644
--- a/arch/arm/mach-s3c24xx/irq-s3c24xx.c
+++ b/arch/arm/mach-s3c24xx/irq-s3c24xx.c
@@ -25,6 +25,7 @@
 #include <asm/exception.h>
 #include <asm/mach/irq.h>
 
+#include <mach/irqs.h>
 #include <mach/regs-irq.h>
 #include <mach/regs-gpio.h>
 
diff --git a/arch/arm/mach-s3c24xx/pm-s3c2412.c b/arch/arm/mach-s3c24xx/pm-s3c2412.c
index 2dfdaab0aa1f..1ad9c61f9253 100644
--- a/arch/arm/mach-s3c24xx/pm-s3c2412.c
+++ b/arch/arm/mach-s3c24xx/pm-s3c2412.c
@@ -20,6 +20,8 @@
 #include <asm/irq.h>
 
 #include <mach/hardware.h>
+#include <mach/irqs.h>
+
 #include <mach/regs-gpio.h>
 
 #include <plat/cpu.h>
diff --git a/arch/arm/mach-s3c24xx/s3c2443.c b/arch/arm/mach-s3c24xx/s3c2443.c
index 313e369c3ddd..f404ecac4baf 100644
--- a/arch/arm/mach-s3c24xx/s3c2443.c
+++ b/arch/arm/mach-s3c24xx/s3c2443.c
@@ -25,6 +25,7 @@
 
 #include <mach/hardware.h>
 #include <mach/gpio-samsung.h>
+#include <mach/irqs.h>
 #include <asm/irq.h>
 #include <asm/system_misc.h>
 
diff --git a/arch/arm/mach-s3c24xx/simtec-usb.c b/arch/arm/mach-s3c24xx/simtec-usb.c
index dc1016ffed94..b15e0c49fa11 100644
--- a/arch/arm/mach-s3c24xx/simtec-usb.c
+++ b/arch/arm/mach-s3c24xx/simtec-usb.c
@@ -25,6 +25,7 @@
 
 #include <mach/hardware.h>
 #include <mach/gpio-samsung.h>
+#include <mach/irqs.h>
 #include <asm/irq.h>
 
 #include <linux/platform_data/usb-ohci-s3c2410.h>
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
