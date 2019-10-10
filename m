Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 805FED322F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:39:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tchGaDar5AKrYBrY0eTD46GOsxtxxzbrtxxUUdTXUMU=; b=DQBOHV7PAYNYgI
	QpTR6Zz+ErwQn20R4KkI+I5G2KJvLglD6gL1AXuw72i2bv+46WEZsKLYRyDGAruKlgvFu++PdUnzP
	CeLeaegu1HAUqEEMFh3NKEcIqXzqngRybUKDDtfWSErDvKFyplqgUfuwiphLKOFo2Rk0FFdyjC3v8
	YRbyZ2ZHHVwrXeZkgUqV93vjqCqwzDWkR3ZS+sCw9e9Cow/SqlQMAl01qLZNqFIuxrPwz7+03LIdn
	nhfIIzC+KXuqzMXhB+Sb4we+aSGEl/xq9CSB/wa4a36ZP+P3q1hpCd/k/LxQwMNbwF2+hATIRJcNj
	FyK9LBMIPKm+JxSKdRkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfDy-0007U9-8a; Thu, 10 Oct 2019 20:39:50 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfDn-0007TR-DI
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:39:41 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MEUaQ-1iKKzT1KnK-00FzQO; Thu, 10 Oct 2019 22:39:37 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>
Subject: [PATCH 13/36] ARM: s3c: move regs-spi.h into spi driver
Date: Thu, 10 Oct 2019 22:29:57 +0200
Message-Id: <20191010203043.1241612-13-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:3w1t9KxRpboazCGFbUHHyRTgq8anB+CB4R77jmnunv3b/xUCHB4
 q6DgNwffa+vbuyjv196/F+Tm4Xg7oOWOO704mQ9rv1LSA39GWM20GfooqrVAYwAuO4hxESt
 DnhdUneq160nDqisp9FQkSUE4x8mw9aJZUv/WkZ2HjFJp47SwG33/0dfw5rF5NMZnlAERre
 lLAQaHwWHBUzD2nFdeb+w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:D2Xpu3hJhjQ=:UlYrBdqu61lE6ufO+d561Q
 Bfw1XUpkKtAj070fPyGOPGjL7n7thPkZvxlq6FJqHfGBuMWhNQtVlNK3qQCxx7TIJpxXGBO55
 S2tSfftKBXA1zvPo9DVrSkPn14yvUwhRNoMJHVhmf1dNTyiYMYBPK8YIu2JgDVKbE6ueZRFyP
 CwNwZXKQb4SgL8zCdYvI2KdOV5FdySqN0yhnDhzwKkVPwOzpzyh3BG36SfQ5HDDhdOneDmK7b
 LHe3+SbLc/mHgIE5Gncs+lYo98vEQJ04siZUWGEyqKNT6am1gI5xHZYMo/vdgaCwhGj8hceQI
 0StPryl7h1jIKdThg3Pj2XiDEdzhdM+1vAivgH2i6aDk7+v+petjoJfLjTIfLupqjUE5BeSU5
 jroS8Pu/PuUyzqHGYtfCLw6/Gd7X3AkSpgBX0EQX2qSGW4dgYFfRmqj8LIbNb6WPo1gxS5IFn
 D4jXIyXnrTRYnOv1j466yYllfqSQI/PDaOUXrZfd4Fmmzr9ACHb6ufFNT8ZK7zJ8fVFpliHR4
 bDy8ACybE/Xy77m5qD03tsZQ0ow+oYUtvLZI5FxC+7Z07LwDR291mk5MOczTNtaP9laPz7xF/
 xI1WcX7OJLa52/KgWZKTwireyfx73pbanE43U6sJ7mNgLwCS79xQysGOylpMoUGOC6FZPi4Qt
 O/F/Rue9E4yI5q1nn97/HVXh20N/LBU4xVXHavk0J8mwmpD/UedJkT3MvV2nxwjATmI1tlu3w
 3dt2fUlJP1wsblfsMHy8Yt4BPMG2Zb29XzZ3C1gAsEVVMOGGhfdo+BvcWofCSDocCn2Q162Z/
 ijP/Ek03rpUSCYREBVJ3vU8Jm7E1a7EQsqeYKVMp8KH/dTm0Je+BDd/amA3vTRFE5GlhsIA7x
 I1a+2suH/zaEx0hJqmfg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_133939_739737_E4E88B6A 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The file is mostly specific to the driver, the few bits that
are actually used by the platform code get moved to mach/map.h
instead.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-s3c24xx/include/mach/map.h                      | 2 ++
 arch/arm/mach-s3c24xx/s3c2412.c                               | 1 -
 arch/arm/plat-samsung/devs.c                                  | 1 -
 drivers/spi/spi-s3c24xx-fiq.S                                 | 4 +++-
 .../include/plat/regs-spi.h => drivers/spi/spi-s3c24xx-regs.h | 3 ---
 drivers/spi/spi-s3c24xx.c                                     | 3 +--
 6 files changed, 6 insertions(+), 8 deletions(-)
 rename arch/arm/plat-samsung/include/plat/regs-spi.h => drivers/spi/spi-s3c24xx-regs.h (95%)

diff --git a/arch/arm/mach-s3c24xx/include/mach/map.h b/arch/arm/mach-s3c24xx/include/mach/map.h
index bca93112f57d..a20c9fd0d855 100644
--- a/arch/arm/mach-s3c24xx/include/mach/map.h
+++ b/arch/arm/mach-s3c24xx/include/mach/map.h
@@ -86,6 +86,8 @@
 #define S3C2410_PA_SPI	   (0x59000000)
 #define S3C2443_PA_SPI0		(0x52000000)
 #define S3C2443_PA_SPI1		S3C2410_PA_SPI
+#define S3C2410_SPI1		(0x20)
+#define S3C2412_SPI1		(0x100)
 
 /* SDI */
 #define S3C2410_PA_SDI	   (0x5A000000)
diff --git a/arch/arm/mach-s3c24xx/s3c2412.c b/arch/arm/mach-s3c24xx/s3c2412.c
index 8fe4d4670dcb..c3fb3e6c0dd8 100644
--- a/arch/arm/mach-s3c24xx/s3c2412.c
+++ b/arch/arm/mach-s3c24xx/s3c2412.c
@@ -37,7 +37,6 @@
 #include <plat/cpu-freq.h>
 #include <plat/devs.h>
 #include <plat/pm.h>
-#include <plat/regs-spi.h>
 
 #include "common.h"
 #include "nand-core.h"
diff --git a/arch/arm/plat-samsung/devs.c b/arch/arm/plat-samsung/devs.c
index 6e4c1cb07104..fd94a35e22f8 100644
--- a/arch/arm/plat-samsung/devs.c
+++ b/arch/arm/plat-samsung/devs.c
@@ -59,7 +59,6 @@
 #include <linux/platform_data/usb-s3c2410_udc.h>
 #include <linux/platform_data/usb-ohci-s3c2410.h>
 #include <plat/usb-phy.h>
-#include <plat/regs-spi.h>
 #include <linux/platform_data/asoc-s3c.h>
 #include <linux/platform_data/spi-s3c64xx.h>
 
diff --git a/drivers/spi/spi-s3c24xx-fiq.S b/drivers/spi/spi-s3c24xx-fiq.S
index e95d6282109e..9d5f8f1e5e81 100644
--- a/drivers/spi/spi-s3c24xx-fiq.S
+++ b/drivers/spi/spi-s3c24xx-fiq.S
@@ -12,10 +12,12 @@
 
 #include <mach/map.h>
 #include <mach/regs-irq.h>
-#include <plat/regs-spi.h>
 
 #include "spi-s3c24xx-fiq.h"
 
+#define S3C2410_SPTDAT           (0x10)
+#define S3C2410_SPRDAT           (0x14)
+
 	.text
 
 	@ entry to these routines is as follows, with the register names
diff --git a/arch/arm/plat-samsung/include/plat/regs-spi.h b/drivers/spi/spi-s3c24xx-regs.h
similarity index 95%
rename from arch/arm/plat-samsung/include/plat/regs-spi.h
rename to drivers/spi/spi-s3c24xx-regs.h
index 607844311566..37b93ff7c7fe 100644
--- a/arch/arm/plat-samsung/include/plat/regs-spi.h
+++ b/drivers/spi/spi-s3c24xx-regs.h
@@ -8,9 +8,6 @@
 #ifndef __ASM_ARCH_REGS_SPI_H
 #define __ASM_ARCH_REGS_SPI_H
 
-#define S3C2410_SPI1		(0x20)
-#define S3C2412_SPI1		(0x100)
-
 #define S3C2410_SPCON		(0x00)
 
 #define S3C2410_SPCON_SMOD_DMA	(2 << 5)	/* DMA mode */
diff --git a/drivers/spi/spi-s3c24xx.c b/drivers/spi/spi-s3c24xx.c
index 2d6e37f25e2d..2f395e4861f6 100644
--- a/drivers/spi/spi-s3c24xx.c
+++ b/drivers/spi/spi-s3c24xx.c
@@ -21,10 +21,9 @@
 #include <linux/spi/s3c24xx.h>
 #include <linux/module.h>
 
-#include <plat/regs-spi.h>
-
 #include <asm/fiq.h>
 
+#include "spi-s3c24xx-regs.h"
 #include "spi-s3c24xx-fiq.h"
 
 /**
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
