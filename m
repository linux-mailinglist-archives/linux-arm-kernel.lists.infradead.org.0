Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F4ADCB0F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:32:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8APxPTfOC1epjoO8ka4ZpxoycCO2yT80+1jFlDsBlEs=; b=G5WYwE4DDTYL99
	lpV13iOV6PqsDOUByOpG9KDSz1df1H5soJfega23E4gLk/fkRKzEdoLSo6KVwYFKwMFtLFBI1CHf5
	hsEM4PD1T0zdqbrlMpR/Ui/OUCdZ3mFqE7UFrljfKKuhPHnQNyWVMxhNsY5z++6D842YHwsL6un/T
	H3otS/ALbptY8JtHqdbDQgwf84+Ty3cgveBy/SGxYk3z52g6uJQHsldbKmTWKGZh95has+YeO8rv+
	IxThj+TnFZLZDvtnfhYUCxQLILjZgYftVL3qAJtdsGXlEtcFHCsLMay/bLbGmysp9/LODuBomm+ZY
	K2/eiMozn8S8b/qij/ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVB0-0000nZ-Qs; Fri, 18 Oct 2019 16:32:30 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLV9r-00006K-5d
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:31:27 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MD9CZ-1iCOUA3OaX-0098KX; Fri, 18 Oct 2019 18:31:11 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/6] ARM: dove: multiplatform support
Date: Fri, 18 Oct 2019 18:29:17 +0200
Message-Id: <20191018163047.1284736-4-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018163047.1284736-1-arnd@arndb.de>
References: <20191018163047.1284736-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:M3I2DW7r5TJ/06Lx5PzMeSxL6W+oXKIaGMwGkheKqNMkt6Fvu9+
 +jsJ/Y9OXXK/+aMVcvhgR5qG4mTvR2gi3dp63SrwFlH9KG5wW+jb0RYbDRsHgq4MzHfW7Ls
 /o0TnPxRohuA/s4lW6+TR3IPiiHKPAF4oIhu10P4P0CSXCWKTmBUO7Myb1HRWUFlWxbrL3d
 EHKdS5+FTVd1233hLmhEw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8HsTmMg+yes=:382w6h36jb3cNFKBxl/7qa
 gpSUI0FlbKKoZGlVJF5UA0IzpzZETaUYuzyMssa/uR8tU0HcK3e3F5PpEVxt7TP2Y0xSOO9eN
 6hIvppxprHjJ1HFUar3vbYBOTXmNu8GrGRzvVJhBAjcJ6Kw1gMecBLkLSchiL24WUFICAO03d
 K/FOkHTg9qHyPPY0yTtz50zV2kwny9xhVXCXYyseyJpfi+BR7PUvlcod8lhJ3TKNFFQiPrhrS
 /iLD5jZL3UxcXlD/f+Mr12pLl7hQ6Mw79KESJFd2h7x0tMgVQq8pYh1P6rA2VyOMDLLM2cap/
 ErlaVRzHHQ/rfWB4f8iZmxrIhY3+zjlJEyOdw7cUi5d+zIwchvJ+PxI+7X2NYSZu+31UZQ/q2
 39Vps7r5TInKj2/F9/SBf7pegYvub03qovawoJKB6yqAVwW4AwgpeysnEQqo6qcYpRo5NPifD
 hFMFFxodFcAtZ/jHOEBuSuNt3ebQOqxD9BxuoEDxz2tcPDFq3IOxRPuISIkEHabOLjZjiW9cy
 zhqAQdS9urx21CW+9joKz6LAjdXKa8XcVlCX0a0whHSfP1If+Se6oDjNHg+TZ2bjl6AedS9SL
 IO1h2vmaJV/z3GGARmEYangkjc2774B1WGCGWofqaoYcKcojxHug+V7WIb3xUzT21a4THx3F+
 8QaapxWTZeNo27pWQTQuQB2oJpzoOHOOtNWr3tmUAkJ9WMbq9yih2vN0NzWisysBsgVM7/TrY
 PpQbuf/lcs2t6jSGWdxRy9IRYlHkNR6kKHo2dGPzhY2KKp3pWr1HFl7Ea5k1G+GhKZidUVWuk
 4yHfks21UVVky4Tj0DYgal7h4cfxD6Scp+NH6c/tC34sIu8g5sa6jgjxw/ssJ9cppuzy60cmy
 CeTS/ran5OCu1RRYoPDA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_093122_287521_1E9A80FB 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The dove platform is now ready to be enabled for multiplatform
support, this patch does the switch over by modifying the Kconfig file,
the defconfig and removing the last mach/*.h header that becomes obsolete
with this.

This work was originally done in 2015 as all the ARMv7 machiens
gove moved over to multiplatform builds, but at the time it conflicted
with some patches that Russell was trying to upstream, so we
left it at that.

I hope that there is no longer a need to keep dove separate from the
rest, so we can either add it to the other ARMv7 platforms, or just
replace it with the DT based platform code for the same hardware
in mach-mvebu and remove mach-dove entirely.

Acked-by: Andrew Lunn <andrew@lunn.ch>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Gregory Clement <gregory.clement@bootlin.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/Kconfig                             | 16 ---------
 arch/arm/configs/dove_defconfig              |  2 ++
 arch/arm/mach-dove/Kconfig                   | 16 ++++++---
 arch/arm/mach-dove/Makefile                  |  2 ++
 arch/arm/mach-dove/include/mach/uncompress.h | 34 --------------------
 5 files changed, 16 insertions(+), 54 deletions(-)
 delete mode 100644 arch/arm/mach-dove/include/mach/uncompress.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index cca3d240a01e..eb019bc7a370 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -415,22 +415,6 @@ config ARCH_IXP4XX
 	help
 	  Support for Intel's IXP4XX (XScale) family of processors.
 
-config ARCH_DOVE
-	bool "Marvell Dove"
-	select CPU_PJ4
-	select GENERIC_CLOCKEVENTS
-	select GENERIC_IRQ_MULTI_HANDLER
-	select GPIOLIB
-	select HAVE_PCI
-	select MVEBU_MBUS
-	select PINCTRL
-	select PINCTRL_DOVE
-	select PLAT_ORION_LEGACY
-	select SPARSE_IRQ
-	select PM_GENERIC_DOMAINS if PM
-	help
-	  Support for the Marvell Dove SoC 88AP510
-
 config ARCH_PXA
 	bool "PXA2xx/PXA3xx-based"
 	depends on MMU
diff --git a/arch/arm/configs/dove_defconfig b/arch/arm/configs/dove_defconfig
index e70c997d5f4c..1ced32deac75 100644
--- a/arch/arm/configs/dove_defconfig
+++ b/arch/arm/configs/dove_defconfig
@@ -8,6 +8,8 @@ CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
 # CONFIG_BLK_DEV_BSG is not set
 CONFIG_PARTITION_ADVANCED=y
+# CONFIG_ARCH_MULTI_V6 is not set
+CONFIG_ARCH_MULTI_V7=y
 CONFIG_ARCH_DOVE=y
 CONFIG_MACH_DOVE_DB=y
 CONFIG_MACH_CM_A510=y
diff --git a/arch/arm/mach-dove/Kconfig b/arch/arm/mach-dove/Kconfig
index 7747fe64420a..c30c69c664ea 100644
--- a/arch/arm/mach-dove/Kconfig
+++ b/arch/arm/mach-dove/Kconfig
@@ -1,7 +1,17 @@
 # SPDX-License-Identifier: GPL-2.0
-if ARCH_DOVE
+menuconfig ARCH_DOVE
+	bool "Marvell Dove" if ARCH_MULTI_V7
+	select CPU_PJ4
+	select GPIOLIB
+	select MVEBU_MBUS
+	select PINCTRL
+	select PINCTRL_DOVE
+	select PLAT_ORION_LEGACY
+	select PM_GENERIC_DOMAINS if PM
+	help
+	  Support for the Marvell Dove SoC 88AP510
 
-menu "Marvell Dove Implementations"
+if ARCH_DOVE
 
 config DOVE_LEGACY
 	bool
@@ -21,6 +31,4 @@ config MACH_CM_A510
 	  Say 'Y' here if you want your kernel to support the
 	  CompuLab CM-A510 Board.
 
-endmenu
-
 endif
diff --git a/arch/arm/mach-dove/Makefile b/arch/arm/mach-dove/Makefile
index cdf163cab738..e83f6492834d 100644
--- a/arch/arm/mach-dove/Makefile
+++ b/arch/arm/mach-dove/Makefile
@@ -1,4 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
+ccflags-$(CONFIG_ARCH_MULTIPLATFORM) := -I$(srctree)/arch/arm/plat-orion/include
+
 obj-y				+= common.o
 obj-$(CONFIG_DOVE_LEGACY)	+= irq.o mpp.o
 obj-$(CONFIG_PCI)		+= pcie.o
diff --git a/arch/arm/mach-dove/include/mach/uncompress.h b/arch/arm/mach-dove/include/mach/uncompress.h
deleted file mode 100644
index 7a4bd8838036..000000000000
--- a/arch/arm/mach-dove/include/mach/uncompress.h
+++ /dev/null
@@ -1,34 +0,0 @@
-/*
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
-
-#define UART0_PHYS_BASE (0xf1000000 + 0x12000)
-
-#define UART_THR ((volatile unsigned char *)(UART0_PHYS_BASE + 0x0))
-#define UART_LSR ((volatile unsigned char *)(UART0_PHYS_BASE + 0x14))
-
-#define LSR_THRE	0x20
-
-static void putc(const char c)
-{
-	int i;
-
-	for (i = 0; i < 0x1000; i++) {
-		/* Transmit fifo not full? */
-		if (*UART_LSR & LSR_THRE)
-			break;
-	}
-
-	*UART_THR = c;
-}
-
-static void flush(void)
-{
-}
-
-/*
- * nothing to do
- */
-#define arch_decomp_setup()
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
