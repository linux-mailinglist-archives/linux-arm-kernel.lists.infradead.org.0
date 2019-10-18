Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23426DCB11
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:32:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wLxKauKEOGd5dJIgeT2kYxVc9eWcIgDGy3ARDd75OFE=; b=V4RLdqIZwkffoQ
	CTfa9ExP25zcP2dgeVsDHyRQroQB9EBL1Yki2TYvIoR2U/xZ4R4u6b7agjpdpIoV9y1h7jTtRCnvt
	4zxaGJlXolzSE8mGcifq+1jvn/sF6lKJHpJLSs5vmMhl+/rDineZC3oAMl5ZxEF9IsulNBhx+oube
	Hj4OBEwJlAOX7w6Dj6yDXKK5rm1sRQOARW8eBS+OmU9O6UcSMVBn9+N+w9q0oxPevrEph6Z6Kshfi
	GXn/d7Ozl6bUYhdP3mXaxls+HHu4r4AZI3dQLDe1t41gKKxOGmD8U5gtC8ORauNO7dHGjFGT3LC1y
	+jytbMjRBedzL8aWz3mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVBP-00017c-Q0; Fri, 18 Oct 2019 16:32:55 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVAD-0000Ix-Rp
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:31:46 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M6VNX-1iNR6h1hd3-006tHV; Fri, 18 Oct 2019 18:31:38 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/6] ARM: orion: unify Makefile/Kconfig files
Date: Fri, 18 Oct 2019 18:29:19 +0200
Message-Id: <20191018163047.1284736-6-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018163047.1284736-1-arnd@arndb.de>
References: <20191018163047.1284736-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:TuAspewuqamCkrx/L3rEFa20b0IEdAzjEp5Ax35Eax97TyknExo
 gu9rruc4dHOViCbXKw+zFUxTcxQMIZRxRcenbZPsB5vap29EcChhJ2OtGRVa23QxEgPwEOn
 2Se2m7JdCDRdexlhC7GFoCbzh455TGBEptrFcaJ8DeswfZ2upE4P5z842xNGkNmQ9WD/5li
 hhWFHwkvo2QIMruats2UQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kdju0oXzgYg=:BqOAqLqMsSQt/gCpjxHBGq
 YeRxManuVjEw9CwFxmfC5zlBP4jyfsopEFM+NlgGaxbzgzsUQl0zjbF4K7DISv4wWyM+VuNko
 7wIBwZ6yAclzicUyMQqYkz4USMUPxhbYuhBAbsS+OuLTyFtp42O3lCwXL8LDLNUKXXb9sIT27
 xIJAm/3+2p4gutoKZ7oiHc69DvDmw5t1Y+hY8ZQ4k5KqJ7oM8bqQ/kas9IrcakHozzsdaEE3C
 b/tMa+41QPoUZgJgfLwIFbnvf/9p8sQPsWQS4tsdw7kDBt5yqGcy3mRUddbuenBx1p9ywwauk
 GHwJoZvpsIWBcCVFLb+qGuQDQsKhs0i/2RB2kQWn4G1kS94N+nUJQG0sJCjfA+YrBcw0evska
 UOZGh4jXoi1T5bAx4R60OLQ6s687E/IqxuSsUJx3EBpWOfraIK1WZIiFhp2wmN8AKT1NLXKvU
 /574RVdAB35T+glaFdHMtKfe4ZeMuiHMv1mB/n9OLdMdF5VCWAYPW6jAe/pPs/GaJFZCocTlt
 +yitiTiIOt6GB+8OLygamOYbKZnskMit3c98T98AdiMlezvsTJA90C3RRDPetxXwgrrl83avx
 Wk3gkcSWA3VDNfc5Ah6WjOZShvfJ6y76xHL3nat5Nv2nYrJbdChuq4hWDBHbqichjJUKqsTd5
 QRQUGa/VVOZlLEySNvPfogmcEKcz620D7uB6JzeNhUI4Rq3DEPe/y68A5eaAvVB0NjtoEu/MU
 L0maSUChlArky+n3jUnFDQZHzfuom/hxknNOGa5p6CgAiDMXqY8wvYZQ0Xoe8ShzxmyKhICGs
 7F1qE5tJmbc+6z5IoFYtcnVs8F7nYzBvuPtgWlsnLiSsoHLsrbAobpgNy6vmrsQya3qb6thAy
 bRem2s2fBsBTdhEy1sBw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_093142_397257_3C4CBCE3 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, Gregory Clement <gregory.clement@bootlin.com>,
 linux-kernel@vger.kernel.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is no reason to keep these separate, so move them into
the generic files.

Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Gregory Clement <gregory.clement@bootlin.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-orion/Kconfig          | 232 ++++++++++++++++++++++++++-
 arch/arm/mach-orion/Kconfig.dove     |  34 ----
 arch/arm/mach-orion/Kconfig.mv78xx0  |  34 ----
 arch/arm/mach-orion/Kconfig.orion5x  | 170 --------------------
 arch/arm/mach-orion/Makefile         |  54 +++++--
 arch/arm/mach-orion/Makefile.dove    |   6 -
 arch/arm/mach-orion/Makefile.mv78xx0 |   5 -
 arch/arm/mach-orion/Makefile.orion5x |  24 ---
 8 files changed, 268 insertions(+), 291 deletions(-)
 delete mode 100644 arch/arm/mach-orion/Kconfig.dove
 delete mode 100644 arch/arm/mach-orion/Kconfig.mv78xx0
 delete mode 100644 arch/arm/mach-orion/Kconfig.orion5x
 delete mode 100644 arch/arm/mach-orion/Makefile.dove
 delete mode 100644 arch/arm/mach-orion/Makefile.mv78xx0
 delete mode 100644 arch/arm/mach-orion/Makefile.orion5x

diff --git a/arch/arm/mach-orion/Kconfig b/arch/arm/mach-orion/Kconfig
index bad1fe673674..67e1e0b0c831 100644
--- a/arch/arm/mach-orion/Kconfig
+++ b/arch/arm/mach-orion/Kconfig
@@ -3,12 +3,238 @@ config PLAT_ORION
 	select CLKSRC_MMIO
 	select COMMON_CLK
 	select GENERIC_IRQ_CHIP
+	select GPIOLIB
 	select IRQ_DOMAIN
+	select MVEBU_MBUS
 
 config PLAT_ORION_LEGACY
 	bool
 	select PLAT_ORION
 
-source "arch/arm/mach-orion/Kconfig.dove"
-source "arch/arm/mach-orion/Kconfig.mv78xx0"
-source "arch/arm/mach-orion/Kconfig.orion5x"
+menuconfig ARCH_DOVE
+	bool "Marvell Dove" if ARCH_MULTI_V7
+	select CPU_PJ4
+	select PINCTRL
+	select PINCTRL_DOVE
+	select PLAT_ORION_LEGACY
+	select PM_GENERIC_DOMAINS if PM
+	help
+	  Support for the Marvell Dove SoC 88AP510
+
+if ARCH_DOVE
+
+config MACH_DOVE_DB
+	bool "Marvell DB-MV88AP510 Development Board"
+	select I2C_BOARDINFO if I2C
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  Marvell DB-MV88AP510 Development Board.
+
+config MACH_CM_A510
+	bool "CompuLab CM-A510 Board"
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  CompuLab CM-A510 Board.
+
+endif
+
+menuconfig ARCH_MV78XX0
+	bool "Marvell MV78xx0"
+	depends on ARCH_MULTI_V5
+	select CPU_FEROCEON
+	select FORCE_PCI
+	select PLAT_ORION_LEGACY
+	help
+	  Support for the following Marvell MV78xx0 series SoCs:
+	  MV781x0, MV782x0.
+
+if ARCH_MV78XX0
+
+config MACH_DB78X00_BP
+	bool "Marvell DB-78x00-BP Development Board"
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  Marvell DB-78x00-BP Development Board.
+
+config MACH_RD78X00_MASA
+	bool "Marvell RD-78x00-mASA Reference Design"
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  Marvell RD-78x00-mASA Reference Design.
+
+config MACH_TERASTATION_WXL
+	bool "Buffalo WLX (Terastation Duo) NAS"
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  Buffalo WXL Nas.
+
+endif
+
+# SPDX-License-Identifier: GPL-2.0-only
+menuconfig ARCH_ORION5X
+	bool "Marvell Orion"
+	depends on MMU && ARCH_MULTI_V5
+	select CPU_FEROCEON
+	select GENERIC_CLOCKEVENTS
+	select FORCE_PCI
+	select PHYLIB if NETDEVICES
+	select PLAT_ORION_LEGACY
+	help
+	  Support for the following Marvell Orion 5x series SoCs:
+	  Orion-1 (5181), Orion-VoIP (5181L), Orion-NAS (5182),
+	  Orion-2 (5281), Orion-1-90 (6183).
+
+if ARCH_ORION5X
+
+config ARCH_ORION5X_DT
+	bool "Marvell Orion5x Flattened Device Tree"
+	select USE_OF
+	select ORION_CLK
+	select ORION_IRQCHIP
+	select ORION_TIMER
+	select PINCTRL
+	select PINCTRL_ORION
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  Marvell Orion5x using flattened device tree.
+
+config MACH_DB88F5281
+	bool "Marvell Orion-2 Development Board"
+	select I2C_BOARDINFO if I2C
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  Marvell Orion-2 (88F5281) Development Board
+
+config MACH_RD88F5182
+	bool "Marvell Orion-NAS Reference Design"
+	select I2C_BOARDINFO if I2C
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  Marvell Orion-NAS (88F5182) RD2
+
+config MACH_RD88F5182_DT
+	bool "Marvell Orion-NAS Reference Design (Flattened Device Tree)"
+	select ARCH_ORION5X_DT
+	select I2C_BOARDINFO if I2C
+	help
+	  Say 'Y' here if you want your kernel to support the Marvell
+	  Orion-NAS (88F5182) RD2, Flattened Device Tree.
+
+config MACH_KUROBOX_PRO
+	bool "KuroBox Pro"
+	select I2C_BOARDINFO if I2C
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  KuroBox Pro platform.
+
+config MACH_DNS323
+	bool "D-Link DNS-323"
+	select I2C_BOARDINFO if I2C
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  D-Link DNS-323 platform.
+
+config MACH_TS209
+	bool "QNAP TS-109/TS-209"
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  QNAP TS-109/TS-209 platform.
+
+config MACH_TERASTATION_PRO2
+	bool "Buffalo Terastation Pro II/Live"
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  Buffalo Terastation Pro II/Live platform.
+
+config MACH_LINKSTATION_PRO
+	bool "Buffalo Linkstation Pro/Live"
+	select I2C_BOARDINFO if I2C
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  Buffalo Linkstation Pro/Live platform. Both v1 and
+	  v2 devices are supported.
+
+config MACH_LINKSTATION_MINI
+	bool "Buffalo Linkstation Mini (Flattened Device Tree)"
+	select ARCH_ORION5X_DT
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  Buffalo Linkstation Mini (LS-WSGL) platform.
+
+config MACH_LINKSTATION_LS_HGL
+	bool "Buffalo Linkstation LS-HGL"
+	select I2C_BOARDINFO if I2C
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  Buffalo Linkstation LS-HGL platform.
+
+config MACH_TS409
+	bool "QNAP TS-409"
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  QNAP TS-409 platform.
+
+config MACH_WRT350N_V2
+	bool "Linksys WRT350N v2"
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  Linksys WRT350N v2 platform.
+
+config MACH_TS78XX
+	bool "Technologic Systems TS-78xx"
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  Technologic Systems TS-78xx platform.
+
+config MACH_MV2120
+	bool "HP Media Vault mv2120"
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  HP Media Vault mv2120 or mv5100.
+
+config MACH_D2NET_DT
+	bool "LaCie d2 Network / Big Disk Network (Flattened Device Tree)"
+	select ARCH_ORION5X_DT
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  LaCie d2 Network NAS.
+
+config MACH_NET2BIG
+	bool "LaCie 2Big Network"
+	select I2C_BOARDINFO if I2C
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  LaCie 2Big Network NAS.
+
+config MACH_MSS2_DT
+	bool "Maxtor Shared Storage II (Flattened Device Tree)"
+	select ARCH_ORION5X_DT
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  Maxtor Shared Storage II platform.
+
+config MACH_WNR854T
+	bool "Netgear WNR854T"
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  Netgear WNR854T platform.
+
+config MACH_RD88F5181L_GE
+	bool "Marvell Orion-VoIP GE Reference Design"
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  Marvell Orion-VoIP GE (88F5181L) RD.
+
+config MACH_RD88F5181L_FXO
+	bool "Marvell Orion-VoIP FXO Reference Design"
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  Marvell Orion-VoIP FXO (88F5181L) RD.
+
+config MACH_RD88F6183AP_GE
+	bool "Marvell Orion-1-90 AP GE Reference Design"
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  Marvell Orion-1-90 (88F6183) AP GE RD.
+
+endif
diff --git a/arch/arm/mach-orion/Kconfig.dove b/arch/arm/mach-orion/Kconfig.dove
deleted file mode 100644
index c30c69c664ea..000000000000
--- a/arch/arm/mach-orion/Kconfig.dove
+++ /dev/null
@@ -1,34 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-menuconfig ARCH_DOVE
-	bool "Marvell Dove" if ARCH_MULTI_V7
-	select CPU_PJ4
-	select GPIOLIB
-	select MVEBU_MBUS
-	select PINCTRL
-	select PINCTRL_DOVE
-	select PLAT_ORION_LEGACY
-	select PM_GENERIC_DOMAINS if PM
-	help
-	  Support for the Marvell Dove SoC 88AP510
-
-if ARCH_DOVE
-
-config DOVE_LEGACY
-	bool
-
-config MACH_DOVE_DB
-	bool "Marvell DB-MV88AP510 Development Board"
-	select DOVE_LEGACY
-	select I2C_BOARDINFO if I2C
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  Marvell DB-MV88AP510 Development Board.
-
-config MACH_CM_A510
-	bool "CompuLab CM-A510 Board"
-	select DOVE_LEGACY
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  CompuLab CM-A510 Board.
-
-endif
diff --git a/arch/arm/mach-orion/Kconfig.mv78xx0 b/arch/arm/mach-orion/Kconfig.mv78xx0
deleted file mode 100644
index ea52c7fabb79..000000000000
--- a/arch/arm/mach-orion/Kconfig.mv78xx0
+++ /dev/null
@@ -1,34 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-menuconfig ARCH_MV78XX0
-	bool "Marvell MV78xx0"
-	depends on ARCH_MULTI_V5
-	select CPU_FEROCEON
-	select GPIOLIB
-	select MVEBU_MBUS
-	select FORCE_PCI
-	select PLAT_ORION_LEGACY
-	help
-	  Support for the following Marvell MV78xx0 series SoCs:
-	  MV781x0, MV782x0.
-
-if ARCH_MV78XX0
-
-config MACH_DB78X00_BP
-	bool "Marvell DB-78x00-BP Development Board"
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  Marvell DB-78x00-BP Development Board.
-
-config MACH_RD78X00_MASA
-	bool "Marvell RD-78x00-mASA Reference Design"
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  Marvell RD-78x00-mASA Reference Design.
-
-config MACH_TERASTATION_WXL
-	bool "Buffalo WLX (Terastation Duo) NAS"
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  Buffalo WXL Nas.
-
-endif
diff --git a/arch/arm/mach-orion/Kconfig.orion5x b/arch/arm/mach-orion/Kconfig.orion5x
deleted file mode 100644
index cf9cb3d2590e..000000000000
--- a/arch/arm/mach-orion/Kconfig.orion5x
+++ /dev/null
@@ -1,170 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-menuconfig ARCH_ORION5X
-	bool "Marvell Orion"
-	depends on MMU && ARCH_MULTI_V5
-	select CPU_FEROCEON
-	select GENERIC_CLOCKEVENTS
-	select GPIOLIB
-	select MVEBU_MBUS
-	select FORCE_PCI
-	select PHYLIB if NETDEVICES
-	select PLAT_ORION_LEGACY
-	help
-	  Support for the following Marvell Orion 5x series SoCs:
-	  Orion-1 (5181), Orion-VoIP (5181L), Orion-NAS (5182),
-	  Orion-2 (5281), Orion-1-90 (6183).
-
-if ARCH_ORION5X
-
-config ARCH_ORION5X_DT
-	bool "Marvell Orion5x Flattened Device Tree"
-	select USE_OF
-	select ORION_CLK
-	select ORION_IRQCHIP
-	select ORION_TIMER
-	select PINCTRL
-	select PINCTRL_ORION
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  Marvell Orion5x using flattened device tree.
-
-config MACH_DB88F5281
-	bool "Marvell Orion-2 Development Board"
-	select I2C_BOARDINFO if I2C
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  Marvell Orion-2 (88F5281) Development Board
-
-config MACH_RD88F5182
-	bool "Marvell Orion-NAS Reference Design"
-	select I2C_BOARDINFO if I2C
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  Marvell Orion-NAS (88F5182) RD2
-
-config MACH_RD88F5182_DT
-	bool "Marvell Orion-NAS Reference Design (Flattened Device Tree)"
-	select ARCH_ORION5X_DT
-	select I2C_BOARDINFO if I2C
-	help
-	  Say 'Y' here if you want your kernel to support the Marvell
-	  Orion-NAS (88F5182) RD2, Flattened Device Tree.
-
-config MACH_KUROBOX_PRO
-	bool "KuroBox Pro"
-	select I2C_BOARDINFO if I2C
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  KuroBox Pro platform.
-
-config MACH_DNS323
-	bool "D-Link DNS-323"
-	select I2C_BOARDINFO if I2C
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  D-Link DNS-323 platform.
-
-config MACH_TS209
-	bool "QNAP TS-109/TS-209"
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  QNAP TS-109/TS-209 platform.
-
-config MACH_TERASTATION_PRO2
-	bool "Buffalo Terastation Pro II/Live"
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  Buffalo Terastation Pro II/Live platform.
-
-config MACH_LINKSTATION_PRO
-	bool "Buffalo Linkstation Pro/Live"
-	select I2C_BOARDINFO if I2C
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  Buffalo Linkstation Pro/Live platform. Both v1 and
-	  v2 devices are supported.
-
-config MACH_LINKSTATION_MINI
-	bool "Buffalo Linkstation Mini (Flattened Device Tree)"
-	select ARCH_ORION5X_DT
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  Buffalo Linkstation Mini (LS-WSGL) platform.
-
-config MACH_LINKSTATION_LS_HGL
-	bool "Buffalo Linkstation LS-HGL"
-	select I2C_BOARDINFO if I2C
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  Buffalo Linkstation LS-HGL platform.
-
-config MACH_TS409
-	bool "QNAP TS-409"
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  QNAP TS-409 platform.
-
-config MACH_WRT350N_V2
-	bool "Linksys WRT350N v2"
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  Linksys WRT350N v2 platform.
-
-config MACH_TS78XX
-	bool "Technologic Systems TS-78xx"
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  Technologic Systems TS-78xx platform.
-
-config MACH_MV2120
-	bool "HP Media Vault mv2120"
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  HP Media Vault mv2120 or mv5100.
-
-config MACH_D2NET_DT
-	bool "LaCie d2 Network / Big Disk Network (Flattened Device Tree)"
-	select ARCH_ORION5X_DT
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  LaCie d2 Network NAS.
-
-config MACH_NET2BIG
-	bool "LaCie 2Big Network"
-	select I2C_BOARDINFO if I2C
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  LaCie 2Big Network NAS.
-
-config MACH_MSS2_DT
-	bool "Maxtor Shared Storage II (Flattened Device Tree)"
-	select ARCH_ORION5X_DT
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  Maxtor Shared Storage II platform.
-
-config MACH_WNR854T
-	bool "Netgear WNR854T"
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  Netgear WNR854T platform.
-
-config MACH_RD88F5181L_GE
-	bool "Marvell Orion-VoIP GE Reference Design"
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  Marvell Orion-VoIP GE (88F5181L) RD.
-
-config MACH_RD88F5181L_FXO
-	bool "Marvell Orion-VoIP FXO Reference Design"
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  Marvell Orion-VoIP FXO (88F5181L) RD.
-
-config MACH_RD88F6183AP_GE
-	bool "Marvell Orion-1-90 AP GE Reference Design"
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  Marvell Orion-1-90 (88F6183) AP GE RD.
-
-endif
diff --git a/arch/arm/mach-orion/Makefile b/arch/arm/mach-orion/Makefile
index ded450d9bda3..bcfba0c64587 100644
--- a/arch/arm/mach-orion/Makefile
+++ b/arch/arm/mach-orion/Makefile
@@ -1,21 +1,45 @@
 # SPDX-License-Identifier: GPL-2.0-only
-#
-# Makefile for the linux kernel.
-#
-ccflags-$(CONFIG_ARCH_MULTIPLATFORM) := -I$(srctree)/$(src)/include
 
-orion-gpio-$(CONFIG_GPIOLIB)      += gpio.o
-obj-$(CONFIG_PLAT_ORION_LEGACY)   += irq.o pcie.o time.o common.o mpp.o
-obj-$(CONFIG_PLAT_ORION_LEGACY)   += $(orion-gpio-y)
+orion-gpio-$(CONFIG_GPIOLIB)		+= gpio.o
+obj-$(CONFIG_PLAT_ORION_LEGACY)		+= irq.o time.o common.o mpp.o
+obj-$(CONFIG_PLAT_ORION_LEGACY)		+= $(orion-gpio-y)
 
-ifdef CONFIG_ARCH_DOVE
-include $(src)/Makefile.dove
+ifdef CONFIG_PCI
+obj-$(CONFIG_PLAT_ORION_LEGACY)		+= pcie.o
+obj-$(CONFIG_ARCH_DOVE)			+= dove-pcie.o
+obj-$(CONFIG_ARCH_MV78XX0)		+= mv78xx0-pcie.o
+obj-$(CONFIG_ARCH_ORION5X)		+= orion5x-pci.o
 endif
 
-ifdef CONFIG_ARCH_MV78XX0
-include $(src)/Makefile.mv78xx0
-endif
+obj-$(CONFIG_ARCH_DOVE)			+= dove-common.o dove-irq.o dove-mpp.o
+obj-$(CONFIG_MACH_DOVE_DB)		+= dove-db-setup.o
+obj-$(CONFIG_MACH_CM_A510)		+= cm-a510.o
 
-ifdef CONFIG_ARCH_ORION5X
-include $(src)/Makefile.orion5x
-endif
+obj-$(CONFIG_ARCH_MV78XX0)		+= mv78xx0-common.o mv78xx0-mpp.o mv78xx0-irq.o
+obj-$(CONFIG_MACH_DB78X00_BP)		+= db78x00-bp-setup.o
+obj-$(CONFIG_MACH_RD78X00_MASA)		+= rd78x00-masa-setup.o
+obj-$(CONFIG_MACH_TERASTATION_WXL)	+= buffalo-wxl-setup.o
+
+obj-$(CONFIG_ARCH_ORION5X)		+= orion5x.o orion5x-irq.o orion5x-mpp.o
+obj-$(CONFIG_MACH_DB88F5281)		+= db88f5281-setup.o
+obj-$(CONFIG_MACH_RD88F5182)		+= rd88f5182-setup.o
+obj-$(CONFIG_MACH_KUROBOX_PRO)		+= kurobox_pro-setup.o
+obj-$(CONFIG_MACH_TERASTATION_PRO2)	+= terastation_pro2-setup.o
+obj-$(CONFIG_MACH_LINKSTATION_PRO)	+= kurobox_pro-setup.o
+obj-$(CONFIG_MACH_LINKSTATION_LS_HGL)	+= ls_hgl-setup.o
+obj-$(CONFIG_MACH_DNS323)		+= dns323-setup.o
+obj-$(CONFIG_MACH_TS209)		+= ts209-setup.o tsx09-common.o
+obj-$(CONFIG_MACH_TS409)		+= ts409-setup.o tsx09-common.o
+obj-$(CONFIG_MACH_WRT350N_V2)		+= wrt350n-v2-setup.o
+obj-$(CONFIG_MACH_TS78XX)		+= ts78xx-setup.o
+obj-$(CONFIG_MACH_MV2120)		+= mv2120-setup.o
+obj-$(CONFIG_MACH_NET2BIG)		+= net2big-setup.o
+obj-$(CONFIG_MACH_WNR854T)		+= wnr854t-setup.o
+obj-$(CONFIG_MACH_RD88F5181L_GE)	+= rd88f5181l-ge-setup.o
+obj-$(CONFIG_MACH_RD88F5181L_FXO)	+= rd88f5181l-fxo-setup.o
+obj-$(CONFIG_MACH_RD88F6183AP_GE)	+= rd88f6183ap-ge-setup.o
+
+obj-$(CONFIG_ARCH_ORION5X_DT)		+= board-dt.o
+obj-$(CONFIG_MACH_D2NET_DT)		+= board-d2net.o
+obj-$(CONFIG_MACH_MSS2_DT)		+= board-mss2.o
+obj-$(CONFIG_MACH_RD88F5182_DT)		+= board-rd88f5182.o
diff --git a/arch/arm/mach-orion/Makefile.dove b/arch/arm/mach-orion/Makefile.dove
deleted file mode 100644
index 1e85d595836a..000000000000
--- a/arch/arm/mach-orion/Makefile.dove
+++ /dev/null
@@ -1,6 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-obj-y				+= dove-common.o
-obj-$(CONFIG_DOVE_LEGACY)	+= dove-irq.o dove-mpp.o
-obj-$(CONFIG_PCI)		+= dove-pcie.o
-obj-$(CONFIG_MACH_DOVE_DB)	+= dove-db-setup.o
-obj-$(CONFIG_MACH_CM_A510)	+= cm-a510.o
diff --git a/arch/arm/mach-orion/Makefile.mv78xx0 b/arch/arm/mach-orion/Makefile.mv78xx0
deleted file mode 100644
index c56ee058808a..000000000000
--- a/arch/arm/mach-orion/Makefile.mv78xx0
+++ /dev/null
@@ -1,5 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-obj-y				+= mv78xx0-common.o mv78xx0-mpp.o mv78xx0-irq.o mv78xx0-pcie.o
-obj-$(CONFIG_MACH_DB78X00_BP)	+= db78x00-bp-setup.o
-obj-$(CONFIG_MACH_RD78X00_MASA)	+= rd78x00-masa-setup.o
-obj-$(CONFIG_MACH_TERASTATION_WXL) += buffalo-wxl-setup.o
diff --git a/arch/arm/mach-orion/Makefile.orion5x b/arch/arm/mach-orion/Makefile.orion5x
deleted file mode 100644
index a36c5e504698..000000000000
--- a/arch/arm/mach-orion/Makefile.orion5x
+++ /dev/null
@@ -1,24 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-obj-y				+= orion5x.o orion5x-pci.o orion5x-irq.o orion5x-mpp.o
-obj-$(CONFIG_MACH_DB88F5281)	+= db88f5281-setup.o
-obj-$(CONFIG_MACH_RD88F5182)	+= rd88f5182-setup.o
-obj-$(CONFIG_MACH_KUROBOX_PRO)	+= kurobox_pro-setup.o
-obj-$(CONFIG_MACH_TERASTATION_PRO2)	+= terastation_pro2-setup.o
-obj-$(CONFIG_MACH_LINKSTATION_PRO) += kurobox_pro-setup.o
-obj-$(CONFIG_MACH_LINKSTATION_LS_HGL) += ls_hgl-setup.o
-obj-$(CONFIG_MACH_DNS323)	+= dns323-setup.o
-obj-$(CONFIG_MACH_TS209)	+= ts209-setup.o tsx09-common.o
-obj-$(CONFIG_MACH_TS409)	+= ts409-setup.o tsx09-common.o
-obj-$(CONFIG_MACH_WRT350N_V2)	+= wrt350n-v2-setup.o
-obj-$(CONFIG_MACH_TS78XX)	+= ts78xx-setup.o
-obj-$(CONFIG_MACH_MV2120)	+= mv2120-setup.o
-obj-$(CONFIG_MACH_NET2BIG)	+= net2big-setup.o
-obj-$(CONFIG_MACH_WNR854T)	+= wnr854t-setup.o
-obj-$(CONFIG_MACH_RD88F5181L_GE)	+= rd88f5181l-ge-setup.o
-obj-$(CONFIG_MACH_RD88F5181L_FXO)	+= rd88f5181l-fxo-setup.o
-obj-$(CONFIG_MACH_RD88F6183AP_GE)	+= rd88f6183ap-ge-setup.o
-
-obj-$(CONFIG_ARCH_ORION5X_DT)		+= board-dt.o
-obj-$(CONFIG_MACH_D2NET_DT)	+= board-d2net.o
-obj-$(CONFIG_MACH_MSS2_DT)	+= board-mss2.o
-obj-$(CONFIG_MACH_RD88F5182_DT)	+= board-rd88f5182.o
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
