Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414F5245A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 03:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gaS1hNE+015hu1HxrokuZH61nq1zPpW+TnVOd9qxd+g=; b=rMz+vp1QipKg3f
	/6aCxNjzh9AcRwNEZN10gLc4vOgUB5IPLwXNWvuTcfTlzhxPR7PJQChEgKTRUPAqwaIXVbAwq1/5E
	mQvWgq1Euhk3m8iUtGSDd66m8V7AqHzC69aChkz+EWA+JfyxbUa+jDRJBtf5fPqqWEfFiiyUMfZ8b
	O399e7lf+FMn0DYRihneTehxRHE7/5ASm67wnOsSLCKWRFFEVTH9Y+pDieQ8FLFTN3EabW5eXD/Qu
	ZIfRknbdSeRzaoj2zUL3hv7TX3+E1JONNvyUPLsN4WGW0fgdBujXjLm3v0ukeDTVJ4OI1bcpBeUkI
	7SZsNfl8ex28waCnWn7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hStbn-0004ua-UM; Tue, 21 May 2019 01:30:27 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hStbb-0004uB-OZ
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 01:30:21 +0000
Received: by mail-lf1-x143.google.com with SMTP id d8so11708791lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 18:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7763tMclQikVgAnIK9w9HUo2sxYPEPtaUb+Ut2PuR+U=;
 b=Yx4ffpNshdVMEBbBN9m5KAkc+T+dPxagYsiLM+pt0MA9SQGyTb0Z3jkzoKhXCj1VnJ
 aimoHYuZN07hErxKHRBEA0g72z+KhN3IGS/tvRZ2QxFV49BiOKcoToiGcepVMRpYt16V
 GaBOnNsxSYSo8zNy1tzpkPbtjoeUk+nIwQ+gtpH0cFubCWBbJuUFVwXvxWP3GJG/Lxcf
 5gMntFVMUJqD0NEW5Fvng+ByvDBa7qHRL537Eysdw59hpRx9VJRuHheCMR/2NbJzHd6Z
 xYXwHgyH9iF9PkuoG+gRhMEofCUV//DytAaki7O9gCc9MUSNFMOH/ZVJdaNPKmZWHO+Z
 KTkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7763tMclQikVgAnIK9w9HUo2sxYPEPtaUb+Ut2PuR+U=;
 b=BaRHXK9vFFerk2GDokegO7swgZFuMavn1szfAvjamxRw4yLejcdyT7v9xMmvLDZ6TP
 9HxRtypHoMslBYpFmZ6Md6pqubnmF/VwLRHVS3b52+axkySQCop57ZjKpxLKB265QzDw
 5AgIXKiI4lC9toPirHsy9sjeM/xcgAK9+7W/mv3sQw/Xuus9c1Q0fNTOKTuqAut7u371
 wvE8em/Fj9E1rdkT5a9PbZSkNlaub2XbJLKah8hBTcnTZbwdh1ECQtLRpnO+DhiNzj23
 fF2eKDp/k8smm1w8PwxBYDYDf7XtNox32od60mgN2D8xOmiNaqtopSawiokQ/WnxtOmh
 sgOQ==
X-Gm-Message-State: APjAAAXyesleDVB4B5gE/mkdh6QXX9+s5PmJIE7dJh925nhRKFF2ZXcX
 sW9GmBvsSPIK2sMgbTcwl+5HIwNgjTw=
X-Google-Smtp-Source: APXvYqwr7Yzqt3QW8wsxHkdLthRltWMqmnEDyHPuwCDz8CYJPDwhP3HnMAaND3298C2Oh69/DjQh0A==
X-Received: by 2002:a19:3f4b:: with SMTP id m72mr37773671lfa.32.1558402212435; 
 Mon, 20 May 2019 18:30:12 -0700 (PDT)
Received: from localhost.localdomain
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id w27sm4368026lfn.19.2019.05.20.18.30.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 18:30:11 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: delete netx machine
Date: Tue, 21 May 2019 03:28:01 +0200
Message-Id: <20190521012801.15355-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_183016_029366_1422BAE0 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Michael Trensch <MTrensch@hilscher.com>,
 Robert Schwebel <r.schwebel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After discussing with the subarch maintainers and Hilscher,
we concluded that the netx subarchitecture (Netx 100/500)
is no longer maintained or tested, and noone will miss it
if we delete it. So delete it.

There is a newer Netx 4000 architecture which we may see
included at some point, but this will be supported using
the standard multiplatform and devicetree mechanisms and is
easier to develop from scratch.

Cc: Michael Trensch <MTrensch@hilscher.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Robert Schwebel <r.schwebel@pengutronix.de>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
I will follow up with a pull request for this patch.
---
 arch/arm/Kconfig                             |  11 -
 arch/arm/Kconfig.debug                       |   7 -
 arch/arm/Makefile                            |   1 -
 arch/arm/configs/netx_defconfig              |  80 ----
 arch/arm/include/debug/netx.S                |  36 --
 arch/arm/mach-netx/Kconfig                   |  21 -
 arch/arm/mach-netx/Makefile                  |  12 -
 arch/arm/mach-netx/Makefile.boot             |   2 -
 arch/arm/mach-netx/fb.c                      |  77 ----
 arch/arm/mach-netx/fb.h                      |  24 --
 arch/arm/mach-netx/generic.c                 | 194 ---------
 arch/arm/mach-netx/generic.h                 |  26 --
 arch/arm/mach-netx/include/mach/hardware.h   |  39 --
 arch/arm/mach-netx/include/mach/irqs.h       |  70 ---
 arch/arm/mach-netx/include/mach/netx-regs.h  | 432 -------------------
 arch/arm/mach-netx/include/mach/pfifo.h      |  54 ---
 arch/arm/mach-netx/include/mach/uncompress.h |  75 ----
 arch/arm/mach-netx/include/mach/xc.h         |  42 --
 arch/arm/mach-netx/nxdb500.c                 | 209 ---------
 arch/arm/mach-netx/nxdkn.c                   | 102 -----
 arch/arm/mach-netx/nxeb500hmi.c              | 186 --------
 arch/arm/mach-netx/pfifo.c                   |  68 ---
 arch/arm/mach-netx/time.c                    | 153 -------
 arch/arm/mach-netx/xc.c                      | 258 -----------
 24 files changed, 2179 deletions(-)
 delete mode 100644 arch/arm/configs/netx_defconfig
 delete mode 100644 arch/arm/include/debug/netx.S
 delete mode 100644 arch/arm/mach-netx/Kconfig
 delete mode 100644 arch/arm/mach-netx/Makefile
 delete mode 100644 arch/arm/mach-netx/Makefile.boot
 delete mode 100644 arch/arm/mach-netx/fb.c
 delete mode 100644 arch/arm/mach-netx/fb.h
 delete mode 100644 arch/arm/mach-netx/generic.c
 delete mode 100644 arch/arm/mach-netx/generic.h
 delete mode 100644 arch/arm/mach-netx/include/mach/hardware.h
 delete mode 100644 arch/arm/mach-netx/include/mach/irqs.h
 delete mode 100644 arch/arm/mach-netx/include/mach/netx-regs.h
 delete mode 100644 arch/arm/mach-netx/include/mach/pfifo.h
 delete mode 100644 arch/arm/mach-netx/include/mach/uncompress.h
 delete mode 100644 arch/arm/mach-netx/include/mach/xc.h
 delete mode 100644 arch/arm/mach-netx/nxdb500.c
 delete mode 100644 arch/arm/mach-netx/nxdkn.c
 delete mode 100644 arch/arm/mach-netx/nxeb500hmi.c
 delete mode 100644 arch/arm/mach-netx/pfifo.c
 delete mode 100644 arch/arm/mach-netx/time.c
 delete mode 100644 arch/arm/mach-netx/xc.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8869742a85df..02c62baa9573 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -374,15 +374,6 @@ config ARCH_FOOTBRIDGE
 	  Support for systems based on the DC21285 companion chip
 	  ("FootBridge"), such as the Simtec CATS and the Rebel NetWinder.
 
-config ARCH_NETX
-	bool "Hilscher NetX based"
-	select ARM_VIC
-	select CLKSRC_MMIO
-	select CPU_ARM926T
-	select GENERIC_CLOCKEVENTS
-	help
-	  This enables support for systems based on the Hilscher NetX Soc
-
 config ARCH_IOP13XX
 	bool "IOP13xx-based"
 	depends on MMU
@@ -767,8 +758,6 @@ source "arch/arm/mach-mvebu/Kconfig"
 
 source "arch/arm/mach-mxs/Kconfig"
 
-source "arch/arm/mach-netx/Kconfig"
-
 source "arch/arm/mach-nomadik/Kconfig"
 
 source "arch/arm/mach-npcm/Kconfig"
diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index 9a8862fee738..c929bea9a9ff 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -638,13 +638,6 @@ choice
 		  Say Y here if you want kernel low-level debugging support
 		  for Mediatek mt8135 based platforms on UART3.
 
-	config DEBUG_NETX_UART
-		bool "Kernel low-level debugging messages via NetX UART"
-		depends on ARCH_NETX
-		help
-		  Say Y here if you want kernel low-level debugging support
-		  on Hilscher NetX based platforms.
-
 	config DEBUG_NOMADIK_UART
 		bool "Kernel low-level debugging messages via NOMADIK UART"
 		depends on ARCH_NOMADIK
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index f863c6935d0e..c3624ca6c0bc 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -191,7 +191,6 @@ machine-$(CONFIG_ARCH_MXC)		+= imx
 machine-$(CONFIG_ARCH_MEDIATEK)		+= mediatek
 machine-$(CONFIG_ARCH_MILBEAUT)		+= milbeaut
 machine-$(CONFIG_ARCH_MXS)		+= mxs
-machine-$(CONFIG_ARCH_NETX)		+= netx
 machine-$(CONFIG_ARCH_NOMADIK)		+= nomadik
 machine-$(CONFIG_ARCH_NPCM)		+= npcm
 machine-$(CONFIG_ARCH_NSPIRE)		+= nspire
diff --git a/arch/arm/configs/netx_defconfig b/arch/arm/configs/netx_defconfig
deleted file mode 100644
index cc5c5f9ef720..000000000000
--- a/arch/arm/configs/netx_defconfig
+++ /dev/null
@@ -1,80 +0,0 @@
-CONFIG_SYSVIPC=y
-CONFIG_POSIX_MQUEUE=y
-CONFIG_BSD_PROCESS_ACCT=y
-CONFIG_IKCONFIG=y
-CONFIG_IKCONFIG_PROC=y
-CONFIG_SLAB=y
-CONFIG_MODULES=y
-CONFIG_MODULE_UNLOAD=y
-CONFIG_MODULE_FORCE_UNLOAD=y
-CONFIG_ARCH_NETX=y
-CONFIG_MACH_NXDKN=y
-CONFIG_MACH_NXDB500=y
-CONFIG_MACH_NXEB500HMI=y
-CONFIG_PREEMPT=y
-CONFIG_ZBOOT_ROM_TEXT=0x0
-CONFIG_ZBOOT_ROM_BSS=0x0
-CONFIG_CMDLINE="console=ttySMX0,115200"
-CONFIG_NET=y
-CONFIG_PACKET=y
-CONFIG_UNIX=y
-CONFIG_XFRM_USER=m
-CONFIG_NET_KEY=y
-CONFIG_INET=y
-CONFIG_IP_MULTICAST=y
-CONFIG_IP_PNP=y
-CONFIG_IP_PNP_DHCP=y
-CONFIG_NET_IPGRE=m
-CONFIG_SYN_COOKIES=y
-CONFIG_INET_AH=y
-CONFIG_INET_ESP=y
-CONFIG_INET_IPCOMP=y
-CONFIG_INET6_AH=m
-CONFIG_INET6_ESP=m
-CONFIG_INET6_IPCOMP=m
-CONFIG_NETFILTER=y
-CONFIG_NET_PKTGEN=m
-CONFIG_MTD=y
-CONFIG_MTD_CMDLINE_PARTS=y
-CONFIG_MTD_BLOCK=y
-CONFIG_MTD_CFI=y
-CONFIG_MTD_CFI_INTELEXT=y
-CONFIG_MTD_PLATRAM=y
-CONFIG_BLK_DEV_LOOP=m
-CONFIG_BLK_DEV_CRYPTOLOOP=m
-CONFIG_NETDEVICES=y
-CONFIG_NET_ETHERNET=y
-CONFIG_NET_NETX=y
-# CONFIG_INPUT_MOUSEDEV_PSAUX is not set
-# CONFIG_INPUT_KEYBOARD is not set
-# CONFIG_INPUT_MOUSE is not set
-CONFIG_SERIAL_NETX=y
-CONFIG_SERIAL_NETX_CONSOLE=y
-# CONFIG_HWMON is not set
-CONFIG_FB=y
-CONFIG_FB_ARMCLCD=y
-# CONFIG_VGA_CONSOLE is not set
-CONFIG_FRAMEBUFFER_CONSOLE=y
-CONFIG_LOGO=y
-CONFIG_RTC_CLASS=y
-CONFIG_TMPFS=y
-CONFIG_JFFS2_FS=y
-CONFIG_NFS_FS=y
-CONFIG_NFS_V3=y
-CONFIG_NFS_V4=y
-CONFIG_ROOT_NFS=y
-CONFIG_MAGIC_SYSRQ=y
-CONFIG_DEBUG_KERNEL=y
-CONFIG_CRYPTO_NULL=m
-CONFIG_CRYPTO_MD4=m
-CONFIG_CRYPTO_MICHAEL_MIC=m
-CONFIG_CRYPTO_SHA256=m
-CONFIG_CRYPTO_SHA512=m
-CONFIG_CRYPTO_ARC4=m
-CONFIG_CRYPTO_BLOWFISH=m
-CONFIG_CRYPTO_CAST5=m
-CONFIG_CRYPTO_CAST6=m
-CONFIG_CRYPTO_SERPENT=m
-CONFIG_CRYPTO_TWOFISH=m
-CONFIG_CRC_CCITT=m
-CONFIG_LIBCRC32C=m
diff --git a/arch/arm/include/debug/netx.S b/arch/arm/include/debug/netx.S
deleted file mode 100644
index 81e1b2af70f7..000000000000
--- a/arch/arm/include/debug/netx.S
+++ /dev/null
@@ -1,36 +0,0 @@
-/*
- * Debugging macro include header
- *
- *  Copyright (C) 1994-1999 Russell King
- *  Moved from linux/arch/arm/kernel/debug.S by Ben Dooks
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
-*/
-
-#define UART_DATA 0
-#define UART_FLAG 0x18
-#define UART_FLAG_BUSY (1 << 3)
-
-		.macro	addruart, rp, rv, tmp
-		ldr	\rp, =CONFIG_DEBUG_UART_PHYS
-		ldr	\rv, =CONFIG_DEBUG_UART_VIRT
-		.endm
-
-		.macro	senduart,rd,rx
-		str	\rd, [\rx, #UART_DATA]
-		.endm
-
-		.macro	busyuart,rd,rx
-1002:		ldr	\rd, [\rx, #UART_FLAG]
-		tst	\rd, #UART_FLAG_BUSY
-		bne	1002b
-		.endm
-
-		.macro	waituart,rd,rx
-1001:		ldr	\rd, [\rx, #UART_FLAG]
-		tst	\rd, #UART_FLAG_BUSY
-		bne	1001b
-		.endm
diff --git a/arch/arm/mach-netx/Kconfig b/arch/arm/mach-netx/Kconfig
deleted file mode 100644
index 2da8e5dfcf24..000000000000
--- a/arch/arm/mach-netx/Kconfig
+++ /dev/null
@@ -1,21 +0,0 @@
-menu "NetX Implementations"
-	depends on ARCH_NETX
-
-config MACH_NXDKN
-	bool "Enable Hilscher nxdkn Eval Board support"
-	help
-	  Board support for the Hilscher NetX Eval Board
-
-config MACH_NXDB500
-	bool "Enable Hilscher nxdb500 Eval Board support"
-	select ARM_AMBA
-	help
-	  Board support for the Hilscher nxdb500 Eval Board
-
-config MACH_NXEB500HMI
-	bool "Enable Hilscher nxeb500hmi Eval Board support"
-	select ARM_AMBA
-	help
-	  Board support for the Hilscher nxeb500hmi Eval Board
-
-endmenu
diff --git a/arch/arm/mach-netx/Makefile b/arch/arm/mach-netx/Makefile
deleted file mode 100644
index 7ce4ba9eb242..000000000000
--- a/arch/arm/mach-netx/Makefile
+++ /dev/null
@@ -1,12 +0,0 @@
-#
-# Makefile for the linux kernel.
-#
-
-# Object file lists.
-
-obj-y			+= time.o generic.o pfifo.o xc.o
-
-# Specific board support
-obj-$(CONFIG_MACH_NXDKN) += nxdkn.o
-obj-$(CONFIG_MACH_NXDB500) += nxdb500.o fb.o
-obj-$(CONFIG_MACH_NXEB500HMI) += nxeb500hmi.o fb.o
diff --git a/arch/arm/mach-netx/Makefile.boot b/arch/arm/mach-netx/Makefile.boot
deleted file mode 100644
index 534a4d27055e..000000000000
--- a/arch/arm/mach-netx/Makefile.boot
+++ /dev/null
@@ -1,2 +0,0 @@
-    zreladdr-y			+= 0x80008000
-
diff --git a/arch/arm/mach-netx/fb.c b/arch/arm/mach-netx/fb.c
deleted file mode 100644
index 8814ee5e98fd..000000000000
--- a/arch/arm/mach-netx/fb.c
+++ /dev/null
@@ -1,77 +0,0 @@
-/*
- * arch/arm/mach-netx/fb.c
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-#include <linux/device.h>
-#include <linux/init.h>
-#include <linux/dma-mapping.h>
-#include <linux/amba/bus.h>
-#include <linux/amba/clcd.h>
-#include <linux/err.h>
-#include <linux/gfp.h>
-
-#include <asm/irq.h>
-
-#include <mach/netx-regs.h>
-#include <mach/hardware.h>
-
-static struct clcd_panel *netx_panel;
-
-void netx_clcd_enable(struct clcd_fb *fb)
-{
-}
-
-int netx_clcd_setup(struct clcd_fb *fb)
-{
-	dma_addr_t dma;
-
-	fb->panel = netx_panel;
-
-	fb->fb.screen_base = dma_alloc_wc(&fb->dev->dev, 1024 * 1024, &dma,
-					  GFP_KERNEL);
-	if (!fb->fb.screen_base) {
-		printk(KERN_ERR "CLCD: unable to map framebuffer\n");
-		return -ENOMEM;
-	}
-
-	fb->fb.fix.smem_start	= dma;
-	fb->fb.fix.smem_len	= 1024*1024;
-
-	return 0;
-}
-
-int netx_clcd_mmap(struct clcd_fb *fb, struct vm_area_struct *vma)
-{
-	return dma_mmap_wc(&fb->dev->dev, vma, fb->fb.screen_base,
-			   fb->fb.fix.smem_start, fb->fb.fix.smem_len);
-}
-
-void netx_clcd_remove(struct clcd_fb *fb)
-{
-	dma_free_wc(&fb->dev->dev, fb->fb.fix.smem_len, fb->fb.screen_base,
-		    fb->fb.fix.smem_start);
-}
-
-static AMBA_AHB_DEVICE(fb, "fb", 0, 0x00104000, { NETX_IRQ_LCD }, NULL);
-
-int netx_fb_init(struct clcd_board *board, struct clcd_panel *panel)
-{
-	netx_panel = panel;
-	fb_device.dev.platform_data = board;
-	return amba_device_register(&fb_device, &iomem_resource);
-}
diff --git a/arch/arm/mach-netx/fb.h b/arch/arm/mach-netx/fb.h
deleted file mode 100644
index 4919cf33a5f3..000000000000
--- a/arch/arm/mach-netx/fb.h
+++ /dev/null
@@ -1,24 +0,0 @@
-/*
- * arch/arm/mach-netx/fb.h
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-void netx_clcd_enable(struct clcd_fb *fb);
-int netx_clcd_setup(struct clcd_fb *fb);
-int netx_clcd_mmap(struct clcd_fb *fb, struct vm_area_struct *vma);
-void netx_clcd_remove(struct clcd_fb *fb);
-int netx_fb_init(struct clcd_board *board, struct clcd_panel *panel);
diff --git a/arch/arm/mach-netx/generic.c b/arch/arm/mach-netx/generic.c
deleted file mode 100644
index 842302df99c1..000000000000
--- a/arch/arm/mach-netx/generic.c
+++ /dev/null
@@ -1,194 +0,0 @@
-/*
- * arch/arm/mach-netx/generic.c
- *
- * Copyright (C) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-#include <linux/device.h>
-#include <linux/init.h>
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <linux/platform_device.h>
-#include <linux/io.h>
-#include <linux/irqchip/arm-vic.h>
-#include <linux/reboot.h>
-#include <mach/hardware.h>
-#include <asm/mach/map.h>
-#include <mach/netx-regs.h>
-#include <asm/mach/irq.h>
-
-static struct map_desc netx_io_desc[] __initdata = {
-	{
-		.virtual        = NETX_IO_VIRT,
-		.pfn            = __phys_to_pfn(NETX_IO_PHYS),
-		.length         = NETX_IO_SIZE,
-		.type           = MT_DEVICE
-	}
-};
-
-void __init netx_map_io(void)
-{
-	iotable_init(netx_io_desc, ARRAY_SIZE(netx_io_desc));
-}
-
-static struct resource netx_rtc_resources[] = {
-	[0] = {
-		.start	= 0x00101200,
-		.end	= 0x00101220,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct platform_device netx_rtc_device = {
-	.name		= "netx-rtc",
-	.id		= 0,
-	.num_resources	= ARRAY_SIZE(netx_rtc_resources),
-	.resource	= netx_rtc_resources,
-};
-
-static struct platform_device *devices[] __initdata = {
-	&netx_rtc_device,
-};
-
-#if 0
-#define DEBUG_IRQ(fmt...)	printk(fmt)
-#else
-#define DEBUG_IRQ(fmt...)	while (0) {}
-#endif
-
-static void netx_hif_demux_handler(struct irq_desc *desc)
-{
-	unsigned int irq = NETX_IRQ_HIF_CHAINED(0);
-	unsigned int stat;
-
-	stat = ((readl(NETX_DPMAS_INT_EN) &
-		readl(NETX_DPMAS_INT_STAT)) >> 24) & 0x1f;
-
-	while (stat) {
-		if (stat & 1) {
-			DEBUG_IRQ("handling irq %d\n", irq);
-			generic_handle_irq(irq);
-		}
-		irq++;
-		stat >>= 1;
-	}
-}
-
-static int
-netx_hif_irq_type(struct irq_data *d, unsigned int type)
-{
-	unsigned int val, irq;
-
-	val = readl(NETX_DPMAS_IF_CONF1);
-
-	irq = d->irq - NETX_IRQ_HIF_CHAINED(0);
-
-	if (type & IRQ_TYPE_EDGE_RISING) {
-		DEBUG_IRQ("rising edges\n");
-		val |= (1 << 26) << irq;
-	}
-	if (type & IRQ_TYPE_EDGE_FALLING) {
-		DEBUG_IRQ("falling edges\n");
-		val &= ~((1 << 26) << irq);
-	}
-	if (type & IRQ_TYPE_LEVEL_LOW) {
-		DEBUG_IRQ("low level\n");
-		val &= ~((1 << 26) << irq);
-	}
-	if (type & IRQ_TYPE_LEVEL_HIGH) {
-		DEBUG_IRQ("high level\n");
-		val |= (1 << 26) << irq;
-	}
-
-	writel(val, NETX_DPMAS_IF_CONF1);
-
-	return 0;
-}
-
-static void
-netx_hif_ack_irq(struct irq_data *d)
-{
-	unsigned int val, irq;
-
-	irq = d->irq - NETX_IRQ_HIF_CHAINED(0);
-	writel((1 << 24) << irq, NETX_DPMAS_INT_STAT);
-
-	val = readl(NETX_DPMAS_INT_EN);
-	val &= ~((1 << 24) << irq);
-	writel(val, NETX_DPMAS_INT_EN);
-
-	DEBUG_IRQ("%s: irq %d\n", __func__, d->irq);
-}
-
-static void
-netx_hif_mask_irq(struct irq_data *d)
-{
-	unsigned int val, irq;
-
-	irq = d->irq - NETX_IRQ_HIF_CHAINED(0);
-	val = readl(NETX_DPMAS_INT_EN);
-	val &= ~((1 << 24) << irq);
-	writel(val, NETX_DPMAS_INT_EN);
-	DEBUG_IRQ("%s: irq %d\n", __func__, d->irq);
-}
-
-static void
-netx_hif_unmask_irq(struct irq_data *d)
-{
-	unsigned int val, irq;
-
-	irq = d->irq - NETX_IRQ_HIF_CHAINED(0);
-	val = readl(NETX_DPMAS_INT_EN);
-	val |= (1 << 24) << irq;
-	writel(val, NETX_DPMAS_INT_EN);
-	DEBUG_IRQ("%s: irq %d\n", __func__, d->irq);
-}
-
-static struct irq_chip netx_hif_chip = {
-	.irq_ack = netx_hif_ack_irq,
-	.irq_mask = netx_hif_mask_irq,
-	.irq_unmask = netx_hif_unmask_irq,
-	.irq_set_type = netx_hif_irq_type,
-};
-
-void __init netx_init_irq(void)
-{
-	int irq;
-
-	vic_init(io_p2v(NETX_PA_VIC), NETX_IRQ_VIC_START, ~0, 0);
-
-	for (irq = NETX_IRQ_HIF_CHAINED(0); irq <= NETX_IRQ_HIF_LAST; irq++) {
-		irq_set_chip_and_handler(irq, &netx_hif_chip,
-					 handle_level_irq);
-		irq_clear_status_flags(irq, IRQ_NOREQUEST);
-	}
-
-	writel(NETX_DPMAS_INT_EN_GLB_EN, NETX_DPMAS_INT_EN);
-	irq_set_chained_handler(NETX_IRQ_HIF, netx_hif_demux_handler);
-}
-
-static int __init netx_init(void)
-{
-	return platform_add_devices(devices, ARRAY_SIZE(devices));
-}
-
-subsys_initcall(netx_init);
-
-void netx_restart(enum reboot_mode mode, const char *cmd)
-{
-	writel(NETX_SYSTEM_RES_CR_FIRMW_RES_EN | NETX_SYSTEM_RES_CR_FIRMW_RES,
-	       NETX_SYSTEM_RES_CR);
-}
diff --git a/arch/arm/mach-netx/generic.h b/arch/arm/mach-netx/generic.h
deleted file mode 100644
index bb2ce471cc28..000000000000
--- a/arch/arm/mach-netx/generic.h
+++ /dev/null
@@ -1,26 +0,0 @@
-/*
- * arch/arm/mach-netx/generic.h
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-#include <linux/reboot.h>
-
-extern void __init netx_map_io(void);
-extern void __init netx_init_irq(void);
-extern void netx_restart(enum reboot_mode, const char *);
-
-extern void netx_timer_init(void);
diff --git a/arch/arm/mach-netx/include/mach/hardware.h b/arch/arm/mach-netx/include/mach/hardware.h
deleted file mode 100644
index b661af2f2145..000000000000
--- a/arch/arm/mach-netx/include/mach/hardware.h
+++ /dev/null
@@ -1,39 +0,0 @@
-/*
- * arch/arm/mach-netx/include/mach/hardware.h
- *
- * Copyright (C) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-#ifndef __ASM_ARCH_HARDWARE_H
-#define __ASM_ARCH_HARDWARE_H
-
-#define NETX_IO_PHYS	0x00100000
-#define NETX_IO_VIRT	0xe0000000
-#define NETX_IO_SIZE	0x00100000
-
-#define SRAM_INTERNAL_PHYS_0 0x00000
-#define SRAM_INTERNAL_PHYS_1 0x08000
-#define SRAM_INTERNAL_PHYS_2 0x10000
-#define SRAM_INTERNAL_PHYS_3 0x18000
-#define SRAM_INTERNAL_PHYS(no) ((no) * 0x8000)
-
-#define XPEC_MEM_SIZE 0x4000
-#define XMAC_MEM_SIZE 0x1000
-#define SRAM_MEM_SIZE 0x8000
-
-#define io_p2v(x) IOMEM((x) - NETX_IO_PHYS + NETX_IO_VIRT)
-#define io_v2p(x) ((x) - NETX_IO_VIRT + NETX_IO_PHYS)
-
-#endif
diff --git a/arch/arm/mach-netx/include/mach/irqs.h b/arch/arm/mach-netx/include/mach/irqs.h
deleted file mode 100644
index 8f74a844a775..000000000000
--- a/arch/arm/mach-netx/include/mach/irqs.h
+++ /dev/null
@@ -1,70 +0,0 @@
-/*
- * arch/arm/mach-netx/include/mach/irqs.h
- *
- * Copyright (C) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-#define NETX_IRQ_VIC_START	64
-#define NETX_IRQ_SOFTINT	(NETX_IRQ_VIC_START + 0)
-#define NETX_IRQ_TIMER0		(NETX_IRQ_VIC_START + 1)
-#define NETX_IRQ_TIMER1		(NETX_IRQ_VIC_START + 2)
-#define NETX_IRQ_TIMER2		(NETX_IRQ_VIC_START + 3)
-#define NETX_IRQ_SYSTIME_NS	(NETX_IRQ_VIC_START + 4)
-#define NETX_IRQ_SYSTIME_S	(NETX_IRQ_VIC_START + 5)
-#define NETX_IRQ_GPIO_15	(NETX_IRQ_VIC_START + 6)
-#define NETX_IRQ_WATCHDOG	(NETX_IRQ_VIC_START + 7)
-#define NETX_IRQ_UART0		(NETX_IRQ_VIC_START + 8)
-#define NETX_IRQ_UART1		(NETX_IRQ_VIC_START + 9)
-#define NETX_IRQ_UART2		(NETX_IRQ_VIC_START + 10)
-#define NETX_IRQ_USB		(NETX_IRQ_VIC_START + 11)
-#define NETX_IRQ_SPI		(NETX_IRQ_VIC_START + 12)
-#define NETX_IRQ_I2C		(NETX_IRQ_VIC_START + 13)
-#define NETX_IRQ_LCD		(NETX_IRQ_VIC_START + 14)
-#define NETX_IRQ_HIF		(NETX_IRQ_VIC_START + 15)
-#define NETX_IRQ_GPIO_0_14	(NETX_IRQ_VIC_START + 16)
-#define NETX_IRQ_XPEC0		(NETX_IRQ_VIC_START + 17)
-#define NETX_IRQ_XPEC1		(NETX_IRQ_VIC_START + 18)
-#define NETX_IRQ_XPEC2		(NETX_IRQ_VIC_START + 19)
-#define NETX_IRQ_XPEC3		(NETX_IRQ_VIC_START + 20)
-#define NETX_IRQ_XPEC(no)	(NETX_IRQ_VIC_START + 17 + (no))
-#define NETX_IRQ_MSYNC0		(NETX_IRQ_VIC_START + 21)
-#define NETX_IRQ_MSYNC1		(NETX_IRQ_VIC_START + 22)
-#define NETX_IRQ_MSYNC2		(NETX_IRQ_VIC_START + 23)
-#define NETX_IRQ_MSYNC3		(NETX_IRQ_VIC_START + 24)
-#define NETX_IRQ_IRQ_PHY	(NETX_IRQ_VIC_START + 25)
-#define NETX_IRQ_ISO_AREA	(NETX_IRQ_VIC_START + 26)
-/* int 27 is reserved */
-/* int 28 is reserved */
-#define NETX_IRQ_TIMER3		(NETX_IRQ_VIC_START + 29)
-#define NETX_IRQ_TIMER4		(NETX_IRQ_VIC_START + 30)
-/* int 31 is reserved */
-
-#define NETX_IRQS 		(NETX_IRQ_VIC_START + 32)
-
-/* for multiplexed irqs on gpio 0..14 */
-#define NETX_IRQ_GPIO(x) (NETX_IRQS + (x))
-#define NETX_IRQ_GPIO_LAST NETX_IRQ_GPIO(14)
-
-/* Host interface interrupts */
-#define NETX_IRQ_HIF_CHAINED(x)    (NETX_IRQ_GPIO_LAST + 1 + (x))
-#define NETX_IRQ_HIF_PIO35         NETX_IRQ_HIF_CHAINED(0)
-#define NETX_IRQ_HIF_PIO36         NETX_IRQ_HIF_CHAINED(1)
-#define NETX_IRQ_HIF_PIO40         NETX_IRQ_HIF_CHAINED(2)
-#define NETX_IRQ_HIF_PIO47         NETX_IRQ_HIF_CHAINED(3)
-#define NETX_IRQ_HIF_PIO72         NETX_IRQ_HIF_CHAINED(4)
-#define NETX_IRQ_HIF_LAST          NETX_IRQ_HIF_CHAINED(4)
-
-#define NR_IRQS (NETX_IRQ_HIF_LAST + 1)
diff --git a/arch/arm/mach-netx/include/mach/netx-regs.h b/arch/arm/mach-netx/include/mach/netx-regs.h
deleted file mode 100644
index fdde22b58ac3..000000000000
--- a/arch/arm/mach-netx/include/mach/netx-regs.h
+++ /dev/null
@@ -1,432 +0,0 @@
-/*
- * arch/arm/mach-netx/include/mach/netx-regs.h
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-#ifndef __ASM_ARCH_NETX_REGS_H
-#define __ASM_ARCH_NETX_REGS_H
-
-/* offsets relative to the beginning of the io space */
-#define NETX_OFS_SYSTEM  0x00000
-#define NETX_OFS_MEMCR   0x00100
-#define NETX_OFS_DPMAS   0x03000
-#define NETX_OFS_GPIO    0x00800
-#define NETX_OFS_PIO     0x00900
-#define NETX_OFS_UART0   0x00a00
-#define NETX_OFS_UART1   0x00a40
-#define NETX_OFS_UART2   0x00a80
-#define NETX_OF_MIIMU    0x00b00
-#define NETX_OFS_SPI     0x00c00
-#define NETX_OFS_I2C     0x00d00
-#define NETX_OFS_SYSTIME 0x01100
-#define NETX_OFS_RTC     0x01200
-#define NETX_OFS_EXTBUS  0x03600
-#define NETX_OFS_LCD     0x04000
-#define NETX_OFS_USB     0x20000
-#define NETX_OFS_XMAC0   0x60000
-#define NETX_OFS_XMAC1   0x61000
-#define NETX_OFS_XMAC2   0x62000
-#define NETX_OFS_XMAC3   0x63000
-#define NETX_OFS_XMAC(no) (0x60000 + (no) * 0x1000)
-#define NETX_OFS_PFIFO   0x64000
-#define NETX_OFS_XPEC0   0x70000
-#define NETX_OFS_XPEC1   0x74000
-#define NETX_OFS_XPEC2   0x78000
-#define NETX_OFS_XPEC3   0x7c000
-#define NETX_OFS_XPEC(no) (0x70000 + (no) * 0x4000)
-#define NETX_OFS_VIC     0xff000
-
-/* physical addresses */
-#define NETX_PA_SYSTEM   (NETX_IO_PHYS + NETX_OFS_SYSTEM)
-#define NETX_PA_MEMCR    (NETX_IO_PHYS + NETX_OFS_MEMCR)
-#define NETX_PA_DPMAS    (NETX_IO_PHYS + NETX_OFS_DPMAS)
-#define NETX_PA_GPIO     (NETX_IO_PHYS + NETX_OFS_GPIO)
-#define NETX_PA_PIO      (NETX_IO_PHYS + NETX_OFS_PIO)
-#define NETX_PA_UART0    (NETX_IO_PHYS + NETX_OFS_UART0)
-#define NETX_PA_UART1    (NETX_IO_PHYS + NETX_OFS_UART1)
-#define NETX_PA_UART2    (NETX_IO_PHYS + NETX_OFS_UART2)
-#define NETX_PA_MIIMU    (NETX_IO_PHYS + NETX_OF_MIIMU)
-#define NETX_PA_SPI      (NETX_IO_PHYS + NETX_OFS_SPI)
-#define NETX_PA_I2C      (NETX_IO_PHYS + NETX_OFS_I2C)
-#define NETX_PA_SYSTIME  (NETX_IO_PHYS + NETX_OFS_SYSTIME)
-#define NETX_PA_RTC      (NETX_IO_PHYS + NETX_OFS_RTC)
-#define NETX_PA_EXTBUS   (NETX_IO_PHYS + NETX_OFS_EXTBUS)
-#define NETX_PA_LCD      (NETX_IO_PHYS + NETX_OFS_LCD)
-#define NETX_PA_USB      (NETX_IO_PHYS + NETX_OFS_USB)
-#define NETX_PA_XMAC0    (NETX_IO_PHYS + NETX_OFS_XMAC0)
-#define NETX_PA_XMAC1    (NETX_IO_PHYS + NETX_OFS_XMAC1)
-#define NETX_PA_XMAC2    (NETX_IO_PHYS + NETX_OFS_XMAC2)
-#define NETX_PA_XMAC3    (NETX_IO_PHYS + NETX_OFS_XMAC3)
-#define NETX_PA_XMAC(no) (NETX_IO_PHYS + NETX_OFS_XMAC(no))
-#define NETX_PA_PFIFO    (NETX_IO_PHYS + NETX_OFS_PFIFO)
-#define NETX_PA_XPEC0    (NETX_IO_PHYS + NETX_OFS_XPEC0)
-#define NETX_PA_XPEC1    (NETX_IO_PHYS + NETX_OFS_XPEC1)
-#define NETX_PA_XPEC2    (NETX_IO_PHYS + NETX_OFS_XPEC2)
-#define NETX_PA_XPEC3    (NETX_IO_PHYS + NETX_OFS_XPEC3)
-#define NETX_PA_XPEC(no) (NETX_IO_PHYS + NETX_OFS_XPEC(no))
-#define NETX_PA_VIC      (NETX_IO_PHYS + NETX_OFS_VIC)
-
-/* virtual addresses */
-#define NETX_VA_SYSTEM   (NETX_IO_VIRT + NETX_OFS_SYSTEM)
-#define NETX_VA_MEMCR    (NETX_IO_VIRT + NETX_OFS_MEMCR)
-#define NETX_VA_DPMAS    (NETX_IO_VIRT + NETX_OFS_DPMAS)
-#define NETX_VA_GPIO     (NETX_IO_VIRT + NETX_OFS_GPIO)
-#define NETX_VA_PIO      (NETX_IO_VIRT + NETX_OFS_PIO)
-#define NETX_VA_UART0    (NETX_IO_VIRT + NETX_OFS_UART0)
-#define NETX_VA_UART1    (NETX_IO_VIRT + NETX_OFS_UART1)
-#define NETX_VA_UART2    (NETX_IO_VIRT + NETX_OFS_UART2)
-#define NETX_VA_MIIMU    (NETX_IO_VIRT + NETX_OF_MIIMU)
-#define NETX_VA_SPI      (NETX_IO_VIRT + NETX_OFS_SPI)
-#define NETX_VA_I2C      (NETX_IO_VIRT + NETX_OFS_I2C)
-#define NETX_VA_SYSTIME  (NETX_IO_VIRT + NETX_OFS_SYSTIME)
-#define NETX_VA_RTC      (NETX_IO_VIRT + NETX_OFS_RTC)
-#define NETX_VA_EXTBUS   (NETX_IO_VIRT + NETX_OFS_EXTBUS)
-#define NETX_VA_LCD      (NETX_IO_VIRT + NETX_OFS_LCD)
-#define NETX_VA_USB      (NETX_IO_VIRT + NETX_OFS_USB)
-#define NETX_VA_XMAC0    (NETX_IO_VIRT + NETX_OFS_XMAC0)
-#define NETX_VA_XMAC1    (NETX_IO_VIRT + NETX_OFS_XMAC1)
-#define NETX_VA_XMAC2    (NETX_IO_VIRT + NETX_OFS_XMAC2)
-#define NETX_VA_XMAC3    (NETX_IO_VIRT + NETX_OFS_XMAC3)
-#define NETX_VA_XMAC(no) (NETX_IO_VIRT + NETX_OFS_XMAC(no))
-#define NETX_VA_PFIFO    (NETX_IO_VIRT + NETX_OFS_PFIFO)
-#define NETX_VA_XPEC0    (NETX_IO_VIRT + NETX_OFS_XPEC0)
-#define NETX_VA_XPEC1    (NETX_IO_VIRT + NETX_OFS_XPEC1)
-#define NETX_VA_XPEC2    (NETX_IO_VIRT + NETX_OFS_XPEC2)
-#define NETX_VA_XPEC3    (NETX_IO_VIRT + NETX_OFS_XPEC3)
-#define NETX_VA_XPEC(no) (NETX_IO_VIRT + NETX_OFS_XPEC(no))
-#define NETX_VA_VIC      (NETX_IO_VIRT + NETX_OFS_VIC)
-
-/*********************************
- * System functions              *
- *********************************/
-
-/* Registers */
-#define NETX_SYSTEM_REG(ofs)            IOMEM(NETX_VA_SYSTEM + (ofs))
-#define NETX_SYSTEM_BOO_SR          NETX_SYSTEM_REG(0x00)
-#define NETX_SYSTEM_IOC_CR          NETX_SYSTEM_REG(0x04)
-#define NETX_SYSTEM_IOC_MR          NETX_SYSTEM_REG(0x08)
-
-/* FIXME: Docs are not consistent */
-/* #define NETX_SYSTEM_RES_CR          NETX_SYSTEM_REG(0x08) */
-#define NETX_SYSTEM_RES_CR          NETX_SYSTEM_REG(0x0c)
-
-#define NETX_SYSTEM_PHY_CONTROL     NETX_SYSTEM_REG(0x10)
-#define NETX_SYSTEM_REV             NETX_SYSTEM_REG(0x34)
-#define NETX_SYSTEM_IOC_ACCESS_KEY  NETX_SYSTEM_REG(0x70)
-#define NETX_SYSTEM_WDG_TR          NETX_SYSTEM_REG(0x200)
-#define NETX_SYSTEM_WDG_CTR         NETX_SYSTEM_REG(0x204)
-#define NETX_SYSTEM_WDG_IRQ_TIMEOUT NETX_SYSTEM_REG(0x208)
-#define NETX_SYSTEM_WDG_RES_TIMEOUT NETX_SYSTEM_REG(0x20c)
-
-/* Bits */
-#define NETX_SYSTEM_RES_CR_RSTIN         (1<<0)
-#define NETX_SYSTEM_RES_CR_WDG_RES       (1<<1)
-#define NETX_SYSTEM_RES_CR_HOST_RES      (1<<2)
-#define NETX_SYSTEM_RES_CR_FIRMW_RES     (1<<3)
-#define NETX_SYSTEM_RES_CR_XPEC0_RES     (1<<4)
-#define NETX_SYSTEM_RES_CR_XPEC1_RES     (1<<5)
-#define NETX_SYSTEM_RES_CR_XPEC2_RES     (1<<6)
-#define NETX_SYSTEM_RES_CR_XPEC3_RES     (1<<7)
-#define NETX_SYSTEM_RES_CR_DIS_XPEC0_RES (1<<16)
-#define NETX_SYSTEM_RES_CR_DIS_XPEC1_RES (1<<17)
-#define NETX_SYSTEM_RES_CR_DIS_XPEC2_RES (1<<18)
-#define NETX_SYSTEM_RES_CR_DIS_XPEC3_RES (1<<19)
-#define NETX_SYSTEM_RES_CR_FIRMW_FLG0    (1<<20)
-#define NETX_SYSTEM_RES_CR_FIRMW_FLG1    (1<<21)
-#define NETX_SYSTEM_RES_CR_FIRMW_FLG2    (1<<22)
-#define NETX_SYSTEM_RES_CR_FIRMW_FLG3    (1<<23)
-#define NETX_SYSTEM_RES_CR_FIRMW_RES_EN  (1<<24)
-#define NETX_SYSTEM_RES_CR_RSTOUT        (1<<25)
-#define NETX_SYSTEM_RES_CR_EN_RSTOUT     (1<<26)
-
-#define PHY_CONTROL_RESET            (1<<31)
-#define PHY_CONTROL_SIM_BYP          (1<<30)
-#define PHY_CONTROL_CLK_XLATIN       (1<<29)
-#define PHY_CONTROL_PHY1_EN          (1<<21)
-#define PHY_CONTROL_PHY1_NP_MSG_CODE
-#define PHY_CONTROL_PHY1_AUTOMDIX    (1<<17)
-#define PHY_CONTROL_PHY1_FIXMODE     (1<<16)
-#define PHY_CONTROL_PHY1_MODE(mode)  (((mode) & 0x7) << 13)
-#define PHY_CONTROL_PHY0_EN          (1<<12)
-#define PHY_CONTROL_PHY0_NP_MSG_CODE
-#define PHY_CONTROL_PHY0_AUTOMDIX    (1<<8)
-#define PHY_CONTROL_PHY0_FIXMODE     (1<<7)
-#define PHY_CONTROL_PHY0_MODE(mode)  (((mode) & 0x7) << 4)
-#define PHY_CONTROL_PHY_ADDRESS(adr) ((adr) & 0xf)
-
-#define PHY_MODE_10BASE_T_HALF      0
-#define PHY_MODE_10BASE_T_FULL      1
-#define PHY_MODE_100BASE_TX_FX_FULL 2
-#define PHY_MODE_100BASE_TX_FX_HALF 3
-#define PHY_MODE_100BASE_TX_HALF    4
-#define PHY_MODE_REPEATER           5
-#define PHY_MODE_POWER_DOWN         6
-#define PHY_MODE_ALL                7
-
-/* Bits */
-#define VECT_CNTL_ENABLE               (1 << 5)
-
-/*******************************
- * GPIO and timer module       *
- *******************************/
-
-/* Registers */
-#define NETX_GPIO_REG(ofs)                     IOMEM(NETX_VA_GPIO + (ofs))
-#define NETX_GPIO_CFG(gpio)                NETX_GPIO_REG(0x0  + ((gpio)<<2))
-#define NETX_GPIO_THRESHOLD_CAPTURE(gpio)  NETX_GPIO_REG(0x40 + ((gpio)<<2))
-#define NETX_GPIO_COUNTER_CTRL(counter)    NETX_GPIO_REG(0x80 + ((counter)<<2))
-#define NETX_GPIO_COUNTER_MAX(counter)     NETX_GPIO_REG(0x94 + ((counter)<<2))
-#define NETX_GPIO_COUNTER_CURRENT(counter) NETX_GPIO_REG(0xa8 + ((counter)<<2))
-#define NETX_GPIO_IRQ_ENABLE               NETX_GPIO_REG(0xbc)
-#define NETX_GPIO_IRQ_DISABLE              NETX_GPIO_REG(0xc0)
-#define NETX_GPIO_SYSTIME_NS_CMP           NETX_GPIO_REG(0xc4)
-#define NETX_GPIO_LINE                     NETX_GPIO_REG(0xc8)
-#define NETX_GPIO_IRQ                      NETX_GPIO_REG(0xd0)
-
-/* Bits */
-#define NETX_GPIO_CFG_IOCFG_GP_INPUT                 (0x0)
-#define NETX_GPIO_CFG_IOCFG_GP_OUTPUT                (0x1)
-#define NETX_GPIO_CFG_IOCFG_GP_UART                  (0x2)
-#define NETX_GPIO_CFG_INV                            (1<<2)
-#define NETX_GPIO_CFG_MODE_INPUT_READ                (0<<3)
-#define NETX_GPIO_CFG_MODE_INPUT_CAPTURE_CONT_RISING (1<<3)
-#define NETX_GPIO_CFG_MODE_INPUT_CAPTURE_ONCE_RISING (2<<3)
-#define NETX_GPIO_CFG_MODE_INPUT_CAPTURE_HIGH_LEVEL  (3<<3)
-#define NETX_GPIO_CFG_COUNT_REF_COUNTER0             (0<<5)
-#define NETX_GPIO_CFG_COUNT_REF_COUNTER1             (1<<5)
-#define NETX_GPIO_CFG_COUNT_REF_COUNTER2             (2<<5)
-#define NETX_GPIO_CFG_COUNT_REF_COUNTER3             (3<<5)
-#define NETX_GPIO_CFG_COUNT_REF_COUNTER4             (4<<5)
-#define NETX_GPIO_CFG_COUNT_REF_SYSTIME              (7<<5)
-
-#define NETX_GPIO_COUNTER_CTRL_RUN                   (1<<0)
-#define NETX_GPIO_COUNTER_CTRL_SYM                   (1<<1)
-#define NETX_GPIO_COUNTER_CTRL_ONCE                  (1<<2)
-#define NETX_GPIO_COUNTER_CTRL_IRQ_EN                (1<<3)
-#define NETX_GPIO_COUNTER_CTRL_CNT_EVENT             (1<<4)
-#define NETX_GPIO_COUNTER_CTRL_RST_EN                (1<<5)
-#define NETX_GPIO_COUNTER_CTRL_SEL_EVENT             (1<<6)
-#define NETX_GPIO_COUNTER_CTRL_GPIO_REF /* FIXME */
-
-#define GPIO_BIT(gpio)                     (1<<(gpio))
-#define COUNTER_BIT(counter)               ((1<<16)<<(counter))
-
-/*******************************
- * PIO                         *
- *******************************/
-
-/* Registers */
-#define NETX_PIO_REG(ofs)        IOMEM(NETX_VA_PIO + (ofs))
-#define NETX_PIO_INPIO       NETX_PIO_REG(0x0)
-#define NETX_PIO_OUTPIO      NETX_PIO_REG(0x4)
-#define NETX_PIO_OEPIO       NETX_PIO_REG(0x8)
-
-/*******************************
- * MII Unit                    *
- *******************************/
-
-/* Registers */
-#define NETX_MIIMU           IOMEM(NETX_VA_MIIMU)
-
-/* Bits */
-#define MIIMU_SNRDY        (1<<0)
-#define MIIMU_PREAMBLE     (1<<1)
-#define MIIMU_OPMODE_WRITE (1<<2)
-#define MIIMU_MDC_PERIOD   (1<<3)
-#define MIIMU_PHY_NRES     (1<<4)
-#define MIIMU_RTA          (1<<5)
-#define MIIMU_REGADDR(adr) (((adr) & 0x1f) << 6)
-#define MIIMU_PHYADDR(adr) (((adr) & 0x1f) << 11)
-#define MIIMU_DATA(data)   (((data) & 0xffff) << 16)
-
-/*******************************
- * xmac / xpec                 *
- *******************************/
-
-/* XPEC register offsets relative to NETX_VA_XPEC(no) */
-#define NETX_XPEC_R0_OFS           0x00
-#define NETX_XPEC_R1_OFS           0x04
-#define NETX_XPEC_R2_OFS           0x08
-#define NETX_XPEC_R3_OFS           0x0c
-#define NETX_XPEC_R4_OFS           0x10
-#define NETX_XPEC_R5_OFS           0x14
-#define NETX_XPEC_R6_OFS           0x18
-#define NETX_XPEC_R7_OFS           0x1c
-#define NETX_XPEC_RANGE01_OFS      0x20
-#define NETX_XPEC_RANGE23_OFS      0x24
-#define NETX_XPEC_RANGE45_OFS      0x28
-#define NETX_XPEC_RANGE67_OFS      0x2c
-#define NETX_XPEC_PC_OFS           0x48
-#define NETX_XPEC_TIMER_OFS(timer) (0x30 + ((timer)<<2))
-#define NETX_XPEC_IRQ_OFS          0x8c
-#define NETX_XPEC_SYSTIME_NS_OFS   0x90
-#define NETX_XPEC_FIFO_DATA_OFS    0x94
-#define NETX_XPEC_SYSTIME_S_OFS    0x98
-#define NETX_XPEC_ADC_OFS          0x9c
-#define NETX_XPEC_URX_COUNT_OFS    0x40
-#define NETX_XPEC_UTX_COUNT_OFS    0x44
-#define NETX_XPEC_PC_OFS           0x48
-#define NETX_XPEC_ZERO_OFS         0x4c
-#define NETX_XPEC_STATCFG_OFS      0x50
-#define NETX_XPEC_EC_MASKA_OFS     0x54
-#define NETX_XPEC_EC_MASKB_OFS     0x58
-#define NETX_XPEC_EC_MASK0_OFS     0x5c
-#define NETX_XPEC_EC_MASK8_OFS     0x7c
-#define NETX_XPEC_EC_MASK9_OFS     0x80
-#define NETX_XPEC_XPU_HOLD_PC_OFS  0x100
-#define NETX_XPEC_RAM_START_OFS    0x2000
-
-/* Bits */
-#define XPU_HOLD_PC (1<<0)
-
-/* XMAC register offsets relative to NETX_VA_XMAC(no) */
-#define NETX_XMAC_RPU_PROGRAM_START_OFS       0x000
-#define NETX_XMAC_RPU_PROGRAM_END_OFS         0x3ff
-#define NETX_XMAC_TPU_PROGRAM_START_OFS       0x400
-#define NETX_XMAC_TPU_PROGRAM_END_OFS         0x7ff
-#define NETX_XMAC_RPU_HOLD_PC_OFS             0xa00
-#define NETX_XMAC_TPU_HOLD_PC_OFS             0xa04
-#define NETX_XMAC_STATUS_SHARED0_OFS          0x840
-#define NETX_XMAC_CONFIG_SHARED0_OFS          0x844
-#define NETX_XMAC_STATUS_SHARED1_OFS          0x848
-#define NETX_XMAC_CONFIG_SHARED1_OFS          0x84c
-#define NETX_XMAC_STATUS_SHARED2_OFS          0x850
-#define NETX_XMAC_CONFIG_SHARED2_OFS          0x854
-#define NETX_XMAC_STATUS_SHARED3_OFS          0x858
-#define NETX_XMAC_CONFIG_SHARED3_OFS          0x85c
-
-#define RPU_HOLD_PC            (1<<15)
-#define TPU_HOLD_PC            (1<<15)
-
-/*******************************
- * Pointer FIFO                *
- *******************************/
-
-/* Registers */
-#define NETX_PFIFO_REG(ofs)               IOMEM(NETX_VA_PFIFO + (ofs))
-#define NETX_PFIFO_BASE(pfifo)        NETX_PFIFO_REG(0x00 + ((pfifo)<<2))
-#define NETX_PFIFO_BORDER_BASE(pfifo) NETX_PFIFO_REG(0x80 + ((pfifo)<<2))
-#define NETX_PFIFO_RESET              NETX_PFIFO_REG(0x100)
-#define NETX_PFIFO_FULL               NETX_PFIFO_REG(0x104)
-#define NETX_PFIFO_EMPTY              NETX_PFIFO_REG(0x108)
-#define NETX_PFIFO_OVEFLOW            NETX_PFIFO_REG(0x10c)
-#define NETX_PFIFO_UNDERRUN           NETX_PFIFO_REG(0x110)
-#define NETX_PFIFO_FILL_LEVEL(pfifo)  NETX_PFIFO_REG(0x180 + ((pfifo)<<2))
-#define NETX_PFIFO_XPEC_ISR(xpec)     NETX_PFIFO_REG(0x400 + ((xpec) << 2))
-
-
-/*******************************
- * Memory Controller           *
- *******************************/
-
-/* Registers */
-#define NETX_MEMCR_REG(ofs)               IOMEM(NETX_VA_MEMCR + (ofs))
-#define NETX_MEMCR_SRAM_CTRL(cs)      NETX_MEMCR_REG(0x0 + 4 * (cs)) /* SRAM for CS 0..2 */
-#define NETX_MEMCR_SDRAM_CFG_CTRL     NETX_MEMCR_REG(0x40)
-#define NETX_MEMCR_SDRAM_TIMING_CTRL  NETX_MEMCR_REG(0x44)
-#define NETX_MEMCR_SDRAM_MODE         NETX_MEMCR_REG(0x48)
-#define NETX_MEMCR_SDRAM_EXT_MODE     NETX_MEMCR_REG(0x4c)
-#define NETX_MEMCR_PRIO_TIMESLOT_CTRL NETX_MEMCR_REG(0x80)
-#define NETX_MEMCR_PRIO_ACCESS_CTRL   NETX_MEMCR_REG(0x84)
-
-/* Bits */
-#define NETX_MEMCR_SRAM_CTRL_WIDTHEXTMEM(x)       (((x) & 0x3)  << 24)
-#define NETX_MEMCR_SRAM_CTRL_WSPOSTPAUSEEXTMEM(x) (((x) & 0x3)  << 16)
-#define NETX_MEMCR_SRAM_CTRL_WSPREPASEEXTMEM(x)   (((x) & 0x3)  << 8)
-#define NETX_MEMCR_SRAM_CTRL_WSEXTMEM(x)          (((x) & 0x1f) << 0)
-
-
-/*******************************
- * Dual Port Memory            *
- *******************************/
-
-/* Registers */
-#define NETX_DPMAS_REG(ofs)               IOMEM(NETX_VA_DPMAS + (ofs))
-#define NETX_DPMAS_SYS_STAT           NETX_DPMAS_REG(0x4d8)
-#define NETX_DPMAS_INT_STAT           NETX_DPMAS_REG(0x4e0)
-#define NETX_DPMAS_INT_EN             NETX_DPMAS_REG(0x4f0)
-#define NETX_DPMAS_IF_CONF0           NETX_DPMAS_REG(0x608)
-#define NETX_DPMAS_IF_CONF1           NETX_DPMAS_REG(0x60c)
-#define NETX_DPMAS_EXT_CONFIG(cs)     NETX_DPMAS_REG(0x610 + 4 * (cs))
-#define NETX_DPMAS_IO_MODE0           NETX_DPMAS_REG(0x620) /* I/O 32..63 */
-#define NETX_DPMAS_DRV_EN0            NETX_DPMAS_REG(0x624)
-#define NETX_DPMAS_DATA0              NETX_DPMAS_REG(0x628)
-#define NETX_DPMAS_IO_MODE1           NETX_DPMAS_REG(0x630) /* I/O 64..84 */
-#define NETX_DPMAS_DRV_EN1            NETX_DPMAS_REG(0x634)
-#define NETX_DPMAS_DATA1              NETX_DPMAS_REG(0x638)
-
-/* Bits */
-#define NETX_DPMAS_INT_EN_GLB_EN         (1<<31)
-#define NETX_DPMAS_INT_EN_MEM_LCK        (1<<30)
-#define NETX_DPMAS_INT_EN_WDG            (1<<29)
-#define NETX_DPMAS_INT_EN_PIO72          (1<<28)
-#define NETX_DPMAS_INT_EN_PIO47          (1<<27)
-#define NETX_DPMAS_INT_EN_PIO40          (1<<26)
-#define NETX_DPMAS_INT_EN_PIO36          (1<<25)
-#define NETX_DPMAS_INT_EN_PIO35          (1<<24)
-
-#define NETX_DPMAS_IF_CONF0_HIF_DISABLED (0<<28)
-#define NETX_DPMAS_IF_CONF0_HIF_EXT_BUS  (1<<28)
-#define NETX_DPMAS_IF_CONF0_HIF_UP_8BIT  (2<<28)
-#define NETX_DPMAS_IF_CONF0_HIF_UP_16BIT (3<<28)
-#define NETX_DPMAS_IF_CONF0_HIF_IO       (4<<28)
-#define NETX_DPMAS_IF_CONF0_WAIT_DRV_PP  (1<<14)
-#define NETX_DPMAS_IF_CONF0_WAIT_DRV_OD  (2<<14)
-#define NETX_DPMAS_IF_CONF0_WAIT_DRV_TRI (3<<14)
-
-#define NETX_DPMAS_IF_CONF1_IRQ_POL_PIO35 (1<<26)
-#define NETX_DPMAS_IF_CONF1_IRQ_POL_PIO36 (1<<27)
-#define NETX_DPMAS_IF_CONF1_IRQ_POL_PIO40 (1<<28)
-#define NETX_DPMAS_IF_CONF1_IRQ_POL_PIO47 (1<<29)
-#define NETX_DPMAS_IF_CONF1_IRQ_POL_PIO72 (1<<30)
-
-#define NETX_EXT_CONFIG_TALEWIDTH(x) (((x) & 0x7) << 29)
-#define NETX_EXT_CONFIG_TADRHOLD(x)  (((x) & 0x7) << 26)
-#define NETX_EXT_CONFIG_TCSON(x)     (((x) & 0x7) << 23)
-#define NETX_EXT_CONFIG_TRDON(x)     (((x) & 0x7) << 20)
-#define NETX_EXT_CONFIG_TWRON(x)     (((x) & 0x7)  << 17)
-#define NETX_EXT_CONFIG_TWROFF(x)    (((x) & 0x1f) << 12)
-#define NETX_EXT_CONFIG_TRDWRCYC(x)  (((x) & 0x1f) << 7)
-#define NETX_EXT_CONFIG_WAIT_POL     (1<<6)
-#define NETX_EXT_CONFIG_WAIT_EN      (1<<5)
-#define NETX_EXT_CONFIG_NRD_MODE     (1<<4)
-#define NETX_EXT_CONFIG_DS_MODE      (1<<3)
-#define NETX_EXT_CONFIG_NWR_MODE     (1<<2)
-#define NETX_EXT_CONFIG_16BIT        (1<<1)
-#define NETX_EXT_CONFIG_CS_ENABLE    (1<<0)
-
-#define NETX_DPMAS_IO_MODE0_WRL   (1<<13)
-#define NETX_DPMAS_IO_MODE0_WAIT  (1<<14)
-#define NETX_DPMAS_IO_MODE0_READY (1<<15)
-#define NETX_DPMAS_IO_MODE0_CS0   (1<<19)
-#define NETX_DPMAS_IO_MODE0_EXTRD (1<<20)
-
-#define NETX_DPMAS_IO_MODE1_CS2           (1<<15)
-#define NETX_DPMAS_IO_MODE1_CS1           (1<<16)
-#define NETX_DPMAS_IO_MODE1_SAMPLE_NPOR   (0<<30)
-#define NETX_DPMAS_IO_MODE1_SAMPLE_100MHZ (1<<30)
-#define NETX_DPMAS_IO_MODE1_SAMPLE_NPIO36 (2<<30)
-#define NETX_DPMAS_IO_MODE1_SAMPLE_PIO36  (3<<30)
-
-/*******************************
- * I2C                         *
- *******************************/
-#define NETX_I2C_REG(ofs)	IOMEM(NETX_VA_I2C, (ofs))
-#define NETX_I2C_CTRL	NETX_I2C_REG(0x0)
-#define NETX_I2C_DATA	NETX_I2C_REG(0x4)
-
-#endif /* __ASM_ARCH_NETX_REGS_H */
diff --git a/arch/arm/mach-netx/include/mach/pfifo.h b/arch/arm/mach-netx/include/mach/pfifo.h
deleted file mode 100644
index 42c59068f8d8..000000000000
--- a/arch/arm/mach-netx/include/mach/pfifo.h
+++ /dev/null
@@ -1,54 +0,0 @@
-/*
- * arch/arm/mach-netx/include/mach/pfifo.h
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-
-#ifndef ASM_ARCH_PFIFO_H
-#define ASM_ARCH_PFIFO_H
-
-static inline int pfifo_push(int no, unsigned int pointer)
-{
-	writel(pointer, NETX_PFIFO_BASE(no));
-	return 0;
-}
-
-static inline unsigned int pfifo_pop(int no)
-{
-	return readl(NETX_PFIFO_BASE(no));
-}
-
-static inline int pfifo_fill_level(int no)
-{
-
-	return readl(NETX_PFIFO_FILL_LEVEL(no));
-}
-
-static inline int pfifo_full(int no)
-{
-	return readl(NETX_PFIFO_FULL) & (1<<no) ? 1 : 0;
-}
-
-static inline int pfifo_empty(int no)
-{
-	return readl(NETX_PFIFO_EMPTY) & (1<<no) ? 1 : 0;
-}
-
-int pfifo_request(unsigned int pfifo_mask);
-void pfifo_free(unsigned int pfifo_mask);
-
-#endif /* ASM_ARCH_PFIFO_H */
diff --git a/arch/arm/mach-netx/include/mach/uncompress.h b/arch/arm/mach-netx/include/mach/uncompress.h
deleted file mode 100644
index 033875dbc32b..000000000000
--- a/arch/arm/mach-netx/include/mach/uncompress.h
+++ /dev/null
@@ -1,75 +0,0 @@
-/*
- * arch/arm/mach-netx/include/mach/uncompress.h
- *
- * Copyright (C) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-/*
- * The following code assumes the serial port has already been
- * initialized by the bootloader.  We search for the first enabled
- * port in the most probable order.  If you didn't setup a port in
- * your bootloader then nothing will appear (which might be desired).
- *
- * This does not append a newline
- */
-
-#define REG(x) (*(volatile unsigned long *)(x))
-
-#define UART1_BASE 0x100a00
-#define UART2_BASE 0x100a80
-
-#define UART_DR 0x0
-
-#define UART_CR 0x14
-#define CR_UART_EN (1<<0)
-
-#define UART_FR 0x18
-#define FR_BUSY (1<<3)
-#define FR_TXFF (1<<5)
-
-static inline void putc(char c)
-{
-	unsigned long base;
-
-	if (REG(UART1_BASE + UART_CR) & CR_UART_EN)
-		base = UART1_BASE;
-	else if (REG(UART2_BASE + UART_CR) & CR_UART_EN)
-		base = UART2_BASE;
-	else
-		return;
-
-	while (REG(base + UART_FR) & FR_TXFF);
-	REG(base + UART_DR) = c;
-}
-
-static inline void flush(void)
-{
-	unsigned long base;
-
-	if (REG(UART1_BASE + UART_CR) & CR_UART_EN)
-		base = UART1_BASE;
-	else if (REG(UART2_BASE + UART_CR) & CR_UART_EN)
-		base = UART2_BASE;
-	else
-		return;
-
-	while (REG(base + UART_FR) & FR_BUSY);
-}
-
-/*
- * nothing to do
- */
-#define arch_decomp_setup()
diff --git a/arch/arm/mach-netx/include/mach/xc.h b/arch/arm/mach-netx/include/mach/xc.h
deleted file mode 100644
index 0c0011d4fc2d..000000000000
--- a/arch/arm/mach-netx/include/mach/xc.h
+++ /dev/null
@@ -1,42 +0,0 @@
-/*
- *  arch/arm/mach-netx/include/mach/xc.h
- *
- * Copyright (C) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-#ifndef __ASM_ARCH_XC_H
-#define __ASM_ARCH_XC_H
-
-struct xc {
-	int no;
-	unsigned int type;
-	unsigned int version;
-	void __iomem *xpec_base;
-	void __iomem *xmac_base;
-	void __iomem *sram_base;
-	int irq;
-	struct device *dev;
-};
-
-int xc_reset(struct xc *x);
-int xc_stop(struct xc* x);
-int xc_start(struct xc *x);
-int xc_running(struct xc *x);
-int xc_request_firmware(struct xc* x);
-struct xc* request_xc(int xcno, struct device *dev);
-void free_xc(struct xc *x);
-
-#endif /* __ASM_ARCH_XC_H */
diff --git a/arch/arm/mach-netx/nxdb500.c b/arch/arm/mach-netx/nxdb500.c
deleted file mode 100644
index 9b558eb3070f..000000000000
--- a/arch/arm/mach-netx/nxdb500.c
+++ /dev/null
@@ -1,209 +0,0 @@
-/*
- * arch/arm/mach-netx/nxdb500.c
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-#include <linux/dma-mapping.h>
-#include <linux/init.h>
-#include <linux/interrupt.h>
-#include <linux/mtd/plat-ram.h>
-#include <linux/platform_device.h>
-#include <linux/amba/bus.h>
-#include <linux/amba/clcd.h>
-
-#include <mach/hardware.h>
-#include <asm/mach-types.h>
-#include <asm/mach/arch.h>
-#include <mach/netx-regs.h>
-#include <linux/platform_data/eth-netx.h>
-
-#include "generic.h"
-#include "fb.h"
-
-static struct clcd_panel qvga = {
-	.mode		= {
-		.name		= "QVGA",
-		.refresh	= 60,
-		.xres		= 240,
-		.yres		= 320,
-		.pixclock	= 187617,
-		.left_margin	= 6,
-		.right_margin	= 26,
-		.upper_margin	= 0,
-		.lower_margin	= 6,
-		.hsync_len	= 6,
-		.vsync_len	= 1,
-		.sync		= 0,
-		.vmode		= FB_VMODE_NONINTERLACED,
-	},
-	.width		= -1,
-	.height		= -1,
-	.tim2		=  16,
-	.cntl		= CNTL_LCDTFT | CNTL_BGR,
-	.bpp		= 16,
-	.grayscale	= 0,
-};
-
-static inline int nxdb500_check(struct clcd_fb *fb, struct fb_var_screeninfo *var)
-{
-	var->green.length = 5;
-	var->green.msb_right = 0;
-
-	return clcdfb_check(fb, var);
-}
-
-static int nxdb500_clcd_setup(struct clcd_fb *fb)
-{
-	unsigned int val;
-
-	fb->fb.var.green.length = 5;
-	fb->fb.var.green.msb_right = 0;
-
-	/* enable asic control */
-	val = readl(NETX_SYSTEM_IOC_ACCESS_KEY);
-	writel(val, NETX_SYSTEM_IOC_ACCESS_KEY);
-
-	writel(3, NETX_SYSTEM_IOC_CR);
-
-	val = readl(NETX_PIO_OUTPIO);
-	writel(val | 1, NETX_PIO_OUTPIO);
-
-	val = readl(NETX_PIO_OEPIO);
-	writel(val | 1, NETX_PIO_OEPIO);
-	return netx_clcd_setup(fb);
-}
-
-static struct clcd_board clcd_data = {
-	.name		= "netX",
-	.check		= nxdb500_check,
-	.decode		= clcdfb_decode,
-	.enable		= netx_clcd_enable,
-	.setup		= nxdb500_clcd_setup,
-	.mmap		= netx_clcd_mmap,
-	.remove		= netx_clcd_remove,
-};
-
-static struct netxeth_platform_data eth0_platform_data = {
-	.xcno = 0,
-};
-
-static struct platform_device netx_eth0_device = {
-	.name		= "netx-eth",
-	.id		= 0,
-	.num_resources	= 0,
-	.resource	= NULL,
-	.dev = {
-		.platform_data = &eth0_platform_data,
-	}
-};
-
-static struct netxeth_platform_data eth1_platform_data = {
-	.xcno = 1,
-};
-
-static struct platform_device netx_eth1_device = {
-	.name		= "netx-eth",
-	.id		= 1,
-	.num_resources	= 0,
-	.resource	= NULL,
-	.dev = {
-		.platform_data = &eth1_platform_data,
-	}
-};
-
-static struct resource netx_uart0_resources[] = {
-	[0] = {
-		.start	= 0x00100A00,
-		.end	= 0x00100A3F,
-		.flags	= IORESOURCE_MEM,
-	},
-	[1] = {
-		.start	= (NETX_IRQ_UART0),
-		.end	= (NETX_IRQ_UART0),
-		.flags	= IORESOURCE_IRQ,
-	},
-};
-
-static struct platform_device netx_uart0_device = {
-	.name		= "netx-uart",
-	.id		= 0,
-	.num_resources	= ARRAY_SIZE(netx_uart0_resources),
-	.resource	= netx_uart0_resources,
-};
-
-static struct resource netx_uart1_resources[] = {
-	[0] = {
-		.start	= 0x00100A40,
-		.end	= 0x00100A7F,
-		.flags	= IORESOURCE_MEM,
-	},
-	[1] = {
-		.start	= (NETX_IRQ_UART1),
-		.end	= (NETX_IRQ_UART1),
-		.flags	= IORESOURCE_IRQ,
-	},
-};
-
-static struct platform_device netx_uart1_device = {
-	.name		= "netx-uart",
-	.id		= 1,
-	.num_resources	= ARRAY_SIZE(netx_uart1_resources),
-	.resource	= netx_uart1_resources,
-};
-
-static struct resource netx_uart2_resources[] = {
-	[0] = {
-		.start	= 0x00100A80,
-		.end	= 0x00100ABF,
-		.flags	= IORESOURCE_MEM,
-	},
-	[1] = {
-		.start	= (NETX_IRQ_UART2),
-		.end	= (NETX_IRQ_UART2),
-		.flags	= IORESOURCE_IRQ,
-	},
-};
-
-static struct platform_device netx_uart2_device = {
-	.name		= "netx-uart",
-	.id		= 2,
-	.num_resources	= ARRAY_SIZE(netx_uart2_resources),
-	.resource	= netx_uart2_resources,
-};
-
-static struct platform_device *devices[] __initdata = {
-	&netx_eth0_device,
-	&netx_eth1_device,
-	&netx_uart0_device,
-	&netx_uart1_device,
-	&netx_uart2_device,
-};
-
-static void __init nxdb500_init(void)
-{
-	netx_fb_init(&clcd_data, &qvga);
-	platform_add_devices(devices, ARRAY_SIZE(devices));
-}
-
-MACHINE_START(NXDB500, "Hilscher nxdb500")
-	.atag_offset	= 0x100,
-	.map_io		= netx_map_io,
-	.init_irq	= netx_init_irq,
-	.init_time	= netx_timer_init,
-	.init_machine	= nxdb500_init,
-	.restart	= netx_restart,
-MACHINE_END
diff --git a/arch/arm/mach-netx/nxdkn.c b/arch/arm/mach-netx/nxdkn.c
deleted file mode 100644
index a5e86cd365e7..000000000000
--- a/arch/arm/mach-netx/nxdkn.c
+++ /dev/null
@@ -1,102 +0,0 @@
-/*
- * arch/arm/mach-netx/nxdkn.c
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-#include <linux/dma-mapping.h>
-#include <linux/init.h>
-#include <linux/interrupt.h>
-#include <linux/mtd/plat-ram.h>
-#include <linux/platform_device.h>
-#include <linux/amba/bus.h>
-#include <linux/amba/clcd.h>
-
-#include <mach/hardware.h>
-#include <asm/mach-types.h>
-#include <asm/mach/arch.h>
-#include <mach/netx-regs.h>
-#include <linux/platform_data/eth-netx.h>
-
-#include "generic.h"
-
-static struct netxeth_platform_data eth0_platform_data = {
-	.xcno = 0,
-};
-
-static struct platform_device nxdkn_eth0_device = {
-	.name		= "netx-eth",
-	.id		= 0,
-	.num_resources	= 0,
-	.resource	= NULL,
-	.dev = {
-		.platform_data = &eth0_platform_data,
-	}
-};
-
-static struct netxeth_platform_data eth1_platform_data = {
-	.xcno = 1,
-};
-
-static struct platform_device nxdkn_eth1_device = {
-	.name		= "netx-eth",
-	.id		= 1,
-	.num_resources	= 0,
-	.resource	= NULL,
-	.dev = {
-		.platform_data = &eth1_platform_data,
-	}
-};
-
-static struct resource netx_uart0_resources[] = {
-	[0] = {
-		.start	= 0x00100A00,
-		.end	= 0x00100A3F,
-		.flags	= IORESOURCE_MEM,
-	},
-	[1] = {
-		.start	= (NETX_IRQ_UART0),
-		.end	= (NETX_IRQ_UART0),
-		.flags	= IORESOURCE_IRQ,
-	},
-};
-
-static struct platform_device netx_uart0_device = {
-	.name		= "netx-uart",
-	.id		= 0,
-	.num_resources	= ARRAY_SIZE(netx_uart0_resources),
-	.resource	= netx_uart0_resources,
-};
-
-static struct platform_device *devices[] __initdata = {
-	&nxdkn_eth0_device,
-	&nxdkn_eth1_device,
-	&netx_uart0_device,
-};
-
-static void __init nxdkn_init(void)
-{
-	platform_add_devices(devices, ARRAY_SIZE(devices));
-}
-
-MACHINE_START(NXDKN, "Hilscher nxdkn")
-	.atag_offset	= 0x100,
-	.map_io		= netx_map_io,
-	.init_irq	= netx_init_irq,
-	.init_time	= netx_timer_init,
-	.init_machine	= nxdkn_init,
-	.restart	= netx_restart,
-MACHINE_END
diff --git a/arch/arm/mach-netx/nxeb500hmi.c b/arch/arm/mach-netx/nxeb500hmi.c
deleted file mode 100644
index ad17885d0159..000000000000
--- a/arch/arm/mach-netx/nxeb500hmi.c
+++ /dev/null
@@ -1,186 +0,0 @@
-/*
- * arch/arm/mach-netx/nxeb500hmi.c
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-#include <linux/dma-mapping.h>
-#include <linux/init.h>
-#include <linux/interrupt.h>
-#include <linux/mtd/plat-ram.h>
-#include <linux/platform_device.h>
-#include <linux/amba/bus.h>
-#include <linux/amba/clcd.h>
-
-#include <mach/hardware.h>
-#include <asm/mach-types.h>
-#include <asm/mach/arch.h>
-#include <mach/netx-regs.h>
-#include <linux/platform_data/eth-netx.h>
-
-#include "generic.h"
-#include "fb.h"
-
-static struct clcd_panel qvga = {
-	.mode		= {
-		.name		= "QVGA",
-		.refresh	= 60,
-		.xres		= 240,
-		.yres		= 320,
-		.pixclock	= 187617,
-		.left_margin	= 6,
-		.right_margin	= 26,
-		.upper_margin	= 0,
-		.lower_margin	= 6,
-		.hsync_len	= 6,
-		.vsync_len	= 1,
-		.sync		= 0,
-		.vmode		= FB_VMODE_NONINTERLACED,
-	},
-	.width		= -1,
-	.height		= -1,
-	.tim2		=  16,
-	.cntl		= CNTL_LCDTFT | CNTL_BGR,
-	.bpp		= 16,
-	.grayscale	= 0,
-};
-
-static inline int nxeb500hmi_check(struct clcd_fb *fb, struct fb_var_screeninfo *var)
-{
-	var->green.length = 5;
-	var->green.msb_right = 0;
-
-	return clcdfb_check(fb, var);
-}
-
-static int nxeb500hmi_clcd_setup(struct clcd_fb *fb)
-{
-	unsigned int val;
-
-	fb->fb.var.green.length = 5;
-	fb->fb.var.green.msb_right = 0;
-
-	/* enable asic control */
-	val = readl(NETX_SYSTEM_IOC_ACCESS_KEY);
-	writel(val, NETX_SYSTEM_IOC_ACCESS_KEY);
-
-	writel(3, NETX_SYSTEM_IOC_CR);
-
-	/* GPIO 14 is used for display enable on newer boards */
-	writel(9, NETX_GPIO_CFG(14));
-
-	val = readl(NETX_PIO_OUTPIO);
-	writel(val | 1, NETX_PIO_OUTPIO);
-
-	val = readl(NETX_PIO_OEPIO);
-	writel(val | 1, NETX_PIO_OEPIO);
-	return netx_clcd_setup(fb);
-}
-
-static struct clcd_board clcd_data = {
-	.name		= "netX",
-	.check		= nxeb500hmi_check,
-	.decode		= clcdfb_decode,
-	.enable		= netx_clcd_enable,
-	.setup		= nxeb500hmi_clcd_setup,
-	.mmap		= netx_clcd_mmap,
-	.remove		= netx_clcd_remove,
-};
-
-static struct netxeth_platform_data eth0_platform_data = {
-	.xcno = 0,
-};
-
-static struct platform_device netx_eth0_device = {
-	.name		= "netx-eth",
-	.id		= 0,
-	.num_resources	= 0,
-	.resource	= NULL,
-	.dev = {
-		.platform_data = &eth0_platform_data,
-	}
-};
-
-static struct netxeth_platform_data eth1_platform_data = {
-	.xcno = 1,
-};
-
-static struct platform_device netx_eth1_device = {
-	.name		= "netx-eth",
-	.id		= 1,
-	.num_resources	= 0,
-	.resource	= NULL,
-	.dev = {
-		.platform_data = &eth1_platform_data,
-	}
-};
-
-static struct resource netx_cf_resources[] = {
-	[0] = {
-		.start	= 0x20000000,
-		.end	= 0x25ffffff,
-		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_8AND16BIT,
-	},
-};
-
-static struct platform_device netx_cf_device = {
-	.name		= "netx-cf",
-	.id		= 0,
-	.resource	= netx_cf_resources,
-	.num_resources	= ARRAY_SIZE(netx_cf_resources),
-};
-
-static struct resource netx_uart0_resources[] = {
-	[0] = {
-		.start	= 0x00100A00,
-		.end	= 0x00100A3F,
-		.flags	= IORESOURCE_MEM,
-	},
-	[1] = {
-		.start	= (NETX_IRQ_UART0),
-		.end	= (NETX_IRQ_UART0),
-		.flags	= IORESOURCE_IRQ,
-	},
-};
-
-static struct platform_device netx_uart0_device = {
-	.name		= "netx-uart",
-	.id		= 0,
-	.num_resources	= ARRAY_SIZE(netx_uart0_resources),
-	.resource	= netx_uart0_resources,
-};
-
-static struct platform_device *devices[] __initdata = {
-	&netx_eth0_device,
-	&netx_eth1_device,
-	&netx_cf_device,
-	&netx_uart0_device,
-};
-
-static void __init nxeb500hmi_init(void)
-{
-	netx_fb_init(&clcd_data, &qvga);
-	platform_add_devices(devices, ARRAY_SIZE(devices));
-}
-
-MACHINE_START(NXEB500HMI, "Hilscher nxeb500hmi")
-	.atag_offset	= 0x100,
-	.map_io		= netx_map_io,
-	.init_irq	= netx_init_irq,
-	.init_time	= netx_timer_init,
-	.init_machine	= nxeb500hmi_init,
-	.restart	= netx_restart,
-MACHINE_END
diff --git a/arch/arm/mach-netx/pfifo.c b/arch/arm/mach-netx/pfifo.c
deleted file mode 100644
index 03984943e16d..000000000000
--- a/arch/arm/mach-netx/pfifo.c
+++ /dev/null
@@ -1,68 +0,0 @@
-/*
- * arch/arm/mach-netx/pfifo.c
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-#include <linux/init.h>
-#include <linux/module.h>
-#include <linux/mutex.h>
-#include <linux/io.h>
-
-#include <mach/hardware.h>
-#include <mach/netx-regs.h>
-#include <mach/pfifo.h>
-
-static DEFINE_MUTEX(pfifo_lock);
-
-static unsigned int pfifo_used = 0;
-
-int pfifo_request(unsigned int pfifo_mask)
-{
-	int err = 0;
-	unsigned int val;
-
-	mutex_lock(&pfifo_lock);
-
-	if (pfifo_mask & pfifo_used) {
-		err = -EBUSY;
-		goto out;
-	}
-
-	pfifo_used |= pfifo_mask;
-
-	val = readl(NETX_PFIFO_RESET);
-	writel(val | pfifo_mask, NETX_PFIFO_RESET);
-	writel(val, NETX_PFIFO_RESET);
-
-out:
-	mutex_unlock(&pfifo_lock);
-	return err;
-}
-
-void pfifo_free(unsigned int pfifo_mask)
-{
-	mutex_lock(&pfifo_lock);
-	pfifo_used &= ~pfifo_mask;
-	mutex_unlock(&pfifo_lock);
-}
-
-EXPORT_SYMBOL(pfifo_push);
-EXPORT_SYMBOL(pfifo_pop);
-EXPORT_SYMBOL(pfifo_fill_level);
-EXPORT_SYMBOL(pfifo_empty);
-EXPORT_SYMBOL(pfifo_request);
-EXPORT_SYMBOL(pfifo_free);
diff --git a/arch/arm/mach-netx/time.c b/arch/arm/mach-netx/time.c
deleted file mode 100644
index 054a8a61e379..000000000000
--- a/arch/arm/mach-netx/time.c
+++ /dev/null
@@ -1,153 +0,0 @@
-/*
- * arch/arm/mach-netx/time.c
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-#include <linux/init.h>
-#include <linux/interrupt.h>
-#include <linux/irq.h>
-#include <linux/clocksource.h>
-#include <linux/clockchips.h>
-#include <linux/io.h>
-
-#include <mach/hardware.h>
-#include <asm/mach/time.h>
-#include <mach/netx-regs.h>
-
-#define NETX_CLOCK_FREQ 100000000
-#define NETX_LATCH DIV_ROUND_CLOSEST(NETX_CLOCK_FREQ, HZ)
-
-#define TIMER_CLOCKEVENT 0
-#define TIMER_CLOCKSOURCE 1
-
-static inline void timer_shutdown(struct clock_event_device *evt)
-{
-	/* disable timer */
-	writel(0, NETX_GPIO_COUNTER_CTRL(TIMER_CLOCKEVENT));
-}
-
-static int netx_shutdown(struct clock_event_device *evt)
-{
-	timer_shutdown(evt);
-
-	return 0;
-}
-
-static int netx_set_oneshot(struct clock_event_device *evt)
-{
-	u32 tmode = NETX_GPIO_COUNTER_CTRL_IRQ_EN | NETX_GPIO_COUNTER_CTRL_RUN;
-
-	timer_shutdown(evt);
-	writel(0, NETX_GPIO_COUNTER_MAX(TIMER_CLOCKEVENT));
-	writel(tmode, NETX_GPIO_COUNTER_CTRL(TIMER_CLOCKEVENT));
-
-	return 0;
-}
-
-static int netx_set_periodic(struct clock_event_device *evt)
-{
-	u32 tmode = NETX_GPIO_COUNTER_CTRL_RST_EN |
-		    NETX_GPIO_COUNTER_CTRL_IRQ_EN | NETX_GPIO_COUNTER_CTRL_RUN;
-
-	timer_shutdown(evt);
-	writel(NETX_LATCH, NETX_GPIO_COUNTER_MAX(TIMER_CLOCKEVENT));
-	writel(tmode, NETX_GPIO_COUNTER_CTRL(TIMER_CLOCKEVENT));
-
-	return 0;
-}
-
-static int netx_set_next_event(unsigned long evt,
-		struct clock_event_device *clk)
-{
-	writel(0 - evt, NETX_GPIO_COUNTER_CURRENT(TIMER_CLOCKEVENT));
-	return 0;
-}
-
-static struct clock_event_device netx_clockevent = {
-	.name = "netx-timer" __stringify(TIMER_CLOCKEVENT),
-	.features = CLOCK_EVT_FEAT_PERIODIC | CLOCK_EVT_FEAT_ONESHOT,
-	.set_next_event = netx_set_next_event,
-	.set_state_shutdown = netx_shutdown,
-	.set_state_periodic = netx_set_periodic,
-	.set_state_oneshot = netx_set_oneshot,
-	.tick_resume = netx_shutdown,
-};
-
-/*
- * IRQ handler for the timer
- */
-static irqreturn_t
-netx_timer_interrupt(int irq, void *dev_id)
-{
-	struct clock_event_device *evt = &netx_clockevent;
-
-	/* acknowledge interrupt */
-	writel(COUNTER_BIT(0), NETX_GPIO_IRQ);
-
-	evt->event_handler(evt);
-
-	return IRQ_HANDLED;
-}
-
-static struct irqaction netx_timer_irq = {
-	.name		= "NetX Timer Tick",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= netx_timer_interrupt,
-};
-
-/*
- * Set up timer interrupt
- */
-void __init netx_timer_init(void)
-{
-	/* disable timer initially */
-	writel(0, NETX_GPIO_COUNTER_CTRL(0));
-
-	/* Reset the timer value to zero */
-	writel(0, NETX_GPIO_COUNTER_CURRENT(0));
-
-	writel(NETX_LATCH, NETX_GPIO_COUNTER_MAX(0));
-
-	/* acknowledge interrupt */
-	writel(COUNTER_BIT(0), NETX_GPIO_IRQ);
-
-	/* Enable the interrupt in the specific timer
-	 * register and start timer
-	 */
-	writel(COUNTER_BIT(0), NETX_GPIO_IRQ_ENABLE);
-	writel(NETX_GPIO_COUNTER_CTRL_IRQ_EN | NETX_GPIO_COUNTER_CTRL_RUN,
-			NETX_GPIO_COUNTER_CTRL(0));
-
-	setup_irq(NETX_IRQ_TIMER0, &netx_timer_irq);
-
-	/* Setup timer one for clocksource */
-	writel(0, NETX_GPIO_COUNTER_CTRL(TIMER_CLOCKSOURCE));
-	writel(0, NETX_GPIO_COUNTER_CURRENT(TIMER_CLOCKSOURCE));
-	writel(0xffffffff, NETX_GPIO_COUNTER_MAX(TIMER_CLOCKSOURCE));
-
-	writel(NETX_GPIO_COUNTER_CTRL_RUN,
-			NETX_GPIO_COUNTER_CTRL(TIMER_CLOCKSOURCE));
-
-	clocksource_mmio_init(NETX_GPIO_COUNTER_CURRENT(TIMER_CLOCKSOURCE),
-		"netx_timer", NETX_CLOCK_FREQ, 200, 32, clocksource_mmio_readl_up);
-
-	/* with max_delta_ns >= delta2ns(0x800) the system currently runs fine.
-	 * Adding some safety ... */
-	netx_clockevent.cpumask = cpumask_of(0);
-	clockevents_config_and_register(&netx_clockevent, NETX_CLOCK_FREQ,
-					0xa00, 0xfffffffe);
-}
diff --git a/arch/arm/mach-netx/xc.c b/arch/arm/mach-netx/xc.c
deleted file mode 100644
index f1c972d87bac..000000000000
--- a/arch/arm/mach-netx/xc.c
+++ /dev/null
@@ -1,258 +0,0 @@
-/*
- * arch/arm/mach-netx/xc.c
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-#include <linux/init.h>
-#include <linux/device.h>
-#include <linux/firmware.h>
-#include <linux/mutex.h>
-#include <linux/slab.h>
-#include <linux/io.h>
-#include <linux/export.h>
-
-#include <mach/hardware.h>
-#include <mach/irqs.h>
-#include <mach/netx-regs.h>
-
-#include <mach/xc.h>
-
-static DEFINE_MUTEX(xc_lock);
-
-static int xc_in_use = 0;
-
-struct fw_desc {
-	unsigned int ofs;
-	unsigned int size;
-	unsigned int patch_ofs;
-	unsigned int patch_entries;
-};
-
-struct fw_header {
-	unsigned int magic;
-	unsigned int type;
-	unsigned int version;
-	unsigned int reserved[5];
-	struct fw_desc fw_desc[3];
-} __attribute__ ((packed));
-
-int xc_stop(struct xc *x)
-{
-	writel(RPU_HOLD_PC, x->xmac_base + NETX_XMAC_RPU_HOLD_PC_OFS);
-	writel(TPU_HOLD_PC, x->xmac_base + NETX_XMAC_TPU_HOLD_PC_OFS);
-	writel(XPU_HOLD_PC, x->xpec_base + NETX_XPEC_XPU_HOLD_PC_OFS);
-	return 0;
-}
-
-int xc_start(struct xc *x)
-{
-	writel(0, x->xmac_base + NETX_XMAC_RPU_HOLD_PC_OFS);
-	writel(0, x->xmac_base + NETX_XMAC_TPU_HOLD_PC_OFS);
-	writel(0, x->xpec_base + NETX_XPEC_XPU_HOLD_PC_OFS);
-	return 0;
-}
-
-int xc_running(struct xc *x)
-{
-	return (readl(x->xmac_base + NETX_XMAC_RPU_HOLD_PC_OFS) & RPU_HOLD_PC)
-	    || (readl(x->xmac_base + NETX_XMAC_TPU_HOLD_PC_OFS) & TPU_HOLD_PC)
-	    || (readl(x->xpec_base + NETX_XPEC_XPU_HOLD_PC_OFS) & XPU_HOLD_PC) ?
-		0 : 1;
-}
-
-int xc_reset(struct xc *x)
-{
-	writel(0, x->xpec_base + NETX_XPEC_PC_OFS);
-	return 0;
-}
-
-static int xc_check_ptr(struct xc *x, unsigned long adr, unsigned int size)
-{
-	if (adr >= NETX_PA_XMAC(x->no) &&
-	    adr + size < NETX_PA_XMAC(x->no) + XMAC_MEM_SIZE)
-		return 0;
-
-	if (adr >= NETX_PA_XPEC(x->no) &&
-	    adr + size < NETX_PA_XPEC(x->no) + XPEC_MEM_SIZE)
-		return 0;
-
-	dev_err(x->dev, "Illegal pointer in firmware found. aborting\n");
-
-	return -1;
-}
-
-static int xc_patch(struct xc *x, const void *patch, int count)
-{
-	unsigned int val, adr;
-	const unsigned int *data = patch;
-
-	int i;
-	for (i = 0; i < count; i++) {
-		adr = *data++;
-		val = *data++;
-		if (xc_check_ptr(x, adr, 4) < 0)
-			return -EINVAL;
-
-		writel(val, (void __iomem *)io_p2v(adr));
-	}
-	return 0;
-}
-
-int xc_request_firmware(struct xc *x)
-{
-	int ret;
-	char name[16];
-	const struct firmware *fw;
-	struct fw_header *head;
-	unsigned int size;
-	int i;
-	const void *src;
-	unsigned long dst;
-
-	sprintf(name, "xc%d.bin", x->no);
-
-	ret = request_firmware(&fw, name, x->dev);
-
-	if (ret < 0) {
-		dev_err(x->dev, "request_firmware failed\n");
-		return ret;
-	}
-
-	head = (struct fw_header *)fw->data;
-	if (head->magic != 0x4e657458) {
-		if (head->magic == 0x5874654e) {
-			dev_err(x->dev,
-			    "firmware magic is 'XteN'. Endianness problems?\n");
-			ret = -ENODEV;
-			goto exit_release_firmware;
-		}
-		dev_err(x->dev, "unrecognized firmware magic 0x%08x\n",
-			head->magic);
-		ret = -ENODEV;
-		goto exit_release_firmware;
-	}
-
-	x->type = head->type;
-	x->version = head->version;
-
-	ret = -EINVAL;
-
-	for (i = 0; i < 3; i++) {
-		src = fw->data + head->fw_desc[i].ofs;
-		dst = *(unsigned int *)src;
-		src += sizeof (unsigned int);
-		size = head->fw_desc[i].size - sizeof (unsigned int);
-
-		if (xc_check_ptr(x, dst, size))
-			goto exit_release_firmware;
-
-		memcpy((void *)io_p2v(dst), src, size);
-
-		src = fw->data + head->fw_desc[i].patch_ofs;
-		size = head->fw_desc[i].patch_entries;
-		ret = xc_patch(x, src, size);
-		if (ret < 0)
-			goto exit_release_firmware;
-	}
-
-	ret = 0;
-
-      exit_release_firmware:
-	release_firmware(fw);
-
-	return ret;
-}
-
-struct xc *request_xc(int xcno, struct device *dev)
-{
-	struct xc *x = NULL;
-
-	mutex_lock(&xc_lock);
-
-	if (xcno > 3)
-		goto exit;
-	if (xc_in_use & (1 << xcno))
-		goto exit;
-
-	x = kmalloc(sizeof (struct xc), GFP_KERNEL);
-	if (!x)
-		goto exit;
-
-	if (!request_mem_region
-	    (NETX_PA_XPEC(xcno), XPEC_MEM_SIZE, kobject_name(&dev->kobj)))
-		goto exit_free;
-
-	if (!request_mem_region
-	    (NETX_PA_XMAC(xcno), XMAC_MEM_SIZE, kobject_name(&dev->kobj)))
-		goto exit_release_1;
-
-	if (!request_mem_region
-	    (SRAM_INTERNAL_PHYS(xcno), SRAM_MEM_SIZE, kobject_name(&dev->kobj)))
-		goto exit_release_2;
-
-	x->xpec_base = (void * __iomem)io_p2v(NETX_PA_XPEC(xcno));
-	x->xmac_base = (void * __iomem)io_p2v(NETX_PA_XMAC(xcno));
-	x->sram_base = ioremap(SRAM_INTERNAL_PHYS(xcno), SRAM_MEM_SIZE);
-	if (!x->sram_base)
-		goto exit_release_3;
-
-	x->irq = NETX_IRQ_XPEC(xcno);
-
-	x->no = xcno;
-	x->dev = dev;
-
-	xc_in_use |= (1 << xcno);
-
-	goto exit;
-
-      exit_release_3:
-	release_mem_region(SRAM_INTERNAL_PHYS(xcno), SRAM_MEM_SIZE);
-      exit_release_2:
-	release_mem_region(NETX_PA_XMAC(xcno), XMAC_MEM_SIZE);
-      exit_release_1:
-	release_mem_region(NETX_PA_XPEC(xcno), XPEC_MEM_SIZE);
-      exit_free:
-	kfree(x);
-	x = NULL;
-      exit:
-	mutex_unlock(&xc_lock);
-	return x;
-}
-
-void free_xc(struct xc *x)
-{
-	int xcno = x->no;
-
-	mutex_lock(&xc_lock);
-
-	iounmap(x->sram_base);
-	release_mem_region(SRAM_INTERNAL_PHYS(xcno), SRAM_MEM_SIZE);
-	release_mem_region(NETX_PA_XMAC(xcno), XMAC_MEM_SIZE);
-	release_mem_region(NETX_PA_XPEC(xcno), XPEC_MEM_SIZE);
-	xc_in_use &= ~(1 << x->no);
-	kfree(x);
-
-	mutex_unlock(&xc_lock);
-}
-
-EXPORT_SYMBOL(free_xc);
-EXPORT_SYMBOL(request_xc);
-EXPORT_SYMBOL(xc_request_firmware);
-EXPORT_SYMBOL(xc_reset);
-EXPORT_SYMBOL(xc_running);
-EXPORT_SYMBOL(xc_start);
-EXPORT_SYMBOL(xc_stop);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
