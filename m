Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C568DDC9FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:57:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nxhaU5p3nWZmfZLusVHR2QkzibRBRy6JhYNxFaa4nU0=; b=t6+o57SZ7MScev
	71evml8k7V64bzf+0ElvIfCzBZqoMDfLzOsaN6c8fmYF2doXljC5v0q9s2BMjLlEYK1SFuV2pg0D0
	9dZ5zU0z/8EQ4Y1GyaUxSgAJP+78DV1yo8r7idxZC2z4sj/qTnHQhMLW5UtoyyfMsAUWJgbbMZFMk
	M5pm4FkJDBpDi2CnJrTogQKGCEGyTm+Uydg/bjWHQ0OnDPAMgIGAksNbOeQiz2j6OMiTyckitcRjx
	47EjKxLlrnlYuCKHffkcrnxgqZLP6m51KpBPlp3Cuk+ipOYHyEvyaXQP6eG/IjOCEK2Xu17gFT1ll
	ItnK/WqBaDclADHBFQpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUcu-0007Pd-B8; Fri, 18 Oct 2019 15:57:16 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUWX-00083r-Ix
 for linux-arm-kernel@bombadil.infradead.org; Fri, 18 Oct 2019 15:50:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bjmbeMqM3Y5R1WTaL2WXIqB7qn5uCkhIw0TnKCab/Eo=; b=gzN1Xe4MZbt0Pzpuai4UZUkhtd
 0SUk5zBmEDV9p8rFIhwSjkTM+YVTG3Zya46XCphSdQ0dUXtgePti2ju3AyoZJMB5v42Xl5TdJtPT5
 Neo3o+n1H8ph32ZfLMqBlBnvNDbi8SaycqvRTbnXEqhxtO2C3pxIVm52ZF/buRx7ijGWX4hPmJWie
 NBRszkwS5zqomtBQkO2KVvTma/JyrwDSt6s4LhmSrROuTL+i2uBDub/KlQHkDFvr/plkABeFhZT1T
 xL+bk9mQ8/Lf6ZJA6mIKKJA+JkdbCXP/DNLmNabwnw12me8UcOw9GPCy3E9ip/SbsejeKtwS8x0cS
 pJvCZXIw==;
Received: from mout.kundenserver.de ([217.72.192.75])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUPB-0002ER-9X
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:43:07 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M2w8Y-1iKNOx0fMK-003MKP; Fri, 18 Oct 2019 17:42:35 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 41/46] ARM: pxa: move it8152 PCI support into machine
Date: Fri, 18 Oct 2019 17:41:56 +0200
Message-Id: <20191018154201.1276638-41-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:qEl9cjQP4jyS4qxefcQzFCM3uP5InkPkvne7KhgjFGqfdepw0ze
 BfBs+1RGSS5OnS+jwtbBaruL9sYCZyzLgpJu+h9MhEryoVQStbfDkr1SIkqCYKVFKm5fjaH
 o6g37RJhoVZz1wpsh5v91LLNGX+9V2dQ+AKKoNXu7RezLWr/xCYZWr6JvyFOCn5eSP+2qlx
 YBlbR1BTWfB3i9M8wkSRA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:np0pVgM23GE=:+pvh0Wx7At+Uwi2OwfrOm0
 SCRf4wYf1CSkawelW6xLjErUh+tdKVU73XOqlWk/nfsjS4w3tKg+pkRnHPx4CE1WnKs5qgfTG
 Ek9jO0I83Iao//9KJ0fQAttuUSj6CuhpcW+M6X2R8JbyRoUgPhqiajc7A7j/31LeC7SrHTYfB
 kDknGSiHNbt1E488AzYoLw5FnNxw2hEC9zbsmJSdNIKFWWuSVapoAIX4WzTmlQHxZmf4j4jEh
 3RDjqPWzUdpCTKhX7eQ9T48bMYAyAkEJAysDEwTvChktx8phGv43FCmZ37O8SiHKCZ3GKzGLL
 7OLhY3cA4jVh6LKPkkhhBvQjN5EngcgMbU8cP4RM7LWCnrfI7dV+OnZt0HEnt5z9BxpT+vWUR
 BLvABQqmOcwlK26DWSpId+wl4e06up6C8guSPnJXbn8NDeyQ3vmyNv+H1MZnUaCg8/3R0quD3
 vP0JmB/wMFzph0V9CHKuIzXX+QltCA7Z+3glncaqVj7VdeY5MHebHgfDZk7yWOUTu51ViLOcf
 m4oPkn/CtNl9QN00tWoyNSCsg8IAEa7dsrSgE6rbsYT34MM03ljFpxypUIpp4TtLg4EcVYdWL
 8pE7JxurRi/g1DsXCaMs3PENx6gjCUSZn3XZb3unXdQl/R8TBjG7ZQcOBcN0BaUM5dStC/xQB
 ddvHeXeMvT6APL4YFOcq3eyB5vhgAL7jflpNSKXomFWMTnG7wRzsUIqk3FxjAHZvsG2VuPj4I
 UbaT69roGIBailpqB4OxihTWPriYVhmmvBmc5kIEfeD1SOVjWzjrKI8Vz9wPJWfnQoNFJGhTA
 VidOBSvtCr9jYXBjJ+B/SqTjh9szSLFPrvFM2NwJVZwbYvLDeAbFy62FDrIrJ4uAq2+Y9PicC
 2mjliZ42cErF2s8kHZIg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_164305_415712_F42F2B6F 
X-CRM114-Status: GOOD (  19.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver was written as a "common" driver that could
be shared between platforms, but it was never actually shared
and now written in a completely portable way either, so just
move it into the platform to avoid header file dependencies.

Unfortunately, this driver uses the DMABOUNCE feature, which
is likely to cause problems in a multiplatform configuration,
need to investigate further. Apparently the cm-x255 only
has 64MB of RAM and does not need bouncing, but the cm-x270
can have anywhere between 32MB and 128MB, which is where
we exceed the 64 MB of address space in the chip.

Another problem is the ARCH_HAS_DMA_SET_COHERENT_MASK flag,
which messes up other PCI implementations.

Cc: Russell King <linux@armlinux.org.uk>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/Kconfig                                          | 6 ------
 arch/arm/common/Makefile                                  | 1 -
 arch/arm/mach-pxa/Kconfig                                 | 8 +++++++-
 arch/arm/mach-pxa/Makefile                                | 1 +
 arch/arm/mach-pxa/cm-x2xx-pci.c                           | 2 +-
 arch/arm/mach-pxa/cm-x2xx.c                               | 3 +--
 arch/arm/{common/it8152.c => mach-pxa/pci-it8152.c}       | 3 ++-
 .../asm/hardware/it8152.h => mach-pxa/pci-it8152.h}       | 2 --
 8 files changed, 12 insertions(+), 14 deletions(-)
 rename arch/arm/{common/it8152.c => mach-pxa/pci-it8152.c} (99%)
 rename arch/arm/{include/asm/hardware/it8152.h => mach-pxa/pci-it8152.h} (98%)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8a50efb559f3..b01f762abbda 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1146,12 +1146,6 @@ config PCI_NANOENGINE
 	help
 	  Enable PCI on the BSE nanoEngine board.
 
-config PCI_HOST_ITE8152
-	bool
-	depends on PCI && MACH_ARMCORE
-	default y
-	select DMABOUNCE
-
 config ARM_ERRATA_814220
 	bool "ARM errata: Cache maintenance by set/way operations can execute out of order"
 	depends on CPU_V7
diff --git a/arch/arm/common/Makefile b/arch/arm/common/Makefile
index 219a260bbe5f..8cd574be94cf 100644
--- a/arch/arm/common/Makefile
+++ b/arch/arm/common/Makefile
@@ -12,7 +12,6 @@ obj-$(CONFIG_SHARP_LOCOMO)	+= locomo.o
 obj-$(CONFIG_SHARP_PARAM)	+= sharpsl_param.o
 obj-$(CONFIG_SHARP_SCOOP)	+= scoop.o
 obj-$(CONFIG_CPU_V7)		+= secure_cntvoff.o
-obj-$(CONFIG_PCI_HOST_ITE8152)  += it8152.o
 obj-$(CONFIG_MCPM)		+= mcpm_head.o mcpm_entry.o mcpm_platsmp.o vlock.o
 CFLAGS_REMOVE_mcpm_entry.o	= -pg
 AFLAGS_mcpm_head.o		:= -march=armv7-a
diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index f60bc29aef68..0553fca46f5a 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -125,13 +125,19 @@ config CSB726_CSB701
 
 config MACH_ARMCORE
 	bool "CompuLab CM-X255/CM-X270 modules"
-	select ARCH_HAS_DMA_SET_COHERENT_MASK if PCI
 	select IWMMXT
 	select HAVE_PCI
 	select NEED_MACH_IO_H if PCI
 	select PXA25x
 	select PXA27x
 
+config PCI_HOST_ITE8152
+	bool
+	depends on PCI && MACH_ARMCORE
+	default y
+	select ARCH_HAS_DMA_SET_COHERENT_MASK
+	select DMABOUNCE
+
 config MACH_EM_X270
 	bool "CompuLab EM-x270 platform"
 	select PXA27x
diff --git a/arch/arm/mach-pxa/Makefile b/arch/arm/mach-pxa/Makefile
index e0df39b0238d..01cad198bdb0 100644
--- a/arch/arm/mach-pxa/Makefile
+++ b/arch/arm/mach-pxa/Makefile
@@ -44,6 +44,7 @@ obj-$(CONFIG_CSB726_CSB701)	+= csb701.o
 obj-$(CONFIG_MACH_ARMCORE)      += cm-x2xx.o cm-x255.o cm-x270.o
 ifeq ($(CONFIG_PCI),y)
 obj-$(CONFIG_MACH_ARMCORE)	+= cm-x2xx-pci.o
+obj-$(CONFIG_PCI_HOST_ITE8152)  += pci-it8152.o
 endif
 obj-$(CONFIG_MACH_ARMCORE)	+= cm_x2xx-pcmcia.o cm_x255-pcmcia.o cm_x270-pcmcia.o
 obj-$(CONFIG_MACH_EM_X270)	+= em-x270.o
diff --git a/arch/arm/mach-pxa/cm-x2xx-pci.c b/arch/arm/mach-pxa/cm-x2xx-pci.c
index f1c61c6b5610..a5689946d8c1 100644
--- a/arch/arm/mach-pxa/cm-x2xx-pci.c
+++ b/arch/arm/mach-pxa/cm-x2xx-pci.c
@@ -21,7 +21,7 @@
 #include <asm/mach/pci.h>
 #include <asm/mach-types.h>
 
-#include <asm/hardware/it8152.h>
+#include "pci-it8152.h"
 
 void __iomem *it8152_base_address;
 static int cmx2xx_it8152_irq_gpio;
diff --git a/arch/arm/mach-pxa/cm-x2xx.c b/arch/arm/mach-pxa/cm-x2xx.c
index 9b030eccd548..5ce23842239e 100644
--- a/arch/arm/mach-pxa/cm-x2xx.c
+++ b/arch/arm/mach-pxa/cm-x2xx.c
@@ -37,10 +37,9 @@
 #include <linux/platform_data/video-pxafb.h>
 #include <mach/smemc.h>
 
-#include <asm/hardware/it8152.h>
-
 #include "generic.h"
 #include "cm-x2xx-pci.h"
+#include "pci-it8152.h"
 
 extern void cmx255_init(void);
 extern void cmx270_init(void);
diff --git a/arch/arm/common/it8152.c b/arch/arm/mach-pxa/pci-it8152.c
similarity index 99%
rename from arch/arm/common/it8152.c
rename to arch/arm/mach-pxa/pci-it8152.c
index 9ec740cac469..af99c990f0c1 100644
--- a/arch/arm/common/it8152.c
+++ b/arch/arm/mach-pxa/pci-it8152.c
@@ -25,7 +25,8 @@
 #include <linux/export.h>
 
 #include <asm/mach/pci.h>
-#include <asm/hardware/it8152.h>
+
+#include "pci-it8152.h"
 
 #define MAX_SLOTS		21
 
diff --git a/arch/arm/include/asm/hardware/it8152.h b/arch/arm/mach-pxa/pci-it8152.h
similarity index 98%
rename from arch/arm/include/asm/hardware/it8152.h
rename to arch/arm/mach-pxa/pci-it8152.h
index e175c2384f28..85844c5fe462 100644
--- a/arch/arm/include/asm/hardware/it8152.h
+++ b/arch/arm/mach-pxa/pci-it8152.h
@@ -1,7 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /*
- * linux/include/arm/hardware/it8152.h
- *
  * Copyright Compulab Ltd., 2006,2007
  * Mike Rapoport <mike@compulab.co.il>
  *
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
