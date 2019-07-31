Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7887CDD4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:06:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7hX/n1n8tEcrZ646wpGoN8oq8WXld8niC89wn0ESOFc=; b=dq9dBp5BTWvHyl
	pKVKo0U3X7knRr9bID/8EAZLem+sU1F06aRlPSs/GMYqISzyMxUPKurD6lyTUyN+FwcY0Ou2CVEai
	pwB46zBDTDVGtV+4+RhJrlHDGdirag4/Wxd4GmJ3zp3mpgF5tzqdYfE3LMaFFZA6asdmUvAjqLWPv
	rKymDFyi+DmDZxVToarHSLGN/EuWY/sK92U+sp91K1yIIsZbUaXYGc4ZUoYWY0G63Efzg9X8s03l8
	noSQsBHs7Aa7d8SWHjQI/F+/HesyS7SqH+bdpqDlup7WfzDIuMNCwN9n+8dh2SqDl5qviNxFzp1FY
	mpmLWS7CH3IFT8QEoAFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsusA-0007Nq-Ji; Wed, 31 Jul 2019 20:06:54 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsus3-0007NN-1p
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:06:48 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M2xjg-1hwDiO0mU8-003Ngr; Wed, 31 Jul 2019 22:06:16 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org, linux-arm-kernel@lists.infradead.org,
 Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: [PATCH 14/14] ARM: dove: multiplatform support
Date: Wed, 31 Jul 2019 21:56:56 +0200
Message-Id: <20190731195713.3150463-15-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190731195713.3150463-1-arnd@arndb.de>
References: <20190731195713.3150463-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:85eWple6ACFlHQs06NQni6QWzJNxZWtwqV4c+ZTQxKwOfP+LnNf
 Lo+nP8CqmtyadmCr5iK1lbOIRMLVN71eEsKpshA+Ky2uivTEFWNNmUBZ0INsQeQSIulmCDj
 6Yw/3jn/RXHZcg+SF0zv3g5krRPaHxNxLdRENv5pFB41mAMzH2YeVJxvloQsLzerDfNow2K
 /PmOUgDhr30s+fjeYcS2Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ImgMlleMZiY=:/760y3qKqIc1sQDa49JSUQ
 YKUdYsdG5yy5b3Ks+fhV9CDyqe1+FeYnfRJOJCA8xzADRU41LnuYp5OLWw1QrW30GCNprqgOS
 iJUd9/YYnbqcQfbI/BJ2cFBlP7ZCDiT/kHH/Jk96dOFeZ8mU8sosbwAvD2Grv7h4RbH6nRvv5
 zqF9ux+VB38DYe66bu03i4EbqSf+oHfEnmwrDZzW5ronWfCcrRqoKWHyVHCvicWLMby/Vomv6
 bkbpADKbxwZbAIGelenCTzqa25zwrVbencKpdNspNCufWZwrqeb8DZL70FbFE2q62PfFIM1VT
 9/EVKbWXtXRvSjgRKhOm2rYPdZV9pijB3THCtFNGD9pwnhx2czwCRx6Ax6N7ClYt8AZRedXfn
 g00DAep7mEOlLZPNvJy+kvT2YQueVFyehTpFFNKTcPe0Kdni+mW/3ZuyjKPiqCe0xnGqb4LtI
 TmFAql3hv/jl7XKDP7t1Pyi0rp0hEp9cCoiphO2BvLWDTsHclXJQ7FY99rO/N3FIK60HPc/px
 DMtgxO35opTCU8esYbZ3O10lRTFI/Sw7z7m0IqTJvtJabEbMyMrc5k6k2/3HZTjSvqzRRXYWB
 gkDBDcjpjwnEKJaWy/wff/vXeCH04pN3ae+x4Q05tFUjT6jR0X05IdnySaSbEuV0QAsTAHPJA
 En0+5mU1BLy5/YfBR3Rkiqyr9sYY7qrkXhE/6SejhNwAq5rCdVGTaZi4ZJfBbqA+ylskRGiT+
 KVOq3DVl3VZjk34f09HAvxDEAQepsGpAqIlSkQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_130647_383000_9953DE9F 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: linux-watchdog@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, linux-serial@vger.kernel.org,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Guenter Roeck <linux@roeck-us.net>
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
index 65808e17cb3b..67f98f1ab399 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -435,22 +435,6 @@ config ARCH_IXP4XX
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
 config ARCH_KS8695
 	bool "Micrel/Kendin KS8695"
 	select CLKSRC_MMIO
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
