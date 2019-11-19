Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE4C1029AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 17:47:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FoApsnEdzC9dRT4We24RLQGt3LCMnFTangK5O5iKt6E=; b=CeKgtUNHHD4gHjz5UqfyD+38o
	pRmpoa6+PDxK5ZW4S861r/Znu2GL+UWWhpgD23dEftuVPcrO75IkT82sDxf3csjyeNXeC4oCw7UHM
	PHIpdrRYg7OcvkWXGlG8W/qrXnItfWJQZkmGE1d7hDn1S4vaGw4nepNT/k0aA/mKN7d9NIzyjZXXA
	CAdEz0LAILnlX5tgPIPshNIcP7uMQNn3/wA/wamaULlfRRkN86tPLo1JcrCBmsksIYvX2vdMuIlsZ
	k3bF2EUT8py/mnfw5fGTBg/Rr1vf6cnwDVF5Wr43nxIQA1wxUPSQU6ggpwF3CAW1ZDavftCHghFn1
	cBHM3IK2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX6ek-0005zn-6Y; Tue, 19 Nov 2019 16:47:10 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX6eZ-0005yz-J9
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 16:47:01 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0469068BFE; Tue, 19 Nov 2019 17:46:53 +0100 (CET)
Date: Tue, 19 Nov 2019 17:46:52 +0100
From: Christoph Hellwig <hch@lst.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH 1/3] dma-direct: unify the dma_capable definitions
Message-ID: <20191119164652.GA18983@lst.de>
References: <20191113073539.9660-1-hch@lst.de>
 <CGME20191113073648epcas3p214f97ad5937559bebbc937e507fa54d9@epcas3p2.samsung.com>
 <20191113073539.9660-2-hch@lst.de>
 <1c227c91-512c-e871-0e03-a27b2c0435d7@samsung.com>
 <CAJKOXPdM1+x_4PQ1AfoPY6GuV0e9bk3hv_1EfEdHcLjMwwYxgw@mail.gmail.com>
 <a3e2d65b-7270-9555-a251-d7ed0c4fb85c@samsung.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="YiEDa0DAkWCtVeE4"
Content-Disposition: inline
In-Reply-To: <a3e2d65b-7270-9555-a251-d7ed0c4fb85c@samsung.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_084659_930461_8B2ABA56 
X-CRM114-Status: GOOD (  23.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Vinod Koul <vkoul@kernel.org>,
 Linux Samsung SOC <linux-samsung-soc@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-mips@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, Robin Gong <yibin.gong@nxp.com>,
 linuxppc-dev@lists.ozlabs.org, Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--YiEDa0DAkWCtVeE4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Nov 19, 2019 at 11:26:39AM +0100, Marek Szyprowski wrote:
> Christoph: Let me know if this is a proper fix for you, then I will send 
> it as a full patch.

Besides the point from Robin, which is really older than you patch
I'm not a fan of duplicating dma_capable here.  Let me know what you
think of the two attached patches.

--YiEDa0DAkWCtVeE4
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment; filename="0001-dma-direct-don-t-check-swiotlb-force-in-dma_direct_m.patch"

From db897c2ec63e7af78137c533c9f821c594896167 Mon Sep 17 00:00:00 2001
From: Christoph Hellwig <hch@lst.de>
Date: Tue, 19 Nov 2019 17:35:36 +0100
Subject: dma-direct: don't check swiotlb=force in dma_direct_map_resource

When mapping resources we can't just use swiotlb ram for bounce
buffering.  Switch to a direct dma_capable check instead.

Fixes: cfced786969c ("dma-mapping: remove the default map_resource implementation")
Reported-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 kernel/dma/direct.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index 077876ae5c74..a479bd2d1e8b 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -412,7 +412,7 @@ dma_addr_t dma_direct_map_resource(struct device *dev, phys_addr_t paddr,
 {
 	dma_addr_t dma_addr = paddr;
 
-	if (unlikely(!dma_direct_possible(dev, dma_addr, size))) {
+	if (unlikely(!dma_capable(dev, dma_addr, size))) {
 		report_addr(dev, dma_addr, size);
 		return DMA_MAPPING_ERROR;
 	}
-- 
2.20.1


--YiEDa0DAkWCtVeE4
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment; filename="0002-dma-direct-exclude-dma_direct_map_resource-from-the-.patch"

From fd82d238a42e3a5f12dd0621db2c724b89509b02 Mon Sep 17 00:00:00 2001
From: Christoph Hellwig <hch@lst.de>
Date: Tue, 19 Nov 2019 17:38:58 +0100
Subject: dma-direct: exclude dma_direct_map_resource from the min_low_pfn
 check

The valid memory address check in dma_capable only makes sense when mapping
normal memory, not when using dma_map_resource to map a device resource.
Add a new boolean argument to dma_capable to exclude that check for the
dma_map_resource case.

Fixes: b12d66278dd6 ("dma-direct: check for overflows on 32 bit DMA addresses")
Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/x86/kernel/amd_gart_64.c | 4 ++--
 drivers/xen/swiotlb-xen.c     | 4 ++--
 include/linux/dma-direct.h    | 5 +++--
 kernel/dma/direct.c           | 4 ++--
 kernel/dma/swiotlb.c          | 2 +-
 5 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/arch/x86/kernel/amd_gart_64.c b/arch/x86/kernel/amd_gart_64.c
index a6ac3712db8b..5cfab41e8509 100644
--- a/arch/x86/kernel/amd_gart_64.c
+++ b/arch/x86/kernel/amd_gart_64.c
@@ -185,13 +185,13 @@ static void iommu_full(struct device *dev, size_t size, int dir)
 static inline int
 need_iommu(struct device *dev, unsigned long addr, size_t size)
 {
-	return force_iommu || !dma_capable(dev, addr, size);
+	return force_iommu || !dma_capable(dev, addr, size, true);
 }
 
 static inline int
 nonforced_iommu(struct device *dev, unsigned long addr, size_t size)
 {
-	return !dma_capable(dev, addr, size);
+	return !dma_capable(dev, addr, size, true);
 }
 
 /* Map a single continuous physical area into the IOMMU.
diff --git a/drivers/xen/swiotlb-xen.c b/drivers/xen/swiotlb-xen.c
index 3f8b2cdb4acb..b6d27762c6f8 100644
--- a/drivers/xen/swiotlb-xen.c
+++ b/drivers/xen/swiotlb-xen.c
@@ -375,7 +375,7 @@ static dma_addr_t xen_swiotlb_map_page(struct device *dev, struct page *page,
 	 * we can safely return the device addr and not worry about bounce
 	 * buffering it.
 	 */
-	if (dma_capable(dev, dev_addr, size) &&
+	if (dma_capable(dev, dev_addr, size, true) &&
 	    !range_straddles_page_boundary(phys, size) &&
 		!xen_arch_need_swiotlb(dev, phys, dev_addr) &&
 		swiotlb_force != SWIOTLB_FORCE)
@@ -397,7 +397,7 @@ static dma_addr_t xen_swiotlb_map_page(struct device *dev, struct page *page,
 	/*
 	 * Ensure that the address returned is DMA'ble
 	 */
-	if (unlikely(!dma_capable(dev, dev_addr, size))) {
+	if (unlikely(!dma_capable(dev, dev_addr, size, true))) {
 		swiotlb_tbl_unmap_single(dev, map, size, size, dir,
 				attrs | DMA_ATTR_SKIP_CPU_SYNC);
 		return DMA_MAPPING_ERROR;
diff --git a/include/linux/dma-direct.h b/include/linux/dma-direct.h
index f8959f75e496..99b77dd5f79b 100644
--- a/include/linux/dma-direct.h
+++ b/include/linux/dma-direct.h
@@ -49,14 +49,15 @@ static inline phys_addr_t dma_to_phys(struct device *dev, dma_addr_t daddr)
 	return __sme_clr(__dma_to_phys(dev, daddr));
 }
 
-static inline bool dma_capable(struct device *dev, dma_addr_t addr, size_t size)
+static inline bool dma_capable(struct device *dev, dma_addr_t addr, size_t size,
+		bool is_ram)
 {
 	dma_addr_t end = addr + size - 1;
 
 	if (!dev->dma_mask)
 		return false;
 
-	if (!IS_ENABLED(CONFIG_ARCH_DMA_ADDR_T_64BIT) &&
+	if (is_ram && !IS_ENABLED(CONFIG_ARCH_DMA_ADDR_T_64BIT) &&
 	    min(addr, end) < phys_to_dma(dev, PFN_PHYS(min_low_pfn)))
 		return false;
 
diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index a479bd2d1e8b..40f1f0aac4b1 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -363,7 +363,7 @@ static inline bool dma_direct_possible(struct device *dev, dma_addr_t dma_addr,
 		size_t size)
 {
 	return swiotlb_force != SWIOTLB_FORCE &&
-		dma_capable(dev, dma_addr, size);
+		dma_capable(dev, dma_addr, size, true);
 }
 
 dma_addr_t dma_direct_map_page(struct device *dev, struct page *page,
@@ -412,7 +412,7 @@ dma_addr_t dma_direct_map_resource(struct device *dev, phys_addr_t paddr,
 {
 	dma_addr_t dma_addr = paddr;
 
-	if (unlikely(!dma_capable(dev, dma_addr, size))) {
+	if (unlikely(!dma_capable(dev, dma_addr, size, false))) {
 		report_addr(dev, dma_addr, size);
 		return DMA_MAPPING_ERROR;
 	}
diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
index 673a2cdb2656..9280d6f8271e 100644
--- a/kernel/dma/swiotlb.c
+++ b/kernel/dma/swiotlb.c
@@ -678,7 +678,7 @@ bool swiotlb_map(struct device *dev, phys_addr_t *phys, dma_addr_t *dma_addr,
 
 	/* Ensure that the address returned is DMA'ble */
 	*dma_addr = __phys_to_dma(dev, *phys);
-	if (unlikely(!dma_capable(dev, *dma_addr, size))) {
+	if (unlikely(!dma_capable(dev, *dma_addr, size, true))) {
 		swiotlb_tbl_unmap_single(dev, *phys, size, size, dir,
 			attrs | DMA_ATTR_SKIP_CPU_SYNC);
 		return false;
-- 
2.20.1


--YiEDa0DAkWCtVeE4
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--YiEDa0DAkWCtVeE4--

