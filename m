Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3DE86C4C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 23:25:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SjDsPDc4Tbxc35Zwl03XswRu/yhAvwbQgtTiBFpInXU=; b=KEA74d6OwEHlRZ
	FYcXGyshKPpj2yFA4ykNkHS6oVV+ihhySttq7yfppu2SheY9b/exuNQh2EGzw7lMhqwuCGcTey5SP
	qUZ+b9XSQ8ZH+ftoZGt4UffS6u25yvzOgEjiaWo9TQoRSJmCy5N7KW6izp55ueDz2uo+lRN7Sa6JV
	yIosifjxaVyqq730YrRwAos/H+voA9/5pK/pgBZQGj/T7EU2r8dPmeHefqEDWlDuXdpLXpKVNLuBE
	ReOAUiOFN9yY01o1HVeyfxz10XsoyN5TriEqkecAwm1vHI8FHveh1cm1PteiR1HOxlprDeovI1TIu
	dbuiXMc+PcHOF7izxZqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvpua-0005jZ-8j; Thu, 08 Aug 2019 21:25:28 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvpuQ-0005hS-VX
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 21:25:20 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MFb38-1i6JUE4714-00HBDf; Thu, 08 Aug 2019 23:25:05 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Tony Lindgren <tony@atomide.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 03/22] ARM: omap1: move omap15xx local bus handling to usb.c
Date: Thu,  8 Aug 2019 23:22:12 +0200
Message-Id: <20190808212234.2213262-4-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190808212234.2213262-1-arnd@arndb.de>
References: <20190808212234.2213262-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:rmObN8c4em3z6MADtDn1dH5ygzXHXH23QHeCylcVTnOlhY+ZPCt
 9JTDbQhYBjlZCOji0YTVOOiNozPUOmVyu5bSGp5FjvGiqwdn2EjM1DB7Lvl9z8kzYoi0GIi
 sAsiPqAf3BGfCbkvHO6Xq9hcge9WjUUn9Wt6WXok8Z/6R6Ij7XkWeZ7NqDBuuQY0FACvFTq
 mg1JUQO8HGF+l4UgCpwXA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mbk8i9bIm40=:m8WNxBYOf+mHNwotPmsJTT
 bVT0EiIA51AJzcxHr109cLxi1Hz3cezAl8cww4l+fLfdIxu0AJbeUwvkcsyMSRLV+7u0DxlT0
 WIM+cSIqflSXl2MdNK5ga13JeFyevwSJdBTJhZzgtRnZoFco5BVGrDZ2+XU/IJcyjP9IG1AW6
 Gq7FRGvHhl5EezehOB1IwI1flNqBP1EJPQpfG0/xt4XhWm/t47YhuqA7Rw+PnPPWvsDHUtBH9
 dW5xi+BdytYUnjMVpM/N5SqgWZH23xzUVLM7OuQwHp2vjgR9yMSSDDqGfHwCs28yUQiSLF2BA
 KXcneZ5opCMNRhjEA+ix48uERHEvH2AZb8OarN6qcej78qRNV5i+U+NoALIRntHrhdA0ShLbR
 CXYJv4g1K+WQlC9YjRgYT7+QlqokNLPoDwsvVEC1d9214PTZ2Bdau5CpdoXL6M4E63mIxC8R0
 yenYakopWppiLWGUqPkx7zUQl/JvEMFYnNZuEMDTG9e+0zkCmVu47yyGJadhMhqSWKUbujafH
 ZrhlTJAfXtkDhNOmE3aa3ZnmPBfrDzp8/5+yVa2ZKR1mbpZ7OC9Gs5ZKSgPwyQ3XLuuV9aW9h
 Yvp6kZKzYG5aXKHwoPyBCwPArFNnSjStculNF2U0V1OSSIgY5ESRZzIcdYVnjSbtXxFF6FY1l
 NQUXU2k7WC1F1Or6Ld7HspeYxGz4i7VUKdyNSbtqKPgE1JwsHijsg2tidql05vVd/mR/kXV2O
 fkdq1gvHPb21UOw6JDQwRGwEp6o2qIckoxnloQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_142519_310780_112B3419 
X-CRM114-Status: GOOD (  20.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The mach/memory.h file only exists to implement a dma offset for "Local
Bus" devices, and that consists of the OHCI USB controller for practical
purposes.

The generic dma-mapping interface has gained this exact feature some
years ago and can do it much more efficiently, so replace the complex
__arch_virt_to_dma/__arch_dma_to_pfn/... logic with a much simpler boot
time initialization.

This should also make any code that performs dma mapping calls at
runtime much more efficient, by eliminating the strcmp() along with
the computation.

Similar, a portion of the ohci-omap driver is just there for configuring
the memory translation, this too can get moved into usb.c

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-omap1/include/mach/memory.h   | 43 -----------
 arch/arm/mach-omap1/include/mach/omap1510.h |  1 -
 arch/arm/mach-omap1/usb.c                   | 79 +++++++++++++++++++++
 drivers/usb/host/ohci-omap.c                | 72 +------------------
 include/linux/platform_data/usb-omap1.h     |  2 +
 5 files changed, 83 insertions(+), 114 deletions(-)

diff --git a/arch/arm/mach-omap1/include/mach/memory.h b/arch/arm/mach-omap1/include/mach/memory.h
index 1142560e0078..ba3a350479c8 100644
--- a/arch/arm/mach-omap1/include/mach/memory.h
+++ b/arch/arm/mach-omap1/include/mach/memory.h
@@ -9,47 +9,4 @@
 /* REVISIT: omap1 legacy drivers still rely on this */
 #include <mach/soc.h>
 
-/*
- * Bus address is physical address, except for OMAP-1510 Local Bus.
- * OMAP-1510 bus address is translated into a Local Bus address if the
- * OMAP bus type is lbus. We do the address translation based on the
- * device overriding the defaults used in the dma-mapping API.
- * Note that the is_lbus_device() test is not very efficient on 1510
- * because of the strncmp().
- */
-#if defined(CONFIG_ARCH_OMAP15XX) && !defined(__ASSEMBLER__)
-
-/*
- * OMAP-1510 Local Bus address offset
- */
-#define OMAP1510_LB_OFFSET	UL(0x30000000)
-
-#define virt_to_lbus(x)		((x) - PAGE_OFFSET + OMAP1510_LB_OFFSET)
-#define lbus_to_virt(x)		((x) - OMAP1510_LB_OFFSET + PAGE_OFFSET)
-#define is_lbus_device(dev)	(cpu_is_omap15xx() && dev && (strncmp(dev_name(dev), "ohci", 4) == 0))
-
-#define __arch_pfn_to_dma(dev, pfn)	\
-	({ dma_addr_t __dma = __pfn_to_phys(pfn); \
-	   if (is_lbus_device(dev)) \
-		__dma = __dma - PHYS_OFFSET + OMAP1510_LB_OFFSET; \
-	   __dma; })
-
-#define __arch_dma_to_pfn(dev, addr)	\
-	({ dma_addr_t __dma = addr;				\
-	   if (is_lbus_device(dev))				\
-		__dma += PHYS_OFFSET - OMAP1510_LB_OFFSET;	\
-	   __phys_to_pfn(__dma);				\
-	})
-
-#define __arch_dma_to_virt(dev, addr)	({ (void *) (is_lbus_device(dev) ? \
-						lbus_to_virt(addr) : \
-						__phys_to_virt(addr)); })
-
-#define __arch_virt_to_dma(dev, addr)	({ unsigned long __addr = (unsigned long)(addr); \
-					   (dma_addr_t) (is_lbus_device(dev) ? \
-						virt_to_lbus(__addr) : \
-						__virt_to_phys(__addr)); })
-
-#endif	/* CONFIG_ARCH_OMAP15XX */
-
 #endif
diff --git a/arch/arm/mach-omap1/include/mach/omap1510.h b/arch/arm/mach-omap1/include/mach/omap1510.h
index 3d235244bf5c..7af9c0c7c5ab 100644
--- a/arch/arm/mach-omap1/include/mach/omap1510.h
+++ b/arch/arm/mach-omap1/include/mach/omap1510.h
@@ -159,4 +159,3 @@
 #define OMAP1510_INT_FPGA23		(OMAP_FPGA_IRQ_BASE + 23)
 
 #endif /*  __ASM_ARCH_OMAP15XX_H */
-
diff --git a/arch/arm/mach-omap1/usb.c b/arch/arm/mach-omap1/usb.c
index d8e9bbda8f7b..740c876ae46b 100644
--- a/arch/arm/mach-omap1/usb.c
+++ b/arch/arm/mach-omap1/usb.c
@@ -10,6 +10,7 @@
 #include <linux/init.h>
 #include <linux/platform_device.h>
 #include <linux/io.h>
+#include <linux/delay.h>
 
 #include <asm/irq.h>
 
@@ -127,6 +128,7 @@ omap_otg_init(struct omap_usb_config *config)
 
 		syscon &= ~HST_IDLE_EN;
 		ohci_device->dev.platform_data = config;
+
 		status = platform_device_register(ohci_device);
 		if (status)
 			pr_debug("can't register OHCI device, %d\n", status);
@@ -533,6 +535,80 @@ static u32 __init omap1_usb2_init(unsigned nwires, unsigned alt_pingroup)
 }
 
 #ifdef	CONFIG_ARCH_OMAP15XX
+/* OMAP-1510 OHCI has its own MMU for DMA */
+#define OMAP1510_LB_MEMSIZE	32	/* Should be same as SDRAM size */
+#define OMAP1510_LB_CLOCK_DIV	0xfffec10c
+#define OMAP1510_LB_MMU_CTL	0xfffec208
+#define OMAP1510_LB_MMU_LCK	0xfffec224
+#define OMAP1510_LB_MMU_LD_TLB	0xfffec228
+#define OMAP1510_LB_MMU_CAM_H	0xfffec22c
+#define OMAP1510_LB_MMU_CAM_L	0xfffec230
+#define OMAP1510_LB_MMU_RAM_H	0xfffec234
+#define OMAP1510_LB_MMU_RAM_L	0xfffec238
+
+/*
+ * Bus address is physical address, except for OMAP-1510 Local Bus.
+ * OMAP-1510 bus address is translated into a Local Bus address if the
+ * OMAP bus type is lbus.
+ */
+#define OMAP1510_LB_OFFSET	   UL(0x30000000)
+#define OMAP1510_LB_DMA_PFN_OFFSET ((OMAP1510_LB_OFFSET - PAGE_OFFSET) >> PAGE_SHIFT)
+
+/*
+ * OMAP-1510 specific Local Bus clock on/off
+ */
+static int omap_1510_local_bus_power(int on)
+{
+	if (on) {
+		omap_writel((1 << 1) | (1 << 0), OMAP1510_LB_MMU_CTL);
+		udelay(200);
+	} else {
+		omap_writel(0, OMAP1510_LB_MMU_CTL);
+	}
+
+	return 0;
+}
+
+/*
+ * OMAP-1510 specific Local Bus initialization
+ * NOTE: This assumes 32MB memory size in OMAP1510LB_MEMSIZE.
+ *       See also arch/mach-omap/memory.h for __virt_to_dma() and
+ *       __dma_to_virt() which need to match with the physical
+ *       Local Bus address below.
+ */
+static int omap_1510_local_bus_init(void)
+{
+	unsigned int tlb;
+	unsigned long lbaddr, physaddr;
+
+	omap_writel((omap_readl(OMAP1510_LB_CLOCK_DIV) & 0xfffffff8) | 0x4,
+	       OMAP1510_LB_CLOCK_DIV);
+
+	/* Configure the Local Bus MMU table */
+	for (tlb = 0; tlb < OMAP1510_LB_MEMSIZE; tlb++) {
+		lbaddr = tlb * 0x00100000 + OMAP1510_LB_OFFSET;
+		physaddr = tlb * 0x00100000 + PHYS_OFFSET;
+		omap_writel((lbaddr & 0x0fffffff) >> 22, OMAP1510_LB_MMU_CAM_H);
+		omap_writel(((lbaddr & 0x003ffc00) >> 6) | 0xc,
+		       OMAP1510_LB_MMU_CAM_L);
+		omap_writel(physaddr >> 16, OMAP1510_LB_MMU_RAM_H);
+		omap_writel((physaddr & 0x0000fc00) | 0x300, OMAP1510_LB_MMU_RAM_L);
+		omap_writel(tlb << 4, OMAP1510_LB_MMU_LCK);
+		omap_writel(0x1, OMAP1510_LB_MMU_LD_TLB);
+	}
+
+	/* Enable the walking table */
+	omap_writel(omap_readl(OMAP1510_LB_MMU_CTL) | (1 << 3), OMAP1510_LB_MMU_CTL);
+	udelay(200);
+
+	return 0;
+}
+
+static void omap_1510_local_bus_reset(void)
+{
+	omap_1510_local_bus_power(1);
+	omap_1510_local_bus_init();
+}
 
 /* ULPD_DPLL_CTRL */
 #define DPLL_IOB		(1 << 13)
@@ -601,11 +677,14 @@ static void __init omap_1510_usb_init(struct omap_usb_config *config)
 		int status;
 
 		ohci_device.dev.platform_data = config;
+		ohci_device.dev.dma_pfn_offset = OMAP1510_LB_DMA_PFN_OFFSET;
 		status = platform_device_register(&ohci_device);
 		if (status)
 			pr_debug("can't register OHCI device, %d\n", status);
 		/* hcd explicitly gates 48MHz */
 	}
+
+	config->lb_reset = omap_1510_local_bus_reset;
 #endif
 }
 
diff --git a/drivers/usb/host/ohci-omap.c b/drivers/usb/host/ohci-omap.c
index d8d35d456456..f7efe65f01c5 100644
--- a/drivers/usb/host/ohci-omap.c
+++ b/drivers/usb/host/ohci-omap.c
@@ -40,17 +40,6 @@
 #include <mach/usb.h>
 
 
-/* OMAP-1510 OHCI has its own MMU for DMA */
-#define OMAP1510_LB_MEMSIZE	32	/* Should be same as SDRAM size */
-#define OMAP1510_LB_CLOCK_DIV	0xfffec10c
-#define OMAP1510_LB_MMU_CTL	0xfffec208
-#define OMAP1510_LB_MMU_LCK	0xfffec224
-#define OMAP1510_LB_MMU_LD_TLB	0xfffec228
-#define OMAP1510_LB_MMU_CAM_H	0xfffec22c
-#define OMAP1510_LB_MMU_CAM_L	0xfffec230
-#define OMAP1510_LB_MMU_RAM_H	0xfffec234
-#define OMAP1510_LB_MMU_RAM_L	0xfffec238
-
 #define DRIVER_DESC "OHCI OMAP driver"
 
 #ifdef CONFIG_TPS65010
@@ -113,61 +102,6 @@ static int omap_ohci_transceiver_power(int on)
 	return 0;
 }
 
-#ifdef CONFIG_ARCH_OMAP15XX
-/*
- * OMAP-1510 specific Local Bus clock on/off
- */
-static int omap_1510_local_bus_power(int on)
-{
-	if (on) {
-		omap_writel((1 << 1) | (1 << 0), OMAP1510_LB_MMU_CTL);
-		udelay(200);
-	} else {
-		omap_writel(0, OMAP1510_LB_MMU_CTL);
-	}
-
-	return 0;
-}
-
-/*
- * OMAP-1510 specific Local Bus initialization
- * NOTE: This assumes 32MB memory size in OMAP1510LB_MEMSIZE.
- *       See also arch/mach-omap/memory.h for __virt_to_dma() and
- *       __dma_to_virt() which need to match with the physical
- *       Local Bus address below.
- */
-static int omap_1510_local_bus_init(void)
-{
-	unsigned int tlb;
-	unsigned long lbaddr, physaddr;
-
-	omap_writel((omap_readl(OMAP1510_LB_CLOCK_DIV) & 0xfffffff8) | 0x4,
-	       OMAP1510_LB_CLOCK_DIV);
-
-	/* Configure the Local Bus MMU table */
-	for (tlb = 0; tlb < OMAP1510_LB_MEMSIZE; tlb++) {
-		lbaddr = tlb * 0x00100000 + OMAP1510_LB_OFFSET;
-		physaddr = tlb * 0x00100000 + PHYS_OFFSET;
-		omap_writel((lbaddr & 0x0fffffff) >> 22, OMAP1510_LB_MMU_CAM_H);
-		omap_writel(((lbaddr & 0x003ffc00) >> 6) | 0xc,
-		       OMAP1510_LB_MMU_CAM_L);
-		omap_writel(physaddr >> 16, OMAP1510_LB_MMU_RAM_H);
-		omap_writel((physaddr & 0x0000fc00) | 0x300, OMAP1510_LB_MMU_RAM_L);
-		omap_writel(tlb << 4, OMAP1510_LB_MMU_LCK);
-		omap_writel(0x1, OMAP1510_LB_MMU_LD_TLB);
-	}
-
-	/* Enable the walking table */
-	omap_writel(omap_readl(OMAP1510_LB_MMU_CTL) | (1 << 3), OMAP1510_LB_MMU_CTL);
-	udelay(200);
-
-	return 0;
-}
-#else
-#define omap_1510_local_bus_power(x)	{}
-#define omap_1510_local_bus_init()	{}
-#endif
-
 #ifdef	CONFIG_USB_OTG
 
 static void start_hnp(struct ohci_hcd *ohci)
@@ -237,10 +171,8 @@ static int ohci_omap_reset(struct usb_hcd *hcd)
 
 	omap_ohci_clock_power(1);
 
-	if (cpu_is_omap15xx()) {
-		omap_1510_local_bus_power(1);
-		omap_1510_local_bus_init();
-	}
+	if (config->lb_reset)
+		config->lb_reset();
 
 	ret = ohci_setup(hcd);
 	if (ret < 0)
diff --git a/include/linux/platform_data/usb-omap1.h b/include/linux/platform_data/usb-omap1.h
index 43b5ce139c37..878e572a78bf 100644
--- a/include/linux/platform_data/usb-omap1.h
+++ b/include/linux/platform_data/usb-omap1.h
@@ -48,6 +48,8 @@ struct omap_usb_config {
 	u32 (*usb2_init)(unsigned nwires, unsigned alt_pingroup);
 
 	int (*ocpi_enable)(void);
+
+	void (*lb_reset)(void);
 };
 
 #endif /* __LINUX_USB_OMAP1_H */
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
