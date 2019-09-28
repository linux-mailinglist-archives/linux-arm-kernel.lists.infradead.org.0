Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E8EC10C7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 14:10:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8cRrGyQMSV4JG8uhjnacwpr7LBOU+Mws6naSJBYIt5s=; b=S6pu8Jf1/rAYLZouO63kfOJp3C
	lVNl2Q3s8VkzVer0lZG6XsN1UNhABeuBkpGPoT8xukupmCJw80cOUBKGvDKtJKfubIEdswXuXZi8Q
	bXRJ73MDEaRT9npRSJ0SCwzVYfXsomyAMmZ6qw/B0UpvkTU8+cO3EpA5iHO0EOZ4tXNSGGQTLHuU2
	O6Ck76j720j0M1BJF0vmTHp7SZFytHMXK0ie1XOmJ2h+LslxGFRu48jSOfOnxuaBX2kGWNYCbv3a3
	rS0+vur7rOFdPrx7ezLH6oWUVFa5SrKew/cmVk/v2Q96f2KGO2BewC/SC3/TiWsn0/7LWLyl8myC2
	9unC+NAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEBYJ-0000v1-1c; Sat, 28 Sep 2019 12:10:19 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEBWA-0006pA-5R
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Sep 2019 12:08:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1569672467;
 bh=EpFhBA4p2FlCXDVmr2vPdA7dtjTxxcDk4dB260T1cOs=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=GEvAk6bmXyCJRjZnB5eCU3LIEtAdz0jKpmCs7kXxhW/eRUCGlP3QpjCnh1Ra7uHey
 Z3rUZi1tIvdSfGGXytTIIxs5P/G0A6zIolVQaikspW58ogamo7ibgzeWVoGxr2/wn2
 kqweZ2Igo98y1YDNNT6FXvYn9lfck8vqml7WmkQA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.130]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MmUHj-1hngOh30qX-00iRTA; Sat, 28 Sep 2019 14:07:38 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V3 6/8] ARM: bcm: Add support for BCM2711 SoC
Date: Sat, 28 Sep 2019 14:07:12 +0200
Message-Id: <1569672435-19823-7-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:3v9Ol3t2CWt+FT41hI8nI5XC5PPLlJXi+X26WAoPqBLGTxKOcmy
 22GC6/stxKsrwz4T5TYFpsyKZL0fcMHNEdz++8DnB3MmRiEwehy8KAp1C3mGTYsx0GBpKW6
 0JqhvwBm7LZOyUt9pui80vaRYXZPVYVryhEeBCBw+VguwQLU/RdfbgoityzuQCa28jq4yl4
 kf+lIzwRVxODw3ibwDu7w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jlA0vyM2pA4=:kSs7ksZPicgRnY8m+D7Rsp
 BTkhoqkV/Wk4YYfetOJIYsahy6bwc/94vIOJgatnCbspsgHok3k7bkVqmZZWh1FmK5rPjmsnk
 fydIAAdVks/YQjo2fBegscPkoyupbJy3VNmkCP05uSiCYM/QC8nwP21+CkNJA/aC6TfhO3vcz
 cizxHsdNM7l9lgr1O4xKGCdyvQcCskH1N+u8FxCaC/WdAWWH6JcPKgeiRhQGG2nYhhsXMb7A8
 E2M4IJ8KQS0FKOG6h798SF+CIRrJfza4YGVPZFJuJT9DhQMbM2g1aJ7zyWh1/fppp1J4ng1l4
 KxpxepbvBVOVRBPAtlyU6w8ZSRzwL5DQ5PMwgVmLu242e+WbtzzlNzpG5jPyMg/dPlB4H2sdK
 k0ATLcgJ66PpmR5o6tERzEa5rOkKR8CNSMDFKXTSunSfTt3X1m0/rk2ePwF//X/6kIEJBFc4g
 qDXJIKQ6aQ9xwB17T1d+Ph6Ai8+AOiN6b2Lf9K9X+WOAd5yFia3hfyr+nqLTMsZ+09aWQyqyI
 6eVP8zSqr3VsjMCGKZ+9v3wt00ptSf1hxRy/+efclmoI1TYHiA/KmasdmIozrCpwS0nsNzzXi
 9EFY7CPcR8f4jjFLIJAB+uf7zyk6m3CxW30o71W59kq/DqGRuhoWh6ep+8eh5jfAgOmtHzoTF
 P7JAYJG5PQWzwL8EtefAQ6NJk2sdbRGxADMqiiFsPpwq0tGIGAwQsX0pdn9v4Vm07UaNJg7dj
 8JsqfGd5ktQZXIPq/qNwys/BZoWytmcudFLWscVrTMZ8Nkfm40yF7ugUTeMvQj9f4oKVBtp53
 AD1Y2RDrXLdzJVFhhdASMgoEonDvYktaI5Uxh42M78asg1bdOLJuhWMS05H6fALDZktdLFx+/
 ObzDTZCzIZ21Xl6zq+6nDO1tBD2l6hp23/s1+fMNZnngZThV5SDZ1KKKuWdtiGOZnxIk+ywSj
 bYRWuMbeQhgj1Mr9rzYJpU9pu28c0ldwfJGO2hPNdgOZpaP6G6dg+40zooxamwkP1s6CwHyqc
 Ea4QE71kkLeTZGX1URqtrJK4veLBwmTlOS+b3QaQnYFjg+ZhOoDxzXMN36pJWkFGoPn852/Gp
 OvKdc6gyTf4jAp1Lr2I/Ld5ZnxXOszX1ktZ068HvzT+zFNv1J/7cyh0Mnc8IICFtBsaUOW2RD
 aSQPgEYY2k01RnyP8rFWP+cxeH2yZAl/zYRiUIPQgtiuFu0zwQkmf67sHMmsRZwmv21VsEgLV
 cqEHGyzMnk2/oU9CUSZgvkXKCW+ueS5Womt6rETE39WhoTfEI3nxVgxvdxGQN7JA1GCpf9D3C
 06teAKe0b5p0wGGuWEhnhLN9/ZKHsR6Ihr6dNOk9elQA4dkOOv1+6oK++8zkWs0YU4+u4JQFF
 JIWmVZrqlVBXRBLVbkN/Oy5uO9n9v9fJrCuJt8SDKmZ46Flf/imisTkdUq8NzQWRlxjk1quAr
 6VYSGjLmAnh+eEIHFRQLggQX6f3oVZ0XOWWcwVFV++hL+307D6K/nX
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_050806_524831_CE8D875A 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.19 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the BCM2711 to ARCH_BCM2835, but use new machine board code
because of the differences.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Reviewed-by: Eric Anholt <eric@anholt.net>
---
 arch/arm/mach-bcm/Kconfig    |  3 ++-
 arch/arm/mach-bcm/Makefile   |  3 ++-
 arch/arm/mach-bcm/bcm2711.c  | 24 ++++++++++++++++++++++++
 arch/arm64/Kconfig.platforms |  5 +++--
 4 files changed, 31 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/mach-bcm/bcm2711.c

diff --git a/arch/arm/mach-bcm/Kconfig b/arch/arm/mach-bcm/Kconfig
index 5e5f1fa..39bcbea 100644
--- a/arch/arm/mach-bcm/Kconfig
+++ b/arch/arm/mach-bcm/Kconfig
@@ -161,6 +161,7 @@ config ARCH_BCM2835
 	select GPIOLIB
 	select ARM_AMBA
 	select ARM_ERRATA_411920 if ARCH_MULTI_V6
+	select ARM_GIC if ARCH_MULTI_V7
 	select ARM_TIMER_SP804
 	select HAVE_ARM_ARCH_TIMER if ARCH_MULTI_V7
 	select TIMER_OF
@@ -169,7 +170,7 @@ config ARCH_BCM2835
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
index 16d7614..b5d31dc 100644
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
+	  This SoC is used in the Raspberry Pi 3 and 4 device.

 config ARCH_BCM_IPROC
 	bool "Broadcom iProc SoC Family"
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
