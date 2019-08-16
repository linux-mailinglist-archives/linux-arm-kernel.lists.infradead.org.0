Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3273B8FB13
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 08:31:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RA4jF+EuvmigRQINAvsBVjl3W2AemWFlwP22OtPoQwA=; b=Bdb40iMjfy7nE9
	uoL1bBPJeRwAVybfH6N1eveMy3/qpdbGpz+cf0uabdVW8jymEJUNKX7aXWJcn5T/wlE1yw1z58Pwf
	Ew+C0L0pMlSBsjKaUxeyilEVJTD6coAcTCnPu9ciq1/x/+gBgV1GeKPXZFmcjPp/HiQrh7SdYGlTc
	2H+Cck1ghkg1CmXoUl6c8mcOlTX3chy5/426KLcZPeZaF+C3RkEdIE4mOL0Ef3e0ZTpCWEgVr0Nxv
	R+EPti3QVNuA+JmCEyZqZRcv2OJJ3KODiEgiBLKrznsbNaNTMVLFdm3dO5lmm/EQVvFtTxKpCqJqy
	NSdNHC6zUqHAd/q0LLxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyVlN-0000DR-Nz; Fri, 16 Aug 2019 06:31:01 +0000
Received: from [2001:4bb8:18c:28b5:44f9:d544:957f:32cb] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hyVje-0006HF-1S; Fri, 16 Aug 2019 06:29:14 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: [PATCH 6/6] driver core: initialize a default DMA mask for platform
 device
Date: Fri, 16 Aug 2019 08:24:35 +0200
Message-Id: <20190816062435.881-7-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190816062435.881-1-hch@lst.de>
References: <20190816062435.881-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: linux-arch@vger.kernel.org, Gavin Li <git@thegavinli.com>,
 linuxppc-dev@lists.ozlabs.org, Mathias Nyman <mathias.nyman@intel.com>,
 Geoff Levand <geoff@infradead.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-usb@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 Alan Stern <stern@rowland.harvard.edu>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Minas Harutyunyan <hminas@synopsys.com>, Shawn Guo <shawnguo@kernel.org>,
 Bin Liu <b-liu@ti.com>, linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We still treat devices without a DMA mask as defaulting to 32-bits for
both mask, but a few releases ago we've started warning about such
cases, as they require special cases to work around this sloppyness.
Add a dma_mask field to struct platform_device so that we can initialize
the dma_mask pointer in struct device and initialize both masks to
32-bits by default, replacing similar functionality in m68k and
powerpc.  The arch_setup_pdev_archdata hooks is now unused and removed.

Note that the code looks a little odd with the various conditionals
because we have to support platform_device structures that are
statically allocated.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/m68k/kernel/dma.c               |  9 -------
 arch/powerpc/kernel/setup-common.c   |  6 -----
 arch/sh/boards/mach-ap325rxa/setup.c |  1 -
 arch/sh/boards/mach-ecovec24/setup.c |  2 --
 arch/sh/boards/mach-kfr2r09/setup.c  |  1 -
 arch/sh/boards/mach-migor/setup.c    |  1 -
 arch/sh/boards/mach-se/7724/setup.c  |  2 --
 drivers/base/platform.c              | 37 ++++++++++++----------------
 include/linux/platform_device.h      |  2 +-
 9 files changed, 17 insertions(+), 44 deletions(-)

diff --git a/arch/m68k/kernel/dma.c b/arch/m68k/kernel/dma.c
index 30cd59caf037..447849d1d645 100644
--- a/arch/m68k/kernel/dma.c
+++ b/arch/m68k/kernel/dma.c
@@ -79,12 +79,3 @@ void arch_sync_dma_for_device(struct device *dev, phys_addr_t handle,
 		break;
 	}
 }
-
-void arch_setup_pdev_archdata(struct platform_device *pdev)
-{
-	if (pdev->dev.coherent_dma_mask == DMA_MASK_NONE &&
-	    pdev->dev.dma_mask == NULL) {
-		pdev->dev.coherent_dma_mask = DMA_BIT_MASK(32);
-		pdev->dev.dma_mask = &pdev->dev.coherent_dma_mask;
-	}
-}
diff --git a/arch/powerpc/kernel/setup-common.c b/arch/powerpc/kernel/setup-common.c
index 1f8db666468d..5e6543aba1b3 100644
--- a/arch/powerpc/kernel/setup-common.c
+++ b/arch/powerpc/kernel/setup-common.c
@@ -778,12 +778,6 @@ void ppc_printk_progress(char *s, unsigned short hex)
 	pr_info("%s\n", s);
 }
 
-void arch_setup_pdev_archdata(struct platform_device *pdev)
-{
-	pdev->archdata.dma_mask = DMA_BIT_MASK(32);
-	pdev->dev.dma_mask = &pdev->archdata.dma_mask;
-}
-
 static __init void print_system_info(void)
 {
 	pr_info("-----------------------------------------------------\n");
diff --git a/arch/sh/boards/mach-ap325rxa/setup.c b/arch/sh/boards/mach-ap325rxa/setup.c
index 8301a4378f50..665cad452798 100644
--- a/arch/sh/boards/mach-ap325rxa/setup.c
+++ b/arch/sh/boards/mach-ap325rxa/setup.c
@@ -527,7 +527,6 @@ static int __init ap325rxa_devices_setup(void)
 
 	/* Initialize CEU platform device separately to map memory first */
 	device_initialize(&ap325rxa_ceu_device.dev);
-	arch_setup_pdev_archdata(&ap325rxa_ceu_device);
 	dma_declare_coherent_memory(&ap325rxa_ceu_device.dev,
 			ceu_dma_membase, ceu_dma_membase,
 			ceu_dma_membase + CEU_BUFFER_MEMORY_SIZE - 1);
diff --git a/arch/sh/boards/mach-ecovec24/setup.c b/arch/sh/boards/mach-ecovec24/setup.c
index f402aa741bf3..acaa97459531 100644
--- a/arch/sh/boards/mach-ecovec24/setup.c
+++ b/arch/sh/boards/mach-ecovec24/setup.c
@@ -1440,7 +1440,6 @@ static int __init arch_setup(void)
 
 	/* Initialize CEU platform devices separately to map memory first */
 	device_initialize(&ecovec_ceu_devices[0]->dev);
-	arch_setup_pdev_archdata(ecovec_ceu_devices[0]);
 	dma_declare_coherent_memory(&ecovec_ceu_devices[0]->dev,
 				    ceu0_dma_membase, ceu0_dma_membase,
 				    ceu0_dma_membase +
@@ -1448,7 +1447,6 @@ static int __init arch_setup(void)
 	platform_device_add(ecovec_ceu_devices[0]);
 
 	device_initialize(&ecovec_ceu_devices[1]->dev);
-	arch_setup_pdev_archdata(ecovec_ceu_devices[1]);
 	dma_declare_coherent_memory(&ecovec_ceu_devices[1]->dev,
 				    ceu1_dma_membase, ceu1_dma_membase,
 				    ceu1_dma_membase +
diff --git a/arch/sh/boards/mach-kfr2r09/setup.c b/arch/sh/boards/mach-kfr2r09/setup.c
index 1cf9a47ac90e..96538ba3aa32 100644
--- a/arch/sh/boards/mach-kfr2r09/setup.c
+++ b/arch/sh/boards/mach-kfr2r09/setup.c
@@ -601,7 +601,6 @@ static int __init kfr2r09_devices_setup(void)
 
 	/* Initialize CEU platform device separately to map memory first */
 	device_initialize(&kfr2r09_ceu_device.dev);
-	arch_setup_pdev_archdata(&kfr2r09_ceu_device);
 	dma_declare_coherent_memory(&kfr2r09_ceu_device.dev,
 			ceu_dma_membase, ceu_dma_membase,
 			ceu_dma_membase + CEU_BUFFER_MEMORY_SIZE - 1);
diff --git a/arch/sh/boards/mach-migor/setup.c b/arch/sh/boards/mach-migor/setup.c
index 90702740f207..9ed369dad62d 100644
--- a/arch/sh/boards/mach-migor/setup.c
+++ b/arch/sh/boards/mach-migor/setup.c
@@ -602,7 +602,6 @@ static int __init migor_devices_setup(void)
 
 	/* Initialize CEU platform device separately to map memory first */
 	device_initialize(&migor_ceu_device.dev);
-	arch_setup_pdev_archdata(&migor_ceu_device);
 	dma_declare_coherent_memory(&migor_ceu_device.dev,
 			ceu_dma_membase, ceu_dma_membase,
 			ceu_dma_membase + CEU_BUFFER_MEMORY_SIZE - 1);
diff --git a/arch/sh/boards/mach-se/7724/setup.c b/arch/sh/boards/mach-se/7724/setup.c
index 3674064816c7..32f5dd944889 100644
--- a/arch/sh/boards/mach-se/7724/setup.c
+++ b/arch/sh/boards/mach-se/7724/setup.c
@@ -937,7 +937,6 @@ static int __init devices_setup(void)
 
 	/* Initialize CEU platform devices separately to map memory first */
 	device_initialize(&ms7724se_ceu_devices[0]->dev);
-	arch_setup_pdev_archdata(ms7724se_ceu_devices[0]);
 	dma_declare_coherent_memory(&ms7724se_ceu_devices[0]->dev,
 				    ceu0_dma_membase, ceu0_dma_membase,
 				    ceu0_dma_membase +
@@ -945,7 +944,6 @@ static int __init devices_setup(void)
 	platform_device_add(ms7724se_ceu_devices[0]);
 
 	device_initialize(&ms7724se_ceu_devices[1]->dev);
-	arch_setup_pdev_archdata(ms7724se_ceu_devices[1]);
 	dma_declare_coherent_memory(&ms7724se_ceu_devices[1]->dev,
 				    ceu1_dma_membase, ceu1_dma_membase,
 				    ceu1_dma_membase +
diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index ec974ba9c0c4..600913aea73b 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -39,25 +39,6 @@ struct device platform_bus = {
 };
 EXPORT_SYMBOL_GPL(platform_bus);
 
-/**
- * arch_setup_pdev_archdata - Allow manipulation of archdata before its used
- * @pdev: platform device
- *
- * This is called before platform_device_add() such that any pdev_archdata may
- * be setup before the platform_notifier is called.  So if a user needs to
- * manipulate any relevant information in the pdev_archdata they can do:
- *
- *	platform_device_alloc()
- *	... manipulate ...
- *	platform_device_add()
- *
- * And if they don't care they can just call platform_device_register() and
- * everything will just work out.
- */
-void __weak arch_setup_pdev_archdata(struct platform_device *pdev)
-{
-}
-
 /**
  * platform_get_resource - get a resource for a device
  * @dev: platform device
@@ -264,6 +245,20 @@ struct platform_object {
 	char name[];
 };
 
+/*
+ * Set up default DMA mask for platform devices if the they weren't
+ * previously set by the architecture / DT.
+ */
+static void setup_pdev_dma_masks(struct platform_device *pdev)
+{
+	if (!pdev->dev.coherent_dma_mask)
+		pdev->dev.coherent_dma_mask = DMA_BIT_MASK(32);
+	if (!pdev->dma_mask)
+		pdev->dma_mask = DMA_BIT_MASK(32);
+	if (!pdev->dev.dma_mask)
+		pdev->dev.dma_mask = &pdev->dma_mask;
+};
+
 /**
  * platform_device_put - destroy a platform device
  * @pdev: platform device to free
@@ -310,7 +305,7 @@ struct platform_device *platform_device_alloc(const char *name, int id)
 		pa->pdev.id = id;
 		device_initialize(&pa->pdev.dev);
 		pa->pdev.dev.release = platform_device_release;
-		arch_setup_pdev_archdata(&pa->pdev);
+		setup_pdev_dma_masks(&pa->pdev);
 	}
 
 	return pa ? &pa->pdev : NULL;
@@ -512,7 +507,7 @@ EXPORT_SYMBOL_GPL(platform_device_del);
 int platform_device_register(struct platform_device *pdev)
 {
 	device_initialize(&pdev->dev);
-	arch_setup_pdev_archdata(pdev);
+	setup_pdev_dma_masks(pdev);
 	return platform_device_add(pdev);
 }
 EXPORT_SYMBOL_GPL(platform_device_register);
diff --git a/include/linux/platform_device.h b/include/linux/platform_device.h
index 9bc36b589827..34a3d8ed8ba7 100644
--- a/include/linux/platform_device.h
+++ b/include/linux/platform_device.h
@@ -24,6 +24,7 @@ struct platform_device {
 	int		id;
 	bool		id_auto;
 	struct device	dev;
+	u64		dma_mask;
 	u32		num_resources;
 	struct resource	*resource;
 
@@ -48,7 +49,6 @@ extern void platform_device_unregister(struct platform_device *);
 extern struct bus_type platform_bus_type;
 extern struct device platform_bus;
 
-extern void arch_setup_pdev_archdata(struct platform_device *);
 extern struct resource *platform_get_resource(struct platform_device *,
 					      unsigned int, unsigned int);
 extern void __iomem *
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
