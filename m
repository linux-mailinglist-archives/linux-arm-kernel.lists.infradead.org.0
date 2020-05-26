Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8791A20FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 14:01:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aAHxzUD/Qr3JgmTjZ/9A2wHRChPiuoOqhfzhFNNCzQ0=; b=iYy2BRdsOkFewS
	I/s4+RYl/PyUgKm2iR+1Evu3ZXNVQY/g8kd3JNLGyaDvP7TPQBJ2D1m8MvcTY23KQj4Bh320Ar5HG
	eowbewq6TKQNRNNcdaIeXyyaIfYkvgjWnghFQna3oAz1Q3KbpdbGT8PN5MoEMRHtIs0zfsOVSpalA
	x7lRv1mPSbBxO9eE8Q9kPeZ3kXSlCg4Foywbm3s8OiG8cT1su0g/I0ipGyKJIDtzXz/R/MxwaMci2
	vpkAe2QU1iEmaiI3qMiBN+1pclzcIweCjGMT9p+S4OX3MJedBi748K6JPA4i2ZAvk6/fYaSWujH5u
	/Iw5PnEkf0F9TFhfqESg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9OZ-00064s-Ab; Wed, 08 Apr 2020 12:01:27 +0000
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9Mv-0001oV-9e; Wed, 08 Apr 2020 11:59:45 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 x86@kernel.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Laura Abbott <labbott@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Minchan Kim <minchan@kernel.org>, Nitin Gupta <ngupta@vflare.org>
Subject: [PATCH 05/28] powerpc: add an ioremap_phb helper
Date: Wed,  8 Apr 2020 13:59:03 +0200
Message-Id: <20200408115926.1467567-6-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408115926.1467567-1-hch@lst.de>
References: <20200408115926.1467567-1-hch@lst.de>
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, linux-arch@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-s390@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, bpf@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Factor code shared between pci_64 and electra_cf into a ioremap_pbh
helper that follows the normal ioremap semantics, and returns a
useful __iomem pointer.  Note that it opencodes __ioremap_at as
we know from the callers the slab is available.  Switch pci_64
to also store the result as __iomem pointer, and unmap the result
using iounmap instead of force casting and using vmalloc APIs.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/powerpc/include/asm/io.h         |  2 +
 arch/powerpc/include/asm/pci-bridge.h |  2 +-
 arch/powerpc/kernel/pci_64.c          | 53 ++++++++++++++++++---------
 drivers/pcmcia/electra_cf.c           | 45 ++++++++---------------
 4 files changed, 54 insertions(+), 48 deletions(-)

diff --git a/arch/powerpc/include/asm/io.h b/arch/powerpc/include/asm/io.h
index 635969b5b58e..71f1c5d69839 100644
--- a/arch/powerpc/include/asm/io.h
+++ b/arch/powerpc/include/asm/io.h
@@ -719,6 +719,8 @@ void __iomem *ioremap_coherent(phys_addr_t address, unsigned long size);
 
 extern void iounmap(volatile void __iomem *addr);
 
+void __iomem *ioremap_pbh(phys_addr_t paddr, unsigned long size);
+
 int early_ioremap_range(unsigned long ea, phys_addr_t pa,
 			unsigned long size, pgprot_t prot);
 void __iomem *do_ioremap(phys_addr_t pa, phys_addr_t offset, unsigned long size,
diff --git a/arch/powerpc/include/asm/pci-bridge.h b/arch/powerpc/include/asm/pci-bridge.h
index 69f4cb3b7c56..b92e81b256e5 100644
--- a/arch/powerpc/include/asm/pci-bridge.h
+++ b/arch/powerpc/include/asm/pci-bridge.h
@@ -66,7 +66,7 @@ struct pci_controller {
 
 	void __iomem *io_base_virt;
 #ifdef CONFIG_PPC64
-	void *io_base_alloc;
+	void __iomem *io_base_alloc;
 #endif
 	resource_size_t io_base_phys;
 	resource_size_t pci_io_size;
diff --git a/arch/powerpc/kernel/pci_64.c b/arch/powerpc/kernel/pci_64.c
index f83d1f69b1dd..8e86bd9c1eca 100644
--- a/arch/powerpc/kernel/pci_64.c
+++ b/arch/powerpc/kernel/pci_64.c
@@ -109,23 +109,46 @@ int pcibios_unmap_io_space(struct pci_bus *bus)
 	/* Get the host bridge */
 	hose = pci_bus_to_host(bus);
 
-	/* Check if we have IOs allocated */
-	if (hose->io_base_alloc == NULL)
-		return 0;
-
 	pr_debug("IO unmapping for PHB %pOF\n", hose->dn);
 	pr_debug("  alloc=0x%p\n", hose->io_base_alloc);
 
-	/* This is a PHB, we fully unmap the IO area */
-	vunmap(hose->io_base_alloc);
-
+	iounmap(hose->io_base_alloc);
 	return 0;
 }
 EXPORT_SYMBOL_GPL(pcibios_unmap_io_space);
 
-static int pcibios_map_phb_io_space(struct pci_controller *hose)
+void __iomem *ioremap_pbh(phys_addr_t paddr, unsigned long size)
 {
 	struct vm_struct *area;
+	unsigned long addr;
+
+	WARN_ON_ONCE(paddr & ~PAGE_MASK);
+	WARN_ON_ONCE(size & ~PAGE_MASK);
+
+	/*
+	 * Let's allocate some IO space for that guy. We don't pass VM_IOREMAP
+	 * because we don't care about alignment tricks that the core does in
+	 * that case.  Maybe we should due to stupid card with incomplete
+	 * address decoding but I'd rather not deal with those outside of the
+	 * reserved 64K legacy region.
+	 */
+	area = __get_vm_area(size, 0, PHB_IO_BASE, PHB_IO_END);
+	if (!area)
+		return NULL;
+
+	addr = (unsigned long)area->addr;
+	if (ioremap_page_range(addr, addr + size, paddr,
+			pgprot_noncached(PAGE_KERNEL))) {
+		unmap_kernel_range(addr, size);
+		return NULL;
+	}
+
+	return (void __iomem *)addr;
+}
+EXPORT_SYMBOL_GPL(ioremap_pbh);
+
+static int pcibios_map_phb_io_space(struct pci_controller *hose)
+{
 	unsigned long phys_page;
 	unsigned long size_page;
 	unsigned long io_virt_offset;
@@ -146,12 +169,11 @@ static int pcibios_map_phb_io_space(struct pci_controller *hose)
 	 * with incomplete address decoding but I'd rather not deal with
 	 * those outside of the reserved 64K legacy region.
 	 */
-	area = __get_vm_area(size_page, 0, PHB_IO_BASE, PHB_IO_END);
-	if (area == NULL)
+	hose->io_base_alloc = ioremap_pbh(phys_page, size_page);
+	if (!hose->io_base_alloc)
 		return -ENOMEM;
-	hose->io_base_alloc = area->addr;
-	hose->io_base_virt = (void __iomem *)(area->addr +
-					      hose->io_base_phys - phys_page);
+	hose->io_base_virt = hose->io_base_alloc +
+				hose->io_base_phys - phys_page;
 
 	pr_debug("IO mapping for PHB %pOF\n", hose->dn);
 	pr_debug("  phys=0x%016llx, virt=0x%p (alloc=0x%p)\n",
@@ -159,11 +181,6 @@ static int pcibios_map_phb_io_space(struct pci_controller *hose)
 	pr_debug("  size=0x%016llx (alloc=0x%016lx)\n",
 		 hose->pci_io_size, size_page);
 
-	/* Establish the mapping */
-	if (__ioremap_at(phys_page, area->addr, size_page,
-			 pgprot_noncached(PAGE_KERNEL)) == NULL)
-		return -ENOMEM;
-
 	/* Fixup hose IO resource */
 	io_virt_offset = pcibios_io_space_offset(hose);
 	hose->io_resource.start += io_virt_offset;
diff --git a/drivers/pcmcia/electra_cf.c b/drivers/pcmcia/electra_cf.c
index f2741c04289d..77b229f8d218 100644
--- a/drivers/pcmcia/electra_cf.c
+++ b/drivers/pcmcia/electra_cf.c
@@ -178,10 +178,9 @@ static int electra_cf_probe(struct platform_device *ofdev)
 	struct device_node *np = ofdev->dev.of_node;
 	struct electra_cf_socket   *cf;
 	struct resource mem, io;
-	int status;
+	int status = -ENOMEM;
 	const unsigned int *prop;
 	int err;
-	struct vm_struct *area;
 
 	err = of_address_to_resource(np, 0, &mem);
 	if (err)
@@ -202,30 +201,19 @@ static int electra_cf_probe(struct platform_device *ofdev)
 	cf->mem_phys = mem.start;
 	cf->mem_size = PAGE_ALIGN(resource_size(&mem));
 	cf->mem_base = ioremap(cf->mem_phys, cf->mem_size);
+	if (!cf->mem_base)
+		goto out_free_cf;
 	cf->io_size = PAGE_ALIGN(resource_size(&io));
-
-	area = __get_vm_area(cf->io_size, 0, PHB_IO_BASE, PHB_IO_END);
-	if (area == NULL) {
-		status = -ENOMEM;
-		goto fail1;
-	}
-
-	cf->io_virt = (void __iomem *)(area->addr);
+	cf->io_virt = ioremap_pbh(io.start, cf->io_size);
+	if (!cf->io_virt)
+		goto out_unmap_mem;
 
 	cf->gpio_base = ioremap(0xfc103000, 0x1000);
+	if (!cf->gpio_base)
+		goto out_unmap_virt;
 	dev_set_drvdata(device, cf);
 
-	if (!cf->mem_base || !cf->io_virt || !cf->gpio_base ||
-	    (__ioremap_at(io.start, cf->io_virt, cf->io_size,
-			  pgprot_noncached(PAGE_KERNEL)) == NULL)) {
-		dev_err(device, "can't ioremap ranges\n");
-		status = -ENOMEM;
-		goto fail1;
-	}
-
-
 	cf->io_base = (unsigned long)cf->io_virt - VMALLOC_END;
-
 	cf->iomem.start = (unsigned long)cf->mem_base;
 	cf->iomem.end = (unsigned long)cf->mem_base + (mem.end - mem.start);
 	cf->iomem.flags = IORESOURCE_MEM;
@@ -305,14 +293,13 @@ static int electra_cf_probe(struct platform_device *ofdev)
 	if (cf->irq)
 		free_irq(cf->irq, cf);
 
-	if (cf->io_virt)
-		__iounmap_at(cf->io_virt, cf->io_size);
-	if (cf->mem_base)
-		iounmap(cf->mem_base);
-	if (cf->gpio_base)
-		iounmap(cf->gpio_base);
-	if (area)
-		device_init_wakeup(&ofdev->dev, 0);
+	iounmap(cf->gpio_base);
+out_unmap_virt:
+	device_init_wakeup(&ofdev->dev, 0);
+	iounmap(cf->io_virt);
+out_unmap_mem:
+	iounmap(cf->mem_base);
+out_free_cf:
 	kfree(cf);
 	return status;
 
@@ -330,7 +317,7 @@ static int electra_cf_remove(struct platform_device *ofdev)
 	free_irq(cf->irq, cf);
 	del_timer_sync(&cf->timer);
 
-	__iounmap_at(cf->io_virt, cf->io_size);
+	iounmap(cf->io_virt);
 	iounmap(cf->mem_base);
 	iounmap(cf->gpio_base);
 	release_mem_region(cf->mem_phys, cf->mem_size);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
