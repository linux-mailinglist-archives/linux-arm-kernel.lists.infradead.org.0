Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEED1CD2DD
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:29:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PEPZOa4ALIhQ08VimZXZQaeD8ohhMyqZZw00btdYqCY=; b=ZS1G3nXYCp24ET4ZJHBWl3PlmE
	1Vd4F0aF/FwBKyMBrN+99zWCiQUXILOfK/fd5aj8AmYQadbW6i+BpjNKX+9KVKVLlzoxEfCsBpo8Q
	N/JfnyExOp/R4akTJF6jZbm8gyOkGnPU93v5bxsDAu5km0zhDtSvzy2TZtiYgUbW0cG20tUJyto/M
	kYiFh3S4szmgdbwn91AT95TVAYiK+ZwZv/B86tst7/GmJQK7Cffg6nJ27D+pbSgZXTUY53GCJpOmo
	OWE+KzLpvjB9z0YPpGRdreYSjTjRsAzq4qdRyhQEyhD2gIfb6bygr2ceKWQQbM3oj0rcQQ7cYzDqb
	WyHkkFZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8TY-00082F-Aq; Sun, 06 Oct 2019 15:29:36 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8T6-0007r2-F2
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:29:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570375740;
 bh=UyrGE1hEHxmvjVmu+rXNNtvc/iHVMSlZ1dPfkiyXlWQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=eY9NwglWtAYr9lHdDp8njHDVJici7pUeMzmegaPe5W0YujtPVjEaLGDDGTt9tqRMU
 0EudVGxdbG+bFFPxL7qd2ey1cF5jtrur4Pa3x6hcQtpILlc2tRx0wahIfeRkBc1xBt
 YlFX/dLRDr/s4bAUFhFuERSAmvscEZiV3c3rb1jg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.116]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MKsnF-1iXyWf0F0H-00LCrz; Sun, 06 Oct 2019 17:29:00 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V4 07/10] ARM: bcm: Add support for BCM2711 SoC
Date: Sun,  6 Oct 2019 17:28:25 +0200
Message-Id: <1570375708-26965-8-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:2qyaG+54OdyPZ+qcVX9vMoaDfHU63alzpLvTBRaQorhtkLjwbL/
 6wRfS40TsUi5QHLfxCG58B3+CmCvjST8/4KsH08WqWK4NTr9xopfO0buFC1BF8PpmvZ3SDI
 QyGdY/4jfs0fo8iOSc+CBS0riI60MuUIRIGPh1xzTqs/6eYiYka6ISjBDpYzbneCqu5qJYU
 2/uX4NnCll8YcYIcg3fdA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Q6+QKOcsmtA=:J+d7W1sRcDk4XLyAoAjG1C
 M/bUCBr+8wfhhVR/OXNueelGx7x1p9uVDPnTUe2DPRhHnyQodtWeXmpgH4soEgpsv4sFZ92vt
 qZ4tMKXnFlg9LU4lzQsYN11T96j2lnmRbOlyzkqk65NiTpNXJLIJ2ulzXQXAJ8udmEkRjcfFI
 VG9SWZGmmjTCElM/MvqiHJBfbJ7G1U3zy+ctT68IAb+qgwRnoQexB/l1R2c/UqmUvo1uIAdTs
 mVwuAAT9LeU7SQDOp1m16iEIXqLvc2SzB8r4M3BHl1lQej+VqTQBcu0B+mZoiuZjv6UZJsKWs
 Zw0NUiSv7o4KUWqTNNCzCAlCAXNXDhuGphAFm4ZOgSGx4w+ngcwU5/5dekT0/Ly/CZTJSjmKU
 px558yw2RrkfEdpIrkpakR07DYQB8Cvq34jggWlcTFwQxzfOITU+lOtamtHTRze/oQewhyqIW
 lcxAA1i0nScBorRIQR3mO+4wx9IY5zXim3PWxouc4cg0HhrFYTEC28KaJq76vRHxkz3xV8lAg
 hU0xnqJ2T5qFSqJv5wtTuwCBXbJKcP7u5PDvrwyBr4TabFijPkAeTlUiWTw4EuLNTPvHhJ94x
 ZDsLkO18EhJWTVvAm1g+mnfpAVIqhTEoxHr5drPhJATCNAF+d5S3CMwb5kUHj1595xkwjVceX
 kszj4+Hounp1rt/Hvkh2e457Pe625rj5WPi7Wn2QuP/nINZxPxev6CJYJKodrgWmbO/uUEQZ7
 BZnAkNSIwyKvK4/cYnOuCmQ/1CX90eS53X03Mgqygwbrqxx1IhURdUScaRe51z9umikp3cBQY
 EDD/4y+kDmPfzO8OmSgsozKlLIXX5HBV9CnBtKqKTN97Yba83PGeZOuKiW8qYAsj96hYZAs8K
 8s9CbVe3skddwnI+3RoOOY50iKe3ER22MRMyzO3DxpfTGMZRDYCKajt3ukF6pYO8Mf4JnhftM
 IWnweH08ZcJdS1Hd8d7y65bwLzmrj2a+IIHTfiT+mdxSyYWmUqkCezkTZs9CiiscT2X85kVp0
 iYUaQaDoNSbawIxHrgwZRrxlIDdVQ8Y2+pva+cwhh6V7hF2j8EnL6qN+Lz9LfuwWrlfVAdUcG
 4uckbe8x6v8xrUMwInvrPwZg5DBFnNvCvgzCa5kz9/VHNEFCyn/kfi+6Kf+fG//J/0D0HXzX7
 uyhP4M1rGcZrRjFSHkOCmxXQk1DhWQ+l82K38orqNVgkHlYh48ya4qYrtfX7QwNbIHY1KjhDH
 gMbJU/CHiFq87yeRyUuorMbzFFk3Og03HZeZWRw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_082908_801115_D3532589 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.22 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-bluetooth@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the BCM2711 to ARCH_BCM2835, but use new machine board code
because of the differences.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Reviewed-by: Eric Anholt <eric@anholt.net>
Acked-by: Florian Fanelli <f.fainelli@gmail.com>
---
 arch/arm/mach-bcm/Kconfig    |  4 +++-
 arch/arm/mach-bcm/Makefile   |  3 ++-
 arch/arm/mach-bcm/bcm2711.c  | 24 ++++++++++++++++++++++++
 arch/arm64/Kconfig.platforms |  5 +++--
 4 files changed, 32 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/mach-bcm/bcm2711.c

diff --git a/arch/arm/mach-bcm/Kconfig b/arch/arm/mach-bcm/Kconfig
index 5e5f1fa..e4e25f2 100644
--- a/arch/arm/mach-bcm/Kconfig
+++ b/arch/arm/mach-bcm/Kconfig
@@ -161,6 +161,8 @@ config ARCH_BCM2835
 	select GPIOLIB
 	select ARM_AMBA
 	select ARM_ERRATA_411920 if ARCH_MULTI_V6
+	select ARM_GIC if ARCH_MULTI_V7
+	select ZONE_DMA if ARCH_MULTI_V7
 	select ARM_TIMER_SP804
 	select HAVE_ARM_ARCH_TIMER if ARCH_MULTI_V7
 	select TIMER_OF
@@ -169,7 +171,7 @@ config ARCH_BCM2835
 	select PINCTRL_BCM2835
 	select MFD_CORE
 	help
-	  This enables support for the Broadcom BCM2835 and BCM2836 SoCs.
+	  This enables support for the Broadcom BCM2711 and BCM283x SoCs.
 	  This SoC is used in the Raspberry Pi and Roku 2 devices.

 config ARCH_BCM_53573
diff --git a/arch/arm/mach-bcm/Makefile b/arch/arm/mach-bcm/Makefile
index b59c813..7baa8c9 100644
--- a/arch/arm/mach-bcm/Makefile
+++ b/arch/arm/mach-bcm/Makefile
@@ -42,8 +42,9 @@ obj-$(CONFIG_ARCH_BCM_MOBILE_L2_CACHE) += kona_l2_cache.o
 obj-$(CONFIG_ARCH_BCM_MOBILE_SMC) += bcm_kona_smc.o

 # BCM2835
-obj-$(CONFIG_ARCH_BCM2835)	+= board_bcm2835.o
 ifeq ($(CONFIG_ARCH_BCM2835),y)
+obj-y				+= board_bcm2835.o
+obj-y				+= bcm2711.o
 ifeq ($(CONFIG_ARM),y)
 obj-$(CONFIG_SMP)		+= platsmp.o
 endif
diff --git a/arch/arm/mach-bcm/bcm2711.c b/arch/arm/mach-bcm/bcm2711.c
new file mode 100644
index 0000000..dbe2967
--- /dev/null
+++ b/arch/arm/mach-bcm/bcm2711.c
@@ -0,0 +1,24 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Stefan Wahren
+ */
+
+#include <linux/of_address.h>
+
+#include <asm/mach/arch.h>
+
+#include "platsmp.h"
+
+static const char * const bcm2711_compat[] = {
+#ifdef CONFIG_ARCH_MULTI_V7
+	"brcm,bcm2711",
+#endif
+};
+
+DT_MACHINE_START(BCM2711, "BCM2711")
+#ifdef CONFIG_ZONE_DMA
+	.dma_zone_size	= SZ_1G,
+#endif
+	.dt_compat = bcm2711_compat,
+	.smp = smp_ops(bcm2836_smp_ops),
+MACHINE_END
diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 16d7614..63b463b 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -37,11 +37,12 @@ config ARCH_BCM2835
 	select PINCTRL
 	select PINCTRL_BCM2835
 	select ARM_AMBA
+	select ARM_GIC
 	select ARM_TIMER_SP804
 	select HAVE_ARM_ARCH_TIMER
 	help
-	  This enables support for the Broadcom BCM2837 SoC.
-	  This SoC is used in the Raspberry Pi 3 device.
+	  This enables support for the Broadcom BCM2837 and BCM2711 SoC.
+	  These SoCs are used in the Raspberry Pi 3 and 4 devices.

 config ARCH_BCM_IPROC
 	bool "Broadcom iProc SoC Family"
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
