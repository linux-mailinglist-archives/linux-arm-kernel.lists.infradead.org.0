Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B6FDCB0D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4fsyE33qnhNHuLTtXfp6H4nqUoSBOVzfm1BLLLy4UjM=; b=f+KYMhh+StsToU
	O86VL610UfWYrxBZspqyGJ/H0QU7djOOImWJe/2yaOD+oGbExN8eD30wy4b3gayLHbnsjTBl6LJNV
	Cq57IMW4gZkrrVOJMBoyewIecM3sBWaEHkH2HEzN0PSo6Hvd9fGbgsZh4kYz+7jN/ojKJch8qqYWh
	LDJFbwLhfGx4UfOy1jKzhPJO6QAZDIbxXoAB5U+iq2wU+m72HsGZkJViFNqzfEjHhY/Q73URyNKwi
	w2sdvmIRWoFar8FAQ8nhqZMfGv6ZNwELjaklrJoMZsT4IlUfks7rFSCEozflIUVMnp15FSay3s7iV
	0bn+7/JAOnc0ub8KrL2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVAi-0000Yi-NP; Fri, 18 Oct 2019 16:32:12 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLV9S-0008J5-Gg
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:31:14 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Mrggc-1hiqw143z2-00nfbo; Fri, 18 Oct 2019 18:30:50 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/6] ARM: versatile: move integrator/realview/vexpress to
 versatile
Date: Fri, 18 Oct 2019 18:29:14 +0200
Message-Id: <20191018163047.1284736-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:I+/9pbKfxz4+JWNzZgaDP53mode4OFLqi2uQKwSEPfSkeBgeZt9
 KIvX9Aw7F8qr4kTkdgNw2mbsx2DXHV3rzBDDwib1j4HOFxD2WPt9rq3/czntYcARHUANayl
 OiPhR0LxY6XwiGjuy+apmpgKcqsJoDtw+/5ghftOISqeQOxPFy4avhq1imBHgi0Of7j6q38
 kVXMFRmGjlQ/DOLO/47Ww==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BtcrccKziqQ=:+MB8+f5OPRcGdv+fKt+THO
 V6BwqgK0Ns7lIcf+Dh21Ms0ABuS9eI2uPpywJfQ1sLnp0tcsDyE81EWrj629lA25LXR+nla8N
 JMlO3NnzJ0pIhHupYMxbuXOvDi6MvSGmt9inIrJVXS6yYw2eSfvFJSRElj22h1tTOnRZ+TBRO
 bV2Z81DjnHcNtM2gjaLS1nUy3zUmIwF5kFwgtajW3BmoybjIyCR5gjmcMwwodxZpBZnFIcJKA
 2mZqDP15MMdmg7sjOsFvUnl4mxAONNacT9xMwYztS5cXT7tK+m5UAAbZ8jpeYGSOdgPebn49g
 uGHEm2XckRFa9P14tg6eXrzrEmd+jC4XmCWB0lNjRf9olklIpx+95R7esuX0DfqDBGdeI9GX3
 iIYMFc7f15NCrB7hH1lAuGkDLtHxN1dT83lDcQNyCEZQwudoCwiAOxh/cJLJo3+yCGRQCwT1O
 fCz4rQkQXcU7qVmxzt77Zk9SICbnF4U97J4BZgDxR5UI7TFconFTh3RawrWtoRJp8nX7Y5FTU
 Ply3AnCBcNNAGGzkKu1Xm37TFJ/nKZzKyaun+46Q98ULbvr69C1zG3WMxmiPgFcggUy7zdEVR
 F4yDI/R54F/9G6IvCxSXOSMccggOnaVU25BJKKgjML6gc1ApffWMb9Cumtel9JK4gwfcgoH7J
 Huz8kWRDL+lm8H+b/LrHMfQZvSkYI6o1yBNif7OaCXSRRmjTf1p/oQNXTE0pa4S8XOOOdwlwe
 W5MGjimkpmVFUikoPNYys3YLefJ4Vey9VO+jSbMbOcrzNlJ//1XWKHSsVo+j9oxXUDfEjZmjs
 DqslNn629uKAuNHSfV2cHQeU/1XIRkTMBZq3OvqtIM7L+q/Z3qfHd0yuvpDts5xBnaVtk3J70
 h4qFVCMDRVKsE1OmQ99Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_093101_735717_66E875F6 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These are all fairly small platforms by now, and they are
closely related. Just move them all into a single directory.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/Kconfig                              |   7 -
 arch/arm/Makefile                             |   7 +-
 arch/arm/mach-integrator/Kconfig              | 161 --------
 arch/arm/mach-integrator/Makefile             |  11 -
 arch/arm/mach-realview/Kconfig                | 113 ------
 arch/arm/mach-realview/Makefile               |   8 -
 arch/arm/mach-versatile/Kconfig               | 360 ++++++++++++++++++
 arch/arm/mach-versatile/Makefile              |  34 +-
 .../Makefile.boot                             |   0
 .../{mach-integrator => mach-versatile}/cm.h  |   0
 .../common.h                                  |   0
 .../core.c                                    |   2 -
 .../{mach-vexpress => mach-versatile}/core.h  |   0
 .../{mach-vexpress => mach-versatile}/dcscb.c |   2 +-
 .../dcscb_setup.S                             |   2 -
 .../hardware.h                                |   0
 .../headsmp.S                                 |   2 -
 .../hotplug.c                                 |   2 +-
 .../impd1.c                                   |   2 -
 .../impd1.h                                   |   0
 .../integrator_ap.c                           |   2 -
 .../integrator_cp.c                           |   2 -
 .../{mach-integrator => mach-versatile}/lm.c  |   2 -
 .../{mach-integrator => mach-versatile}/lm.h  |   0
 .../platsmp-realview.c}                       |   2 +-
 .../platsmp-vexpress.c}                       |   5 +-
 .../platsmp.c                                 |   4 +-
 .../include/plat => mach-versatile}/platsmp.h |   2 -
 .../realview-dt.c                             |   0
 .../sched-clock.c                             |   4 +-
 .../plat => mach-versatile}/sched_clock.h     |   0
 .../{mach-vexpress => mach-versatile}/spc.c   |   0
 .../{mach-vexpress => mach-versatile}/spc.h   |   0
 .../tc2_pm.c                                  |   2 -
 .../v2m-mps2.c                                |   0
 .../{mach-vexpress => mach-versatile}/v2m.c   |   0
 arch/arm/mach-vexpress/Kconfig                |  84 ----
 arch/arm/mach-vexpress/Makefile               |  19 -
 arch/arm/plat-versatile/Kconfig               |   7 -
 arch/arm/plat-versatile/Makefile              |   6 -
 40 files changed, 400 insertions(+), 454 deletions(-)
 delete mode 100644 arch/arm/mach-integrator/Kconfig
 delete mode 100644 arch/arm/mach-integrator/Makefile
 delete mode 100644 arch/arm/mach-realview/Kconfig
 delete mode 100644 arch/arm/mach-realview/Makefile
 rename arch/arm/{mach-vexpress => mach-versatile}/Makefile.boot (100%)
 rename arch/arm/{mach-integrator => mach-versatile}/cm.h (100%)
 rename arch/arm/{mach-integrator => mach-versatile}/common.h (100%)
 rename arch/arm/{mach-integrator => mach-versatile}/core.c (97%)
 rename arch/arm/{mach-vexpress => mach-versatile}/core.h (100%)
 rename arch/arm/{mach-vexpress => mach-versatile}/dcscb.c (98%)
 rename arch/arm/{mach-vexpress => mach-versatile}/dcscb_setup.S (95%)
 rename arch/arm/{mach-integrator => mach-versatile}/hardware.h (100%)
 rename arch/arm/{plat-versatile => mach-versatile}/headsmp.S (94%)
 rename arch/arm/{plat-versatile => mach-versatile}/hotplug.c (98%)
 rename arch/arm/{mach-integrator => mach-versatile}/impd1.c (99%)
 rename arch/arm/{mach-integrator => mach-versatile}/impd1.h (100%)
 rename arch/arm/{mach-integrator => mach-versatile}/integrator_ap.c (98%)
 rename arch/arm/{mach-integrator => mach-versatile}/integrator_cp.c (98%)
 rename arch/arm/{mach-integrator => mach-versatile}/lm.c (97%)
 rename arch/arm/{mach-integrator => mach-versatile}/lm.h (100%)
 rename arch/arm/{mach-realview/platsmp-dt.c => mach-versatile/platsmp-realview.c} (98%)
 rename arch/arm/{mach-vexpress/platsmp.c => mach-versatile/platsmp-vexpress.c} (96%)
 rename arch/arm/{plat-versatile => mach-versatile}/platsmp.c (97%)
 rename arch/arm/{plat-versatile/include/plat => mach-versatile}/platsmp.h (87%)
 rename arch/arm/{mach-realview => mach-versatile}/realview-dt.c (100%)
 rename arch/arm/{plat-versatile => mach-versatile}/sched-clock.c (86%)
 rename arch/arm/{plat-versatile/include/plat => mach-versatile}/sched_clock.h (100%)
 rename arch/arm/{mach-vexpress => mach-versatile}/spc.c (100%)
 rename arch/arm/{mach-vexpress => mach-versatile}/spc.h (100%)
 rename arch/arm/{mach-vexpress => mach-versatile}/tc2_pm.c (99%)
 rename arch/arm/{mach-vexpress => mach-versatile}/v2m-mps2.c (100%)
 rename arch/arm/{mach-vexpress => mach-versatile}/v2m.c (100%)
 delete mode 100644 arch/arm/mach-vexpress/Kconfig
 delete mode 100644 arch/arm/mach-vexpress/Makefile
 delete mode 100644 arch/arm/plat-versatile/Kconfig
 delete mode 100644 arch/arm/plat-versatile/Makefile

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 330a1685101a..b6681b61e46c 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -647,8 +647,6 @@ source "arch/arm/mach-hisi/Kconfig"
 
 source "arch/arm/mach-imx/Kconfig"
 
-source "arch/arm/mach-integrator/Kconfig"
-
 source "arch/arm/mach-iop32x/Kconfig"
 
 source "arch/arm/mach-ixp4xx/Kconfig"
@@ -700,8 +698,6 @@ source "arch/arm/mach-qcom/Kconfig"
 
 source "arch/arm/mach-rda/Kconfig"
 
-source "arch/arm/mach-realview/Kconfig"
-
 source "arch/arm/mach-rockchip/Kconfig"
 
 source "arch/arm/mach-s3c24xx/Kconfig"
@@ -736,9 +732,6 @@ source "arch/arm/mach-ux500/Kconfig"
 
 source "arch/arm/mach-versatile/Kconfig"
 
-source "arch/arm/mach-vexpress/Kconfig"
-source "arch/arm/plat-versatile/Kconfig"
-
 source "arch/arm/mach-vt8500/Kconfig"
 
 source "arch/arm/mach-zx/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 09622c26a8a4..db39707fa600 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -180,7 +180,6 @@ machine-$(CONFIG_ARCH_FOOTBRIDGE)	+= footbridge
 machine-$(CONFIG_ARCH_GEMINI)		+= gemini
 machine-$(CONFIG_ARCH_HIGHBANK)		+= highbank
 machine-$(CONFIG_ARCH_HISI)		+= hisi
-machine-$(CONFIG_ARCH_INTEGRATOR)	+= integrator
 machine-$(CONFIG_ARCH_IOP32X)		+= iop32x
 machine-$(CONFIG_ARCH_IXP4XX)		+= ixp4xx
 machine-$(CONFIG_ARCH_KEYSTONE)		+= keystone
@@ -188,7 +187,6 @@ machine-$(CONFIG_ARCH_LPC18XX)		+= lpc18xx
 machine-$(CONFIG_ARCH_LPC32XX)		+= lpc32xx
 machine-$(CONFIG_ARCH_MESON)		+= meson
 machine-$(CONFIG_ARCH_MMP)		+= mmp
-machine-$(CONFIG_ARCH_MPS2)		+= vexpress
 machine-$(CONFIG_ARCH_MOXART)		+= moxart
 machine-$(CONFIG_ARCH_MV78XX0)		+= mv78xx0
 machine-$(CONFIG_ARCH_MVEBU)		+= mvebu
@@ -207,7 +205,6 @@ machine-$(CONFIG_ARCH_PICOXCELL)	+= picoxcell
 machine-$(CONFIG_ARCH_PXA)		+= pxa
 machine-$(CONFIG_ARCH_QCOM)		+= qcom
 machine-$(CONFIG_ARCH_RDA)		+= rda
-machine-$(CONFIG_ARCH_REALVIEW)		+= realview
 machine-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip
 machine-$(CONFIG_ARCH_RPC)		+= rpc
 machine-$(CONFIG_ARCH_S3C24XX)		+= s3c24xx
@@ -224,11 +221,10 @@ machine-$(CONFIG_ARCH_TANGO)		+= tango
 machine-$(CONFIG_ARCH_TEGRA)		+= tegra
 machine-$(CONFIG_ARCH_U300)		+= u300
 machine-$(CONFIG_ARCH_U8500)		+= ux500
-machine-$(CONFIG_ARCH_VERSATILE)	+= versatile
-machine-$(CONFIG_ARCH_VEXPRESS)		+= vexpress
 machine-$(CONFIG_ARCH_VT8500)		+= vt8500
 machine-$(CONFIG_ARCH_ZX)		+= zx
 machine-$(CONFIG_ARCH_ZYNQ)		+= zynq
+machine-$(CONFIG_PLAT_VERSATILE)	+= versatile
 machine-$(CONFIG_PLAT_SPEAR)		+= spear
 
 # Platform directory name.  This list is sorted alphanumerically
@@ -239,7 +235,6 @@ plat-$(CONFIG_ARCH_S3C64XX)	+= samsung
 plat-$(CONFIG_ARCH_S5PV210)	+= samsung
 plat-$(CONFIG_PLAT_ORION)	+= orion
 plat-$(CONFIG_PLAT_S3C24XX)	+= samsung
-plat-$(CONFIG_PLAT_VERSATILE)	+= versatile
 
 ifeq ($(CONFIG_ARCH_EBSA110),y)
 # This is what happens if you forget the IOCS16 line.
diff --git a/arch/arm/mach-integrator/Kconfig b/arch/arm/mach-integrator/Kconfig
deleted file mode 100644
index 982eabc36163..000000000000
--- a/arch/arm/mach-integrator/Kconfig
+++ /dev/null
@@ -1,161 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-menuconfig ARCH_INTEGRATOR
-	bool "ARM Ltd. Integrator family"
-	depends on ARCH_MULTI_V4T || ARCH_MULTI_V5 || ARCH_MULTI_V6
-	select ARM_AMBA
-	select COMMON_CLK_VERSATILE
-	select HAVE_TCM
-	select ICST
-	select MFD_SYSCON
-	select PLAT_VERSATILE
-	select POWER_RESET
-	select POWER_RESET_VERSATILE
-	select POWER_SUPPLY
-	select SOC_INTEGRATOR_CM
-	select SPARSE_IRQ
-	select VERSATILE_FPGA_IRQ
-	help
-	  Support for ARM's Integrator platform.
-
-if ARCH_INTEGRATOR
-
-config ARCH_INTEGRATOR_AP
-	bool "Support Integrator/AP and Integrator/PP2 platforms"
-	select INTEGRATOR_AP_TIMER
-	select SERIAL_AMBA_PL010 if TTY
-	select SERIAL_AMBA_PL010_CONSOLE if TTY
-	select SOC_BUS
-	help
-	  Include support for the ARM(R) Integrator/AP and
-	  Integrator/PP2 platforms.
-
-config INTEGRATOR_IMPD1
-	bool "Include support for Integrator/IM-PD1"
-	depends on ARCH_INTEGRATOR_AP
-	select ARM_VIC
-	select GPIO_PL061
-	select GPIOLIB
-	help
-	  The IM-PD1 is an add-on logic module for the Integrator which
-	  allows ARM(R) Ltd PrimeCells to be developed and evaluated.
-	  The IM-PD1 can be found on the Integrator/PP2 platform.
-
-	  To compile this driver as a module, choose M here: the
-	  module will be called impd1.
-
-config INTEGRATOR_CM7TDMI
-	bool "Integrator/CM7TDMI core module"
-	depends on ARCH_INTEGRATOR_AP
-	depends on ARCH_MULTI_V4 && !MMU
-	select CPU_ARM7TDMI
-
-config INTEGRATOR_CM720T
-	bool "Integrator/CM720T core module"
-	depends on ARCH_INTEGRATOR_AP
-	depends on ARCH_MULTI_V4T
-	select CPU_ARM720T
-
-config INTEGRATOR_CM740T
-	bool "Integrator/CM740T core module"
-	depends on ARCH_INTEGRATOR_AP
-	depends on ARCH_MULTI_V4T && !MMU
-	select CPU_ARM740T
-
-config INTEGRATOR_CM920T
-	bool "Integrator/CM920T core module"
-	depends on ARCH_INTEGRATOR_AP
-	depends on ARCH_MULTI_V4T
-	select CPU_ARM920T
-
-config INTEGRATOR_CM922T_XA10
-	bool "Integrator/CM922T-XA10 core module"
-	depends on ARCH_MULTI_V4T
-	depends on ARCH_INTEGRATOR_AP
-	select CPU_ARM922T
-
-config INTEGRATOR_CM926EJS
-	bool "Integrator/CM926EJ-S core module"
-	depends on ARCH_INTEGRATOR_AP
-	depends on ARCH_MULTI_V5
-	select CPU_ARM926T
-
-config INTEGRATOR_CM940T
-	bool "Integrator/CM940T core module"
-	depends on ARCH_INTEGRATOR_AP
-	depends on ARCH_MULTI_V4T && !MMU
-	select CPU_ARM940T
-
-config INTEGRATOR_CM946ES
-	bool "Integrator/CM946E-S core module"
-	depends on ARCH_INTEGRATOR_AP
-	depends on ARCH_MULTI_V5 && !MMU
-	select CPU_ARM946E
-
-config INTEGRATOR_CM966ES
-	bool "Integrator/CM966E-S core module"
-	depends on ARCH_INTEGRATOR_AP
-	depends on BROKEN # no kernel support
-
-config INTEGRATOR_CM10200E_REV0
-	bool "Integrator/CM10200E rev.0 core module"
-	depends on ARCH_INTEGRATOR_AP && n
-	depends on ARCH_MULTI_V5
-	select CPU_ARM1020
-
-config INTEGRATOR_CM10200E
-	bool "Integrator/CM10200E core module"
-	depends on ARCH_INTEGRATOR_AP && n
-	depends on ARCH_MULTI_V5
-	select CPU_ARM1020E
-
-config INTEGRATOR_CM10220E
-	bool "Integrator/CM10220E core module"
-	depends on ARCH_INTEGRATOR_AP
-	depends on ARCH_MULTI_V5
-	select CPU_ARM1022
-
-config INTEGRATOR_CM1026EJS
-	bool "Integrator/CM1026EJ-S core module"
-	depends on ARCH_INTEGRATOR_AP
-	depends on ARCH_MULTI_V5
-	select CPU_ARM1026
-
-config INTEGRATOR_CM1136JFS
-	bool "Integrator/CM1136JF-S core module"
-	depends on ARCH_INTEGRATOR_AP
-	depends on ARCH_MULTI_V6
-	select CPU_V6
-
-config ARCH_INTEGRATOR_CP
-	bool "Support Integrator/CP platform"
-	depends on (!MMU || ARCH_MULTI_V5 || ARCH_MULTI_V6)
-	select ARM_TIMER_SP804
-	select SERIAL_AMBA_PL011 if TTY
-	select SERIAL_AMBA_PL011_CONSOLE if TTY
-	select SOC_BUS
-	help
-	  Include support for the ARM(R) Integrator CP platform.
-
-config INTEGRATOR_CT7T
-	bool "Integrator/CT7TD (ARM7TDMI) core tile"
-	depends on ARCH_INTEGRATOR_CP
-	depends on ARCH_MULTI_V4T && !MMU
-	select CPU_ARM7TDMI
-
-config INTEGRATOR_CT926
-	bool "Integrator/CT926 (ARM926EJ-S) core tile"
-	depends on ARCH_INTEGRATOR_CP
-	depends on ARCH_MULTI_V5
-	select CPU_ARM926T
-
-config INTEGRATOR_CTB36
-	bool "Integrator/CTB36 (ARM1136JF-S) core tile"
-	depends on ARCH_INTEGRATOR_CP
-	depends on ARCH_MULTI_V6
-	select CPU_V6
-
-config ARCH_CINTEGRATOR
-	depends on ARCH_INTEGRATOR_CP
-	def_bool y
-
-endif
diff --git a/arch/arm/mach-integrator/Makefile b/arch/arm/mach-integrator/Makefile
deleted file mode 100644
index 71b97ffe8d32..000000000000
--- a/arch/arm/mach-integrator/Makefile
+++ /dev/null
@@ -1,11 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-#
-# Makefile for the linux kernel.
-#
-
-# Object file lists.
-
-obj-y					:= core.o lm.o
-obj-$(CONFIG_ARCH_INTEGRATOR_AP)	+= integrator_ap.o
-obj-$(CONFIG_ARCH_INTEGRATOR_CP)	+= integrator_cp.o
-obj-$(CONFIG_INTEGRATOR_IMPD1)		+= impd1.o
diff --git a/arch/arm/mach-realview/Kconfig b/arch/arm/mach-realview/Kconfig
deleted file mode 100644
index 44ebbf9ec673..000000000000
--- a/arch/arm/mach-realview/Kconfig
+++ /dev/null
@@ -1,113 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-menuconfig ARCH_REALVIEW
-	bool "ARM Ltd. RealView family"
-	depends on ARCH_MULTI_V5 || ARCH_MULTI_V6 || ARCH_MULTI_V7
-	select ARM_AMBA
-	select ARM_GIC
-	select ARM_TIMER_SP804
-	select CLK_SP810
-	select COMMON_CLK_VERSATILE
-	select GPIO_PL061 if GPIOLIB
-	select HAVE_ARM_SCU if SMP
-	select HAVE_ARM_TWD if SMP
-	select HAVE_PATA_PLATFORM
-	select HAVE_TCM
-	select ICST
-	select MACH_REALVIEW_EB if ARCH_MULTI_V5
-	select MFD_SYSCON
-	select PLAT_VERSATILE
-	select PLAT_VERSATILE_SCHED_CLOCK
-	select POWER_RESET
-	select POWER_RESET_VERSATILE
-	select POWER_SUPPLY
-	select SOC_REALVIEW
-	select USE_OF
-	help
-	  This enables support for ARM Ltd RealView boards.
-
-if ARCH_REALVIEW
-
-config MACH_REALVIEW_EB
-	bool "Support RealView(R) Emulation Baseboard"
-	select ARM_GIC
-	select CPU_ARM926T if ARCH_MULTI_V5
-	help
-	  Include support for the ARM(R) RealView(R) Emulation Baseboard
-	  platform. On an ARMv5 kernel, this will include support for
-	  the ARM926EJ-S core tile, while on an ARMv6/v7 kernel, at least
-	  one of the ARM1136, ARM1176, ARM11MPCore or Cortex-A9MPCore
-	  core tile options should be enabled.
-
-config REALVIEW_EB_ARM1136
-	bool "Support ARM1136J(F)-S Tile"
-	depends on MACH_REALVIEW_EB && ARCH_MULTI_V6
-	select CPU_V6
-	help
-	  Enable support for the ARM1136 tile fitted to the
-	  Realview(R) Emulation Baseboard platform.
-
-config REALVIEW_EB_ARM1176
-	bool "Support ARM1176JZ(F)-S Tile"
-	depends on MACH_REALVIEW_EB && ARCH_MULTI_V6
-	help
-	  Enable support for the ARM1176 tile fitted to the
-	  Realview(R) Emulation Baseboard platform.
-
-config REALVIEW_EB_A9MP
-	bool "Support Multicore Cortex-A9 Tile"
-	depends on MACH_REALVIEW_EB && ARCH_MULTI_V7
-	select HAVE_SMP
-	select MIGHT_HAVE_CACHE_L2X0
-	help
-	  Enable support for the Cortex-A9MPCore tile fitted to the
-	  Realview(R) Emulation Baseboard platform.
-
-config REALVIEW_EB_ARM11MP
-	bool "Support ARM11MPCore Tile"
-	depends on MACH_REALVIEW_EB && ARCH_MULTI_V6
-	select HAVE_SMP
-	select MIGHT_HAVE_CACHE_L2X0
-	help
-	  Enable support for the ARM11MPCore tile fitted to the Realview(R)
-	  Emulation Baseboard platform.
-
-config MACH_REALVIEW_PB11MP
-	bool "Support RealView(R) Platform Baseboard for ARM11MPCore"
-	depends on ARCH_MULTI_V6
-	select HAVE_SMP
-	select MIGHT_HAVE_CACHE_L2X0
-	help
-	  Include support for the ARM(R) RealView(R) Platform Baseboard for
-	  the ARM11MPCore.  This platform has an on-board ARM11MPCore and has
-	  support for PCI-E and Compact Flash.
-
-# ARMv6 CPU without K extensions, but does have the new exclusive ops
-config MACH_REALVIEW_PB1176
-	bool "Support RealView(R) Platform Baseboard for ARM1176JZF-S"
-	depends on ARCH_MULTI_V6
-	select CPU_V6
-	select HAVE_TCM
-	select MIGHT_HAVE_CACHE_L2X0
-	help
-	  Include support for the ARM(R) RealView(R) Platform Baseboard for
-	  ARM1176JZF-S.
-
-config MACH_REALVIEW_PBA8
-	bool "Support RealView(R) Platform Baseboard for Cortex(tm)-A8 platform"
-	depends on ARCH_MULTI_V7
-	help
-	  Include support for the ARM(R) RealView Platform Baseboard for
-	  Cortex(tm)-A8.  This platform has an on-board Cortex-A8 and has
-	  support for PCI-E and Compact Flash.
-
-config MACH_REALVIEW_PBX
-	bool "Support RealView(R) Platform Baseboard Explore for Cortex-A9"
-	depends on ARCH_MULTI_V7
-	select HAVE_SMP
-	select MIGHT_HAVE_CACHE_L2X0
-	select ZONE_DMA
-	help
-	  Include support for the ARM(R) RealView(R) Platform Baseboard
-	  Explore.
-
-endif
diff --git a/arch/arm/mach-realview/Makefile b/arch/arm/mach-realview/Makefile
deleted file mode 100644
index e259091591b8..000000000000
--- a/arch/arm/mach-realview/Makefile
+++ /dev/null
@@ -1,8 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-#
-# Makefile for the linux kernel.
-#
-ccflags-$(CONFIG_ARCH_MULTIPLATFORM) := -I$(srctree)/arch/arm/plat-versatile/include
-
-obj-y					+= realview-dt.o
-obj-$(CONFIG_SMP)			+= platsmp-dt.o
diff --git a/arch/arm/mach-versatile/Kconfig b/arch/arm/mach-versatile/Kconfig
index f5c275434d6c..e6feca83451b 100644
--- a/arch/arm/mach-versatile/Kconfig
+++ b/arch/arm/mach-versatile/Kconfig
@@ -17,3 +17,363 @@ config ARCH_VERSATILE
 	help
 	  This enables support for ARM Ltd Versatile board.
 
+menuconfig ARCH_INTEGRATOR
+	bool "ARM Ltd. Integrator family"
+	depends on ARCH_MULTI_V4T || ARCH_MULTI_V5 || ARCH_MULTI_V6
+	select ARM_AMBA
+	select COMMON_CLK_VERSATILE
+	select HAVE_TCM
+	select ICST
+	select MFD_SYSCON
+	select PLAT_VERSATILE
+	select POWER_RESET
+	select POWER_RESET_VERSATILE
+	select POWER_SUPPLY
+	select SOC_INTEGRATOR_CM
+	select SPARSE_IRQ
+	select VERSATILE_FPGA_IRQ
+	help
+	  Support for ARM's Integrator platform.
+
+if ARCH_INTEGRATOR
+
+config ARCH_INTEGRATOR_AP
+	bool "Support Integrator/AP and Integrator/PP2 platforms"
+	select INTEGRATOR_AP_TIMER
+	select SERIAL_AMBA_PL010 if TTY
+	select SERIAL_AMBA_PL010_CONSOLE if TTY
+	select SOC_BUS
+	help
+	  Include support for the ARM(R) Integrator/AP and
+	  Integrator/PP2 platforms.
+
+config INTEGRATOR_IMPD1
+	bool "Include support for Integrator/IM-PD1"
+	depends on ARCH_INTEGRATOR_AP
+	select ARM_VIC
+	select GPIO_PL061
+	select GPIOLIB
+	help
+	  The IM-PD1 is an add-on logic module for the Integrator which
+	  allows ARM(R) Ltd PrimeCells to be developed and evaluated.
+	  The IM-PD1 can be found on the Integrator/PP2 platform.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called impd1.
+
+config INTEGRATOR_CM7TDMI
+	bool "Integrator/CM7TDMI core module"
+	depends on ARCH_INTEGRATOR_AP
+	depends on ARCH_MULTI_V4 && !MMU
+	select CPU_ARM7TDMI
+
+config INTEGRATOR_CM720T
+	bool "Integrator/CM720T core module"
+	depends on ARCH_INTEGRATOR_AP
+	depends on ARCH_MULTI_V4T
+	select CPU_ARM720T
+
+config INTEGRATOR_CM740T
+	bool "Integrator/CM740T core module"
+	depends on ARCH_INTEGRATOR_AP
+	depends on ARCH_MULTI_V4T && !MMU
+	select CPU_ARM740T
+
+config INTEGRATOR_CM920T
+	bool "Integrator/CM920T core module"
+	depends on ARCH_INTEGRATOR_AP
+	depends on ARCH_MULTI_V4T
+	select CPU_ARM920T
+
+config INTEGRATOR_CM922T_XA10
+	bool "Integrator/CM922T-XA10 core module"
+	depends on ARCH_MULTI_V4T
+	depends on ARCH_INTEGRATOR_AP
+	select CPU_ARM922T
+
+config INTEGRATOR_CM926EJS
+	bool "Integrator/CM926EJ-S core module"
+	depends on ARCH_INTEGRATOR_AP
+	depends on ARCH_MULTI_V5
+	select CPU_ARM926T
+
+config INTEGRATOR_CM940T
+	bool "Integrator/CM940T core module"
+	depends on ARCH_INTEGRATOR_AP
+	depends on ARCH_MULTI_V4T && !MMU
+	select CPU_ARM940T
+
+config INTEGRATOR_CM946ES
+	bool "Integrator/CM946E-S core module"
+	depends on ARCH_INTEGRATOR_AP
+	depends on ARCH_MULTI_V5 && !MMU
+	select CPU_ARM946E
+
+config INTEGRATOR_CM966ES
+	bool "Integrator/CM966E-S core module"
+	depends on ARCH_INTEGRATOR_AP
+	depends on BROKEN # no kernel support
+
+config INTEGRATOR_CM10200E_REV0
+	bool "Integrator/CM10200E rev.0 core module"
+	depends on ARCH_INTEGRATOR_AP && n
+	depends on ARCH_MULTI_V5
+	select CPU_ARM1020
+
+config INTEGRATOR_CM10200E
+	bool "Integrator/CM10200E core module"
+	depends on ARCH_INTEGRATOR_AP && n
+	depends on ARCH_MULTI_V5
+	select CPU_ARM1020E
+
+config INTEGRATOR_CM10220E
+	bool "Integrator/CM10220E core module"
+	depends on ARCH_INTEGRATOR_AP
+	depends on ARCH_MULTI_V5
+	select CPU_ARM1022
+
+config INTEGRATOR_CM1026EJS
+	bool "Integrator/CM1026EJ-S core module"
+	depends on ARCH_INTEGRATOR_AP
+	depends on ARCH_MULTI_V5
+	select CPU_ARM1026
+
+config INTEGRATOR_CM1136JFS
+	bool "Integrator/CM1136JF-S core module"
+	depends on ARCH_INTEGRATOR_AP
+	depends on ARCH_MULTI_V6
+	select CPU_V6
+
+config ARCH_INTEGRATOR_CP
+	bool "Support Integrator/CP platform"
+	depends on (!MMU || ARCH_MULTI_V5 || ARCH_MULTI_V6)
+	select ARM_TIMER_SP804
+	select SERIAL_AMBA_PL011 if TTY
+	select SERIAL_AMBA_PL011_CONSOLE if TTY
+	select SOC_BUS
+	help
+	  Include support for the ARM(R) Integrator CP platform.
+
+config INTEGRATOR_CT7T
+	bool "Integrator/CT7TD (ARM7TDMI) core tile"
+	depends on ARCH_INTEGRATOR_CP
+	depends on ARCH_MULTI_V4T && !MMU
+	select CPU_ARM7TDMI
+
+config INTEGRATOR_CT926
+	bool "Integrator/CT926 (ARM926EJ-S) core tile"
+	depends on ARCH_INTEGRATOR_CP
+	depends on ARCH_MULTI_V5
+	select CPU_ARM926T
+
+config INTEGRATOR_CTB36
+	bool "Integrator/CTB36 (ARM1136JF-S) core tile"
+	depends on ARCH_INTEGRATOR_CP
+	depends on ARCH_MULTI_V6
+	select CPU_V6
+
+config ARCH_CINTEGRATOR
+	depends on ARCH_INTEGRATOR_CP
+	def_bool y
+
+endif
+
+menuconfig ARCH_REALVIEW
+	bool "ARM Ltd. RealView family"
+	depends on ARCH_MULTI_V5 || ARCH_MULTI_V6 || ARCH_MULTI_V7
+	select ARM_AMBA
+	select ARM_GIC
+	select ARM_TIMER_SP804
+	select CLK_SP810
+	select COMMON_CLK_VERSATILE
+	select GPIO_PL061 if GPIOLIB
+	select HAVE_ARM_SCU if SMP
+	select HAVE_ARM_TWD if SMP
+	select HAVE_PATA_PLATFORM
+	select HAVE_TCM
+	select ICST
+	select MACH_REALVIEW_EB if ARCH_MULTI_V5
+	select MFD_SYSCON
+	select PLAT_VERSATILE
+	select PLAT_VERSATILE_SCHED_CLOCK
+	select POWER_RESET
+	select POWER_RESET_VERSATILE
+	select POWER_SUPPLY
+	select SOC_REALVIEW
+	select USE_OF
+	help
+	  This enables support for ARM Ltd RealView boards.
+
+if ARCH_REALVIEW
+
+config PLAT_VERSATILE_SCHED_CLOCK
+	bool
+
+config MACH_REALVIEW_EB
+	bool "Support RealView(R) Emulation Baseboard"
+	select ARM_GIC
+	select CPU_ARM926T if ARCH_MULTI_V5
+	help
+	  Include support for the ARM(R) RealView(R) Emulation Baseboard
+	  platform. On an ARMv5 kernel, this will include support for
+	  the ARM926EJ-S core tile, while on an ARMv6/v7 kernel, at least
+	  one of the ARM1136, ARM1176, ARM11MPCore or Cortex-A9MPCore
+	  core tile options should be enabled.
+
+config REALVIEW_EB_ARM1136
+	bool "Support ARM1136J(F)-S Tile"
+	depends on MACH_REALVIEW_EB && ARCH_MULTI_V6
+	select CPU_V6
+	help
+	  Enable support for the ARM1136 tile fitted to the
+	  Realview(R) Emulation Baseboard platform.
+
+config REALVIEW_EB_ARM1176
+	bool "Support ARM1176JZ(F)-S Tile"
+	depends on MACH_REALVIEW_EB && ARCH_MULTI_V6
+	help
+	  Enable support for the ARM1176 tile fitted to the
+	  Realview(R) Emulation Baseboard platform.
+
+config REALVIEW_EB_A9MP
+	bool "Support Multicore Cortex-A9 Tile"
+	depends on MACH_REALVIEW_EB && ARCH_MULTI_V7
+	select HAVE_SMP
+	select MIGHT_HAVE_CACHE_L2X0
+	help
+	  Enable support for the Cortex-A9MPCore tile fitted to the
+	  Realview(R) Emulation Baseboard platform.
+
+config REALVIEW_EB_ARM11MP
+	bool "Support ARM11MPCore Tile"
+	depends on MACH_REALVIEW_EB && ARCH_MULTI_V6
+	select HAVE_SMP
+	select MIGHT_HAVE_CACHE_L2X0
+	help
+	  Enable support for the ARM11MPCore tile fitted to the Realview(R)
+	  Emulation Baseboard platform.
+
+config MACH_REALVIEW_PB11MP
+	bool "Support RealView(R) Platform Baseboard for ARM11MPCore"
+	depends on ARCH_MULTI_V6
+	select HAVE_SMP
+	select MIGHT_HAVE_CACHE_L2X0
+	help
+	  Include support for the ARM(R) RealView(R) Platform Baseboard for
+	  the ARM11MPCore.  This platform has an on-board ARM11MPCore and has
+	  support for PCI-E and Compact Flash.
+
+# ARMv6 CPU without K extensions, but does have the new exclusive ops
+config MACH_REALVIEW_PB1176
+	bool "Support RealView(R) Platform Baseboard for ARM1176JZF-S"
+	depends on ARCH_MULTI_V6
+	select CPU_V6
+	select HAVE_TCM
+	select MIGHT_HAVE_CACHE_L2X0
+	help
+	  Include support for the ARM(R) RealView(R) Platform Baseboard for
+	  ARM1176JZF-S.
+
+config MACH_REALVIEW_PBA8
+	bool "Support RealView(R) Platform Baseboard for Cortex(tm)-A8 platform"
+	depends on ARCH_MULTI_V7
+	help
+	  Include support for the ARM(R) RealView Platform Baseboard for
+	  Cortex(tm)-A8.  This platform has an on-board Cortex-A8 and has
+	  support for PCI-E and Compact Flash.
+
+config MACH_REALVIEW_PBX
+	bool "Support RealView(R) Platform Baseboard Explore for Cortex-A9"
+	depends on ARCH_MULTI_V7
+	select HAVE_SMP
+	select MIGHT_HAVE_CACHE_L2X0
+	select ZONE_DMA
+	help
+	  Include support for the ARM(R) RealView(R) Platform Baseboard
+	  Explore.
+
+endif
+
+menuconfig ARCH_VEXPRESS
+	bool "ARM Ltd. Versatile Express family"
+	depends on ARCH_MULTI_V7
+	select ARCH_SUPPORTS_BIG_ENDIAN
+	select ARM_AMBA
+	select ARM_GIC
+	select ARM_GLOBAL_TIMER
+	select ARM_TIMER_SP804
+	select COMMON_CLK_VERSATILE
+	select GPIOLIB
+	select HAVE_ARM_SCU if SMP
+	select HAVE_ARM_TWD if SMP
+	select HAVE_PATA_PLATFORM
+	select ICST
+	select NO_IOPORT_MAP
+	select PLAT_VERSATILE
+	select POWER_RESET
+	select POWER_RESET_VEXPRESS
+	select POWER_SUPPLY
+	select REGULATOR if MMC_ARMMMCI
+	select REGULATOR_FIXED_VOLTAGE if REGULATOR
+	select VEXPRESS_CONFIG
+	select VEXPRESS_SYSCFG
+	select MFD_VEXPRESS_SYSREG
+	help
+	  This option enables support for systems using Cortex processor based
+	  ARM core and logic (FPGA) tiles on the Versatile Express motherboard,
+	  for example:
+
+	  - CoreTile Express A5x2 (V2P-CA5s)
+	  - CoreTile Express A9x4 (V2P-CA9)
+	  - CoreTile Express A15x2 (V2P-CA15)
+	  - LogicTile Express 13MG (V2F-2XV6) with A5, A7, A9 or A15 SMMs
+	    (Soft Macrocell Models)
+	  - Versatile Express RTSMs (Models)
+
+	  You must boot using a Flattened Device Tree in order to use these
+	  platforms. The traditional (ATAGs) boot method is not usable on
+	  these boards with this option.
+
+if ARCH_VEXPRESS
+
+config ARCH_VEXPRESS_CORTEX_A5_A9_ERRATA
+	bool "Enable A5 and A9 only errata work-arounds"
+	default y
+	select ARM_ERRATA_643719 if SMP
+	select ARM_ERRATA_720789
+	select PL310_ERRATA_753970 if CACHE_L2X0
+	help
+	  Provides common dependencies for Versatile Express platforms
+	  based on Cortex-A5 and Cortex-A9 processors. In order to
+	  build a working kernel, you must also enable relevant core
+	  tile support or Flattened Device Tree based support options.
+
+config ARCH_VEXPRESS_DCSCB
+	bool "Dual Cluster System Control Block (DCSCB) support"
+	depends on MCPM
+	select ARM_CCI400_PORT_CTRL
+	help
+	  Support for the Dual Cluster System Configuration Block (DCSCB).
+	  This is needed to provide CPU and cluster power management
+	  on RTSM implementing big.LITTLE.
+
+config ARCH_VEXPRESS_SPC
+	bool "Versatile Express Serial Power Controller (SPC)"
+	select PM_OPP
+	help
+	  The TC2 (A15x2 A7x3) versatile express core tile integrates a logic
+	  block called Serial Power Controller (SPC) that provides the interface
+	  between the dual cluster test-chip and the M3 microcontroller that
+	  carries out power management.
+
+config ARCH_VEXPRESS_TC2_PM
+	bool "Versatile Express TC2 power management"
+	depends on MCPM
+	select ARM_CCI400_PORT_CTRL
+	select ARCH_VEXPRESS_SPC
+	select ARM_CPU_SUSPEND
+	help
+	  Support for CPU and cluster power management on Versatile Express
+	  with a TC2 (A15x2 A7x3) big.LITTLE core tile.
+
+endif
diff --git a/arch/arm/mach-versatile/Makefile b/arch/arm/mach-versatile/Makefile
index 2b907718d467..fe8b62714ee1 100644
--- a/arch/arm/mach-versatile/Makefile
+++ b/arch/arm/mach-versatile/Makefile
@@ -3,4 +3,36 @@
 # Makefile for the linux kernel.
 #
 
-obj-y					:= versatile_dt.o
+# versatile
+obj-$(CONFIG_ARCH_VERSATILE)		+= versatile_dt.o
+
+# integrator
+obj-$(CONFIG_ARCH_INTEGRATOR)		+= core.o lm.o
+obj-$(CONFIG_ARCH_INTEGRATOR_AP)	+= integrator_ap.o
+obj-$(CONFIG_ARCH_INTEGRATOR_CP)	+= integrator_cp.o
+obj-$(CONFIG_INTEGRATOR_IMPD1)		+= impd1.o
+
+# realview
+obj-$(CONFIG_ARCH_REALVIEW)		+= realview-dt.o
+obj-$(CONFIG_PLAT_VERSATILE_SCHED_CLOCK) += sched-clock.o
+
+# vexpress
+obj-$(CONFIG_ARCH_VEXPRESS)		:= v2m.o
+obj-$(CONFIG_ARCH_VEXPRESS_DCSCB)	+= dcscb.o	dcscb_setup.o
+CFLAGS_dcscb.o				+= -march=armv7-a
+CFLAGS_REMOVE_dcscb.o			= -pg
+obj-$(CONFIG_ARCH_VEXPRESS_SPC)		+= spc.o
+CFLAGS_REMOVE_spc.o			= -pg
+obj-$(CONFIG_ARCH_VEXPRESS_TC2_PM)	+= tc2_pm.o
+CFLAGS_tc2_pm.o				+= -march=armv7-a
+CFLAGS_REMOVE_tc2_pm.o			= -pg
+
+# mps2
+obj-$(CONFIG_ARCH_MPS2)			+= v2m-mps2.o
+
+ifdef CONFIG_SMP
+obj-y					+= headsmp.o platsmp.o
+obj-$(CONFIG_ARCH_REALVIEW)		+= platsmp-realview.o
+obj-$(CONFIG_ARCH_VEXPRESS)		+= platsmp-vexpress.o
+obj-$(CONFIG_HOTPLUG_CPU)		+= hotplug.o
+endif
diff --git a/arch/arm/mach-vexpress/Makefile.boot b/arch/arm/mach-versatile/Makefile.boot
similarity index 100%
rename from arch/arm/mach-vexpress/Makefile.boot
rename to arch/arm/mach-versatile/Makefile.boot
diff --git a/arch/arm/mach-integrator/cm.h b/arch/arm/mach-versatile/cm.h
similarity index 100%
rename from arch/arm/mach-integrator/cm.h
rename to arch/arm/mach-versatile/cm.h
diff --git a/arch/arm/mach-integrator/common.h b/arch/arm/mach-versatile/common.h
similarity index 100%
rename from arch/arm/mach-integrator/common.h
rename to arch/arm/mach-versatile/common.h
diff --git a/arch/arm/mach-integrator/core.c b/arch/arm/mach-versatile/core.c
similarity index 97%
rename from arch/arm/mach-integrator/core.c
rename to arch/arm/mach-versatile/core.c
index 9da3ae232211..40294435cfef 100644
--- a/arch/arm/mach-integrator/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- *  linux/arch/arm/mach-integrator/core.c
- *
  *  Copyright (C) 2000-2003 Deep Blue Solutions Ltd
  */
 #include <linux/types.h>
diff --git a/arch/arm/mach-vexpress/core.h b/arch/arm/mach-versatile/core.h
similarity index 100%
rename from arch/arm/mach-vexpress/core.h
rename to arch/arm/mach-versatile/core.h
diff --git a/arch/arm/mach-vexpress/dcscb.c b/arch/arm/mach-versatile/dcscb.c
similarity index 98%
rename from arch/arm/mach-vexpress/dcscb.c
rename to arch/arm/mach-versatile/dcscb.c
index 46a903c88c6a..ced7d6a6cb8f 100644
--- a/arch/arm/mach-vexpress/dcscb.c
+++ b/arch/arm/mach-versatile/dcscb.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * arch/arm/mach-vexpress/dcscb.c - Dual Cluster System Configuration Block
+ * dcscb.c - Dual Cluster System Configuration Block
  *
  * Created by:	Nicolas Pitre, May 2012
  * Copyright:	(C) 2012-2013  Linaro Limited
diff --git a/arch/arm/mach-vexpress/dcscb_setup.S b/arch/arm/mach-versatile/dcscb_setup.S
similarity index 95%
rename from arch/arm/mach-vexpress/dcscb_setup.S
rename to arch/arm/mach-versatile/dcscb_setup.S
index 0614b2ebd354..92d1fd9d7f6a 100644
--- a/arch/arm/mach-vexpress/dcscb_setup.S
+++ b/arch/arm/mach-versatile/dcscb_setup.S
@@ -1,7 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * arch/arm/include/asm/dcscb_setup.S
- *
  * Created by:  Dave Martin, 2012-06-22
  * Copyright:   (C) 2012-2013  Linaro Limited
  */
diff --git a/arch/arm/mach-integrator/hardware.h b/arch/arm/mach-versatile/hardware.h
similarity index 100%
rename from arch/arm/mach-integrator/hardware.h
rename to arch/arm/mach-versatile/hardware.h
diff --git a/arch/arm/plat-versatile/headsmp.S b/arch/arm/mach-versatile/headsmp.S
similarity index 94%
rename from arch/arm/plat-versatile/headsmp.S
rename to arch/arm/mach-versatile/headsmp.S
index 09d9fc30c8ca..99c32db412ae 100644
--- a/arch/arm/plat-versatile/headsmp.S
+++ b/arch/arm/mach-versatile/headsmp.S
@@ -1,7 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- *  linux/arch/arm/plat-versatile/headsmp.S
- *
  *  Copyright (c) 2003 ARM Limited
  *  All Rights Reserved
  */
diff --git a/arch/arm/plat-versatile/hotplug.c b/arch/arm/mach-versatile/hotplug.c
similarity index 98%
rename from arch/arm/plat-versatile/hotplug.c
rename to arch/arm/mach-versatile/hotplug.c
index 2e9dca38bec0..5a152175578b 100644
--- a/arch/arm/plat-versatile/hotplug.c
+++ b/arch/arm/mach-versatile/hotplug.c
@@ -15,7 +15,7 @@
 #include <asm/smp_plat.h>
 #include <asm/cp15.h>
 
-#include <plat/platsmp.h>
+#include "platsmp.h"
 
 static inline void versatile_immitation_enter_lowpower(unsigned int actrl_mask)
 {
diff --git a/arch/arm/mach-integrator/impd1.c b/arch/arm/mach-versatile/impd1.c
similarity index 99%
rename from arch/arm/mach-integrator/impd1.c
rename to arch/arm/mach-versatile/impd1.c
index 1ecbea5331d6..89649a3fe332 100644
--- a/arch/arm/mach-integrator/impd1.c
+++ b/arch/arm/mach-versatile/impd1.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- *  linux/arch/arm/mach-integrator/impd1.c
- *
  *  Copyright (C) 2003 Deep Blue Solutions Ltd, All Rights Reserved.
  *
  *  This file provides the core support for the IM-PD1 module.
diff --git a/arch/arm/mach-integrator/impd1.h b/arch/arm/mach-versatile/impd1.h
similarity index 100%
rename from arch/arm/mach-integrator/impd1.h
rename to arch/arm/mach-versatile/impd1.h
diff --git a/arch/arm/mach-integrator/integrator_ap.c b/arch/arm/mach-versatile/integrator_ap.c
similarity index 98%
rename from arch/arm/mach-integrator/integrator_ap.c
rename to arch/arm/mach-versatile/integrator_ap.c
index 035069ea2c8b..0001aca181c2 100644
--- a/arch/arm/mach-integrator/integrator_ap.c
+++ b/arch/arm/mach-versatile/integrator_ap.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
- *  linux/arch/arm/mach-integrator/integrator_ap.c
- *
  *  Copyright (C) 2000-2003 Deep Blue Solutions Ltd
  */
 #include <linux/kernel.h>
diff --git a/arch/arm/mach-integrator/integrator_cp.c b/arch/arm/mach-versatile/integrator_cp.c
similarity index 98%
rename from arch/arm/mach-integrator/integrator_cp.c
rename to arch/arm/mach-versatile/integrator_cp.c
index b7eb4038798b..9cbcb3e97558 100644
--- a/arch/arm/mach-integrator/integrator_cp.c
+++ b/arch/arm/mach-versatile/integrator_cp.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- *  linux/arch/arm/mach-integrator/integrator_cp.c
- *
  *  Copyright (C) 2003 Deep Blue Solutions Ltd
  */
 #include <linux/kernel.h>
diff --git a/arch/arm/mach-integrator/lm.c b/arch/arm/mach-versatile/lm.c
similarity index 97%
rename from arch/arm/mach-integrator/lm.c
rename to arch/arm/mach-versatile/lm.c
index 55cd173d1d76..1bf3ec2ac770 100644
--- a/arch/arm/mach-integrator/lm.c
+++ b/arch/arm/mach-versatile/lm.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- *  linux/arch/arm/mach-integrator/lm.c
- *
  *  Copyright (C) 2003 Deep Blue Solutions Ltd, All Rights Reserved.
  */
 #include <linux/module.h>
diff --git a/arch/arm/mach-integrator/lm.h b/arch/arm/mach-versatile/lm.h
similarity index 100%
rename from arch/arm/mach-integrator/lm.h
rename to arch/arm/mach-versatile/lm.h
diff --git a/arch/arm/mach-realview/platsmp-dt.c b/arch/arm/mach-versatile/platsmp-realview.c
similarity index 98%
rename from arch/arm/mach-realview/platsmp-dt.c
rename to arch/arm/mach-versatile/platsmp-realview.c
index 5ae783767a5d..5d363385c801 100644
--- a/arch/arm/mach-realview/platsmp-dt.c
+++ b/arch/arm/mach-versatile/platsmp-realview.c
@@ -13,7 +13,7 @@
 #include <asm/smp_plat.h>
 #include <asm/smp_scu.h>
 
-#include <plat/platsmp.h>
+#include "platsmp.h"
 
 #define REALVIEW_SYS_FLAGSSET_OFFSET	0x30
 
diff --git a/arch/arm/mach-vexpress/platsmp.c b/arch/arm/mach-versatile/platsmp-vexpress.c
similarity index 96%
rename from arch/arm/mach-vexpress/platsmp.c
rename to arch/arm/mach-versatile/platsmp-vexpress.c
index 99c93124aa68..a2228c7a3d99 100644
--- a/arch/arm/mach-vexpress/platsmp.c
+++ b/arch/arm/mach-versatile/platsmp-vexpress.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- *  linux/arch/arm/mach-vexpress/platsmp.c
- *
  *  Copyright (C) 2002 ARM Ltd.
  *  All Rights Reserved
  */
@@ -16,8 +14,7 @@
 #include <asm/smp_scu.h>
 #include <asm/mach/map.h>
 
-#include <plat/platsmp.h>
-
+#include "platsmp.h"
 #include "core.h"
 
 bool __init vexpress_smp_init_ops(void)
diff --git a/arch/arm/plat-versatile/platsmp.c b/arch/arm/mach-versatile/platsmp.c
similarity index 97%
rename from arch/arm/plat-versatile/platsmp.c
rename to arch/arm/mach-versatile/platsmp.c
index 3567296cec2a..fa7378321e23 100644
--- a/arch/arm/plat-versatile/platsmp.c
+++ b/arch/arm/mach-versatile/platsmp.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- *  linux/arch/arm/plat-versatile/platsmp.c
- *
  *  Copyright (C) 2002 ARM Ltd.
  *  All Rights Reserved
  *
@@ -20,7 +18,7 @@
 #include <asm/cacheflush.h>
 #include <asm/smp_plat.h>
 
-#include <plat/platsmp.h>
+#include "platsmp.h"
 
 /*
  * versatile_cpu_release controls the release of CPUs from the holding
diff --git a/arch/arm/plat-versatile/include/plat/platsmp.h b/arch/arm/mach-versatile/platsmp.h
similarity index 87%
rename from arch/arm/plat-versatile/include/plat/platsmp.h
rename to arch/arm/mach-versatile/platsmp.h
index 500605f48b80..171a0ab72220 100644
--- a/arch/arm/plat-versatile/include/plat/platsmp.h
+++ b/arch/arm/mach-versatile/platsmp.h
@@ -1,7 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- *  linux/arch/arm/plat-versatile/include/plat/platsmp.h
- *
  *  Copyright (C) 2011 ARM Ltd.
  *  All Rights Reserved
  */
diff --git a/arch/arm/mach-realview/realview-dt.c b/arch/arm/mach-versatile/realview-dt.c
similarity index 100%
rename from arch/arm/mach-realview/realview-dt.c
rename to arch/arm/mach-versatile/realview-dt.c
diff --git a/arch/arm/plat-versatile/sched-clock.c b/arch/arm/mach-versatile/sched-clock.c
similarity index 86%
rename from arch/arm/plat-versatile/sched-clock.c
rename to arch/arm/mach-versatile/sched-clock.c
index ecb7913d2f53..4e3ffa4156f3 100644
--- a/arch/arm/plat-versatile/sched-clock.c
+++ b/arch/arm/mach-versatile/sched-clock.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
- *  linux/arch/arm/plat-versatile/sched-clock.c
- *
  *  Copyright (C) 1999 - 2003 ARM Limited
  *  Copyright (C) 2000 Deep Blue Solutions Ltd
  */
@@ -9,7 +7,7 @@
 #include <linux/io.h>
 #include <linux/sched_clock.h>
 
-#include <plat/sched_clock.h>
+#include "sched_clock.h"
 
 static void __iomem *ctr;
 
diff --git a/arch/arm/plat-versatile/include/plat/sched_clock.h b/arch/arm/mach-versatile/sched_clock.h
similarity index 100%
rename from arch/arm/plat-versatile/include/plat/sched_clock.h
rename to arch/arm/mach-versatile/sched_clock.h
diff --git a/arch/arm/mach-vexpress/spc.c b/arch/arm/mach-versatile/spc.c
similarity index 100%
rename from arch/arm/mach-vexpress/spc.c
rename to arch/arm/mach-versatile/spc.c
diff --git a/arch/arm/mach-vexpress/spc.h b/arch/arm/mach-versatile/spc.h
similarity index 100%
rename from arch/arm/mach-vexpress/spc.h
rename to arch/arm/mach-versatile/spc.h
diff --git a/arch/arm/mach-vexpress/tc2_pm.c b/arch/arm/mach-versatile/tc2_pm.c
similarity index 99%
rename from arch/arm/mach-vexpress/tc2_pm.c
rename to arch/arm/mach-versatile/tc2_pm.c
index e96c42ae3602..0fe78da0c109 100644
--- a/arch/arm/mach-vexpress/tc2_pm.c
+++ b/arch/arm/mach-versatile/tc2_pm.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * arch/arm/mach-vexpress/tc2_pm.c - TC2 power management support
- *
  * Created by:	Nicolas Pitre, October 2012
  * Copyright:	(C) 2012-2013  Linaro Limited
  *
diff --git a/arch/arm/mach-vexpress/v2m-mps2.c b/arch/arm/mach-versatile/v2m-mps2.c
similarity index 100%
rename from arch/arm/mach-vexpress/v2m-mps2.c
rename to arch/arm/mach-versatile/v2m-mps2.c
diff --git a/arch/arm/mach-vexpress/v2m.c b/arch/arm/mach-versatile/v2m.c
similarity index 100%
rename from arch/arm/mach-vexpress/v2m.c
rename to arch/arm/mach-versatile/v2m.c
diff --git a/arch/arm/mach-vexpress/Kconfig b/arch/arm/mach-vexpress/Kconfig
deleted file mode 100644
index 726a68085c3b..000000000000
--- a/arch/arm/mach-vexpress/Kconfig
+++ /dev/null
@@ -1,84 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-menuconfig ARCH_VEXPRESS
-	bool "ARM Ltd. Versatile Express family"
-	depends on ARCH_MULTI_V7
-	select ARCH_SUPPORTS_BIG_ENDIAN
-	select ARM_AMBA
-	select ARM_GIC
-	select ARM_GLOBAL_TIMER
-	select ARM_TIMER_SP804
-	select COMMON_CLK_VERSATILE
-	select GPIOLIB
-	select HAVE_ARM_SCU if SMP
-	select HAVE_ARM_TWD if SMP
-	select HAVE_PATA_PLATFORM
-	select ICST
-	select NO_IOPORT_MAP
-	select PLAT_VERSATILE
-	select POWER_RESET
-	select POWER_RESET_VEXPRESS
-	select POWER_SUPPLY
-	select REGULATOR if MMC_ARMMMCI
-	select REGULATOR_FIXED_VOLTAGE if REGULATOR
-	select VEXPRESS_CONFIG
-	select VEXPRESS_SYSCFG
-	select MFD_VEXPRESS_SYSREG
-	help
-	  This option enables support for systems using Cortex processor based
-	  ARM core and logic (FPGA) tiles on the Versatile Express motherboard,
-	  for example:
-
-	  - CoreTile Express A5x2 (V2P-CA5s)
-	  - CoreTile Express A9x4 (V2P-CA9)
-	  - CoreTile Express A15x2 (V2P-CA15)
-	  - LogicTile Express 13MG (V2F-2XV6) with A5, A7, A9 or A15 SMMs
-	    (Soft Macrocell Models)
-	  - Versatile Express RTSMs (Models)
-
-	  You must boot using a Flattened Device Tree in order to use these
-	  platforms. The traditional (ATAGs) boot method is not usable on
-	  these boards with this option.
-
-if ARCH_VEXPRESS
-
-config ARCH_VEXPRESS_CORTEX_A5_A9_ERRATA
-	bool "Enable A5 and A9 only errata work-arounds"
-	default y
-	select ARM_ERRATA_643719 if SMP
-	select ARM_ERRATA_720789
-	select PL310_ERRATA_753970 if CACHE_L2X0
-	help
-	  Provides common dependencies for Versatile Express platforms
-	  based on Cortex-A5 and Cortex-A9 processors. In order to
-	  build a working kernel, you must also enable relevant core
-	  tile support or Flattened Device Tree based support options.
-
-config ARCH_VEXPRESS_DCSCB
-	bool "Dual Cluster System Control Block (DCSCB) support"
-	depends on MCPM
-	select ARM_CCI400_PORT_CTRL
-	help
-	  Support for the Dual Cluster System Configuration Block (DCSCB).
-	  This is needed to provide CPU and cluster power management
-	  on RTSM implementing big.LITTLE.
-
-config ARCH_VEXPRESS_SPC
-	bool "Versatile Express Serial Power Controller (SPC)"
-	select PM_OPP
-	help
-	  The TC2 (A15x2 A7x3) versatile express core tile integrates a logic
-	  block called Serial Power Controller (SPC) that provides the interface
-	  between the dual cluster test-chip and the M3 microcontroller that
-	  carries out power management.
-
-config ARCH_VEXPRESS_TC2_PM
-	bool "Versatile Express TC2 power management"
-	depends on MCPM
-	select ARM_CCI400_PORT_CTRL
-	select ARCH_VEXPRESS_SPC
-	select ARM_CPU_SUSPEND
-	help
-	  Support for CPU and cluster power management on Versatile Express
-	  with a TC2 (A15x2 A7x3) big.LITTLE core tile.
-
-endif
diff --git a/arch/arm/mach-vexpress/Makefile b/arch/arm/mach-vexpress/Makefile
deleted file mode 100644
index 3651a1ed0f2b..000000000000
--- a/arch/arm/mach-vexpress/Makefile
+++ /dev/null
@@ -1,19 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-#
-# Makefile for the linux kernel.
-#
-ccflags-$(CONFIG_ARCH_MULTIPLATFORM) := \
-	-I$(srctree)/arch/arm/plat-versatile/include
-
-obj-$(CONFIG_ARCH_VEXPRESS)		:= v2m.o
-obj-$(CONFIG_ARCH_VEXPRESS_DCSCB)	+= dcscb.o	dcscb_setup.o
-CFLAGS_dcscb.o				+= -march=armv7-a
-CFLAGS_REMOVE_dcscb.o			= -pg
-obj-$(CONFIG_ARCH_VEXPRESS_SPC)		+= spc.o
-CFLAGS_REMOVE_spc.o			= -pg
-obj-$(CONFIG_ARCH_VEXPRESS_TC2_PM)	+= tc2_pm.o
-CFLAGS_tc2_pm.o				+= -march=armv7-a
-CFLAGS_REMOVE_tc2_pm.o			= -pg
-obj-$(CONFIG_SMP)			+= platsmp.o
-
-obj-$(CONFIG_ARCH_MPS2)			+= v2m-mps2.o
diff --git a/arch/arm/plat-versatile/Kconfig b/arch/arm/plat-versatile/Kconfig
deleted file mode 100644
index 748238f9f10e..000000000000
--- a/arch/arm/plat-versatile/Kconfig
+++ /dev/null
@@ -1,7 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-if PLAT_VERSATILE
-
-config PLAT_VERSATILE_SCHED_CLOCK
-	bool
-
-endif
diff --git a/arch/arm/plat-versatile/Makefile b/arch/arm/plat-versatile/Makefile
deleted file mode 100644
index e856f0a4ac6e..000000000000
--- a/arch/arm/plat-versatile/Makefile
+++ /dev/null
@@ -1,6 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-ccflags-$(CONFIG_ARCH_MULTIPLATFORM) := -I$(srctree)/$(src)/include
-
-obj-$(CONFIG_PLAT_VERSATILE_SCHED_CLOCK) += sched-clock.o
-obj-$(CONFIG_SMP) += headsmp.o platsmp.o
-obj-$(CONFIG_HOTPLUG_CPU)		+= hotplug.o
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
