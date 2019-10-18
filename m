Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7AEDC9C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9hihDEqhUjbUXzS/8jlXpTUElQNt0IonUo/tPdwqFU4=; b=uYaE1n8SDXwtd6
	cgoDrF+ErmzgN4B5mmD6UsYPLB9C85dqBZWjElqJy1Pn5kSfWCRhyL1AdomGyyzTLZwJKHgyEXeSH
	JWt1/dqy48vLNtsVaOU7gVctHLctNVVZbxzCs06sSmSO9TvTAUP30w56IV5dZ2fJ8osXAZjVIgiWK
	/Oc5C8/7OWLdOTuVLZM7acHpdFCJRq0enhy2VFqkphQ/GkQPJCAT0iGTlziCGJIQkAjNQ97f9Zrsh
	sDt+43oBtIhUId5WewcwoX73JUIUQt3bWMDTRBnnIZ9a6rd/h2sh7sl6BlC7X50sN98ceKU7HIQy2
	zqa7OVVQe1EoCMBD2m5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUXi-0001hB-C6; Fri, 18 Oct 2019 15:51:54 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOq-0008FH-80
 for linux-arm-kernel@bombadil.infradead.org; Fri, 18 Oct 2019 15:42:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EQGVIb/RvpQ/c2kf4YkjtFE7dwPd9+4QmxanzMIJwaM=; b=Wlu5FwwKjcEUEyop6jM3IDd11w
 T4yN/tOkNedU0vZhXBZq3jKwGIJk8mUYxIRuw1yphYWONxMXdfVTqvvf2uB/iW8jfgn0GFj6GqjXP
 WZ6CRTF/4mAwXyD53OOn+KF5Uyt/H6fWD/39YqBEyHruL4XIbcuKhwHi7iEy8fff7CtRTx4kzROFF
 fxmwivPtxc6BciF6j+ZAHGt8NyzsALhSR9NAuAu4ry/pAJkjKsdjGq0Tm+FiK16w4kZ1ldcnlXRTE
 27vEsMYkvxHcz8/zq83QEMk71pJJRYH7yhabteDBDx2b1viw6xBzpJqmXXOHz1h3VoXkhATt4883E
 2Ur7zEMw==;
Received: from mout.kundenserver.de ([217.72.192.75])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOn-0007Xq-CM
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:42 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MkHIV-1hauA82NxJ-00kdl6; Fri, 18 Oct 2019 17:42:37 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 46/46] ARM: pxa: move plat-pxa to drivers/soc/
Date: Fri, 18 Oct 2019 17:42:01 +0200
Message-Id: <20191018154201.1276638-46-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:5XjJp8O801ykBXpbjofn9E4JPl6NL5NXrww4uVIvlM6v3Cs6+kK
 Bnuw8vNHe0lhUDgGxZGtv0hg7YNnU/AHVCmtPo1JUflEMdaHwyWa6pIWP95rFyctkjmnXPD
 4vZmwEVgTX0X1RD4h3o/zQgmZ8CZJEuR7tmtn5uCJJJfccJZpeb+6JBl0iHWR+rOYeQZ0lW
 wo8IP7X+AI/IB0k4JrdlA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xvo3kzI1RzU=:/3JEdZilOOjFWOPN5qMSPI
 GFfdNGNVGpdBDSUHhWuTLkVRVNB704uSndAGNN3Ipw4VCZ934NHFPQfSSwWSsP9Q/eWG1ocMo
 WVa8R76GRhs75DsO0xhSVNjhs5Prcl8RkVmKGSf2MfD94/ew8tUVP1ZXqS5E2h6jsBG+kUkem
 Jez9/dsPSp+29bYAXRDMbozDrlZi14OkB5VUF3WbOJksI/0dA2RHv+JFS9ZQpcVDmI4vItrSK
 tQVfrj/9DOOHnSJMCJujSROog/b7Y+6/EtQw2T+w2BCqx9Q1G/qkgt/qzCR6ukJ7/ZmQr8WH6
 3JDVRbrI2su7ac1Y792wLQMJSq08YLF5umyBYH5xpeVU2FrNnZVDz7H/2VdwGjYmoEC/AwaUk
 7cYAWkHJtMjSNLSEsDpeEeasEwU0A+F9ItjRkTEDn5EO05giEfKw6WY8wG6xnMok5YxunPVYu
 gv7ydkEQqOu1nXEL8N8B1vn4DTSig+bnQmUODj0n4gUOwUWbf94u7NyLUtw7hCv08ECmSzl/o
 dRDpodABHj9c3nhU2vgUrDhJyM10MTzcAKE+ThaAAgJb2E/jq0B3n0H+ZiJT9/l3rpvkbn/By
 bEnNGdWjpCJ08q8VN6eJ9yK7037WIArhuehZskh7vnMtQW4mIxkwX4VrcX+LzPcDYdZCqPYzz
 sEV2z0LRTu0hbfOqKn9jF1j2CIdqy5GWjxFPC+laCfmKY2/c9KvOhEWuotMgqobNkNeGypuUa
 /Z3IWXr88iOEqCMTOJFM+S28dKRghfU9kyE7PAfIo/BJaU+c02BaiEvRjKWB9KTIULAibtHHe
 5YJsT0Xu4jw8xIncbcY5CbiWtEafKqikZmJ6VZImg/ZdhYtrdjErKmN7VF2ejAZwPA9l2OMnj
 kfOMZbdP7jBNJHHawLng==
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Lubomir Rintel <lkundrak@v3.sk>, Linus Walleij <linus.walleij@linaro.org>,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are two drivers in arch/arm/plat-pxa: mfp and ssp. Both
of them should ideally not be needed at all, as there are
proper subsystems to replace them.

OTOH, they are self-contained and can simply be normal
SoC drivers, so move them over there to eliminate one more
of the plat-* directories.

Cc: Lubomir Rintel <lkundrak@v3.sk>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/Kconfig                                            | 3 ---
 arch/arm/Makefile                                           | 1 -
 arch/arm/mach-mmp/mfp.h                                     | 2 +-
 arch/arm/mach-pxa/include/mach/mfp.h                        | 2 +-
 arch/arm/mach-pxa/mfp-pxa2xx.h                              | 2 +-
 arch/arm/mach-pxa/mfp-pxa3xx.h                              | 2 +-
 drivers/soc/Kconfig                                         | 1 +
 drivers/soc/Makefile                                        | 1 +
 {arch/arm/plat-pxa => drivers/soc/pxa}/Kconfig              | 5 ++---
 {arch/arm/plat-pxa => drivers/soc/pxa}/Makefile             | 4 ----
 {arch/arm/plat-pxa => drivers/soc/pxa}/mfp.c                | 2 +-
 {arch/arm/plat-pxa => drivers/soc/pxa}/ssp.c                | 0
 .../plat-pxa/include/plat => include/linux/soc/pxa}/mfp.h   | 6 ++----
 13 files changed, 11 insertions(+), 20 deletions(-)
 rename {arch/arm/plat-pxa => drivers/soc/pxa}/Kconfig (83%)
 rename {arch/arm/plat-pxa => drivers/soc/pxa}/Makefile (51%)
 rename {arch/arm/plat-pxa => drivers/soc/pxa}/mfp.c (99%)
 rename {arch/arm/plat-pxa => drivers/soc/pxa}/ssp.c (100%)
 rename {arch/arm/plat-pxa/include/plat => include/linux/soc/pxa}/mfp.h (98%)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index b01f762abbda..330a1685101a 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -796,9 +796,6 @@ config PLAT_ORION_LEGACY
 	bool
 	select PLAT_ORION
 
-config PLAT_PXA
-	bool
-
 config PLAT_VERSATILE
 	bool
 
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index db857d07114f..09622c26a8a4 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -238,7 +238,6 @@ plat-$(CONFIG_ARCH_OMAP)	+= omap
 plat-$(CONFIG_ARCH_S3C64XX)	+= samsung
 plat-$(CONFIG_ARCH_S5PV210)	+= samsung
 plat-$(CONFIG_PLAT_ORION)	+= orion
-plat-$(CONFIG_PLAT_PXA)		+= pxa
 plat-$(CONFIG_PLAT_S3C24XX)	+= samsung
 plat-$(CONFIG_PLAT_VERSATILE)	+= versatile
 
diff --git a/arch/arm/mach-mmp/mfp.h b/arch/arm/mach-mmp/mfp.h
index 75a4acb33b1b..6f3057987756 100644
--- a/arch/arm/mach-mmp/mfp.h
+++ b/arch/arm/mach-mmp/mfp.h
@@ -2,7 +2,7 @@
 #ifndef __ASM_MACH_MFP_H
 #define __ASM_MACH_MFP_H
 
-#include <plat/mfp.h>
+#include <linux/soc/pxa/mfp.h>
 
 /*
  * NOTE: the MFPR register bit definitions on PXA168 processor lines are a
diff --git a/arch/arm/mach-pxa/include/mach/mfp.h b/arch/arm/mach-pxa/include/mach/mfp.h
index dbb961fb570e..7e0879bd4102 100644
--- a/arch/arm/mach-pxa/include/mach/mfp.h
+++ b/arch/arm/mach-pxa/include/mach/mfp.h
@@ -13,6 +13,6 @@
 #ifndef __ASM_ARCH_MFP_H
 #define __ASM_ARCH_MFP_H
 
-#include <plat/mfp.h>
+#include <linux/soc/pxa/mfp.h>
 
 #endif /* __ASM_ARCH_MFP_H */
diff --git a/arch/arm/mach-pxa/mfp-pxa2xx.h b/arch/arm/mach-pxa/mfp-pxa2xx.h
index 980145e7ee99..683a3ea5f154 100644
--- a/arch/arm/mach-pxa/mfp-pxa2xx.h
+++ b/arch/arm/mach-pxa/mfp-pxa2xx.h
@@ -2,7 +2,7 @@
 #ifndef __ASM_ARCH_MFP_PXA2XX_H
 #define __ASM_ARCH_MFP_PXA2XX_H
 
-#include <plat/mfp.h>
+#include <linux/soc/pxa/mfp.h>
 
 /*
  * the following MFP_xxx bit definitions in mfp.h are re-used for pxa2xx:
diff --git a/arch/arm/mach-pxa/mfp-pxa3xx.h b/arch/arm/mach-pxa/mfp-pxa3xx.h
index cdd830926d1c..81fec4fa5a0f 100644
--- a/arch/arm/mach-pxa/mfp-pxa3xx.h
+++ b/arch/arm/mach-pxa/mfp-pxa3xx.h
@@ -2,7 +2,7 @@
 #ifndef __ASM_ARCH_MFP_PXA3XX_H
 #define __ASM_ARCH_MFP_PXA3XX_H
 
-#include <plat/mfp.h>
+#include <linux/soc/pxa/mfp.h>
 
 #define MFPR_BASE	(0x40e10000)
 
diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
index 833e04a7835c..fc30a33ada9b 100644
--- a/drivers/soc/Kconfig
+++ b/drivers/soc/Kconfig
@@ -10,6 +10,7 @@ source "drivers/soc/fsl/Kconfig"
 source "drivers/soc/imx/Kconfig"
 source "drivers/soc/ixp4xx/Kconfig"
 source "drivers/soc/mediatek/Kconfig"
+source "drivers/soc/pxa/Kconfig"
 source "drivers/soc/qcom/Kconfig"
 source "drivers/soc/renesas/Kconfig"
 source "drivers/soc/rockchip/Kconfig"
diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index 2ec355003524..2934ad8c5a9f 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -15,6 +15,7 @@ obj-$(CONFIG_ARCH_MXC)		+= imx/
 obj-$(CONFIG_ARCH_IXP4XX)	+= ixp4xx/
 obj-$(CONFIG_SOC_XWAY)		+= lantiq/
 obj-y				+= mediatek/
+obj-y				+= pxa/
 obj-y				+= amlogic/
 obj-y				+= qcom/
 obj-y				+= renesas/
diff --git a/arch/arm/plat-pxa/Kconfig b/drivers/soc/pxa/Kconfig
similarity index 83%
rename from arch/arm/plat-pxa/Kconfig
rename to drivers/soc/pxa/Kconfig
index 6f7a0a39c2b9..c5c265aa4f07 100644
--- a/arch/arm/plat-pxa/Kconfig
+++ b/drivers/soc/pxa/Kconfig
@@ -1,9 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0-only
-if PLAT_PXA
+config PLAT_PXA
+	bool
 
 config PXA_SSP
 	tristate
 	help
 	  Enable support for PXA2xx SSP ports
-
-endif
diff --git a/arch/arm/plat-pxa/Makefile b/drivers/soc/pxa/Makefile
similarity index 51%
rename from arch/arm/plat-pxa/Makefile
rename to drivers/soc/pxa/Makefile
index 349ea0af8450..413deceddbdd 100644
--- a/arch/arm/plat-pxa/Makefile
+++ b/drivers/soc/pxa/Makefile
@@ -1,8 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
-#
-# Makefile for code common across different PXA processor families
-#
-ccflags-$(CONFIG_ARCH_MMP) := -I$(srctree)/$(src)/include
 
 obj-$(CONFIG_PXA3xx)		+= mfp.o
 obj-$(CONFIG_ARCH_MMP)		+= mfp.o
diff --git a/arch/arm/plat-pxa/mfp.c b/drivers/soc/pxa/mfp.c
similarity index 99%
rename from arch/arm/plat-pxa/mfp.c
rename to drivers/soc/pxa/mfp.c
index 17fc4f33f35b..6220ba321cfc 100644
--- a/arch/arm/plat-pxa/mfp.c
+++ b/drivers/soc/pxa/mfp.c
@@ -15,7 +15,7 @@
 #include <linux/init.h>
 #include <linux/io.h>
 
-#include <plat/mfp.h>
+#include <linux/soc/pxa/mfp.h>
 
 #define MFPR_SIZE	(PAGE_SIZE)
 
diff --git a/arch/arm/plat-pxa/ssp.c b/drivers/soc/pxa/ssp.c
similarity index 100%
rename from arch/arm/plat-pxa/ssp.c
rename to drivers/soc/pxa/ssp.c
diff --git a/arch/arm/plat-pxa/include/plat/mfp.h b/include/linux/soc/pxa/mfp.h
similarity index 98%
rename from arch/arm/plat-pxa/include/plat/mfp.h
rename to include/linux/soc/pxa/mfp.h
index 3accaa9ee781..39779cbed0c0 100644
--- a/arch/arm/plat-pxa/include/plat/mfp.h
+++ b/include/linux/soc/pxa/mfp.h
@@ -1,7 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * arch/arm/plat-pxa/include/plat/mfp.h
- *
  *   Common Multi-Function Pin Definitions
  *
  * Copyright (C) 2007 Marvell International Ltd.
@@ -453,8 +451,8 @@ struct mfp_addr_map {
 
 #define MFP_ADDR_END	{ MFP_PIN_INVALID, 0 }
 
-void __init mfp_init_base(void __iomem *mfpr_base);
-void __init mfp_init_addr(struct mfp_addr_map *map);
+void mfp_init_base(void __iomem *mfpr_base);
+void mfp_init_addr(struct mfp_addr_map *map);
 
 /*
  * mfp_{read, write}()	- for direct read/write access to the MFPR register
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
