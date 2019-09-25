Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C8CBDFE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 16:18:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1d3gW8n6m7cmhDNe92MGhNSQdyhdETnylp1BMIMcrDg=; b=EmNWiB9n82BXLt
	WiV4kiX0Kbyc/l1uLBTMmhN25V3CYFhJ7XC6dkGgAZC4eqegTnPOFP8N2pF+Qt+8k2P3SjvbI1BFe
	ZC2pESr2b9pRy96QJ09FMj6p0Fp6royUtDBPHyPGNnk59RrRMMKA4zzRSS4VfQ5YiZuKDap+BAFds
	+G4yt2pHSMTCOOXgLI5RJDnSUcvTrgmUy/9o+doM1uFCTotZ2TPDz0WALZ++H6yo9RAmNmC/WR6U+
	qYKX0wAx1U2IWai3jjZ6kdww+VT1QW9SEwj/RZYnIMjBTyN60zPXZrnLC5zlKdaRX8kepXu823SRG
	dnARmu+0Ar8ypTHsCklA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD888-0002Ki-Ru; Wed, 25 Sep 2019 14:18:57 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD85W-0001Qu-Ob
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 14:16:18 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iD85O-0000DA-Sg; Wed, 25 Sep 2019 15:16:06 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iD85O-00065b-74; Wed, 25 Sep 2019 15:16:06 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] arm: make unexported items static
Date: Wed, 25 Sep 2019 15:16:01 +0100
Message-Id: <20190925141604.23364-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_071615_047476_389C9E65 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ben Dooks <ben.dooks@codethink.co.uk>, Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixup the following sparse warnings by making the functions and structures
static.

arch/arm/mm/dma-mapping.c:1562:6: warning: symbol '__arm_iommu_free_attrs' was not declared. Should it be static?
arch/arm/mm/dma-mapping.c:1586:6: warning: symbol 'arm_iommu_free_attrs' was not declared. Should it be static?
arch/arm/mm/dma-mapping.c:1592:6: warning: symbol 'arm_coherent_iommu_free_attrs' was not declared. Should it be static?
arch/arm/mm/dma-mapping.c:1716:5: warning: symbol 'arm_coherent_iommu_map_sg' was not declared. Should it be static?
arch/arm/mm/dma-mapping.c:1734:5: warning: symbol 'arm_iommu_map_sg' was not declared. Should it be static?
arch/arm/mm/dma-mapping.c:1767:6: warning: symbol 'arm_coherent_iommu_unmap_sg' was not declared. Should it be static?
arch/arm/mm/dma-mapping.c:1784:6: warning: symbol 'arm_iommu_unmap_sg' was not declared. Should it be static?
arch/arm/mm/dma-mapping.c:1798:6: warning: symbol 'arm_iommu_sync_sg_for_cpu' was not declared. Should it be static?
arch/arm/mm/dma-mapping.c:1816:6: warning: symbol 'arm_iommu_sync_sg_for_device' was not declared. Should it be static?
arch/arm/mm/dma-mapping.c:2018:26: warning: symbol 'iommu_ops' was not declared. Should it be static?
arch/arm/mm/dma-mapping.c:2040:26: warning: symbol 'iommu_coherent_ops' was not declared. Should it be static?

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
 arch/arm/mm/dma-mapping.c | 34 +++++++++++++++++++---------------
 1 file changed, 19 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index 7d042d5c43e3..54d2dd55363a 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -1559,7 +1559,7 @@ static int arm_coherent_iommu_mmap_attrs(struct device *dev,
  * free a page as defined by the above mapping.
  * Must not be called with IRQs disabled.
  */
-void __arm_iommu_free_attrs(struct device *dev, size_t size, void *cpu_addr,
+static void __arm_iommu_free_attrs(struct device *dev, size_t size, void *cpu_addr,
 	dma_addr_t handle, unsigned long attrs, int coherent_flag)
 {
 	struct page **pages;
@@ -1583,13 +1583,14 @@ void __arm_iommu_free_attrs(struct device *dev, size_t size, void *cpu_addr,
 	__iommu_free_buffer(dev, pages, size, attrs);
 }
 
-void arm_iommu_free_attrs(struct device *dev, size_t size,
-		    void *cpu_addr, dma_addr_t handle, unsigned long attrs)
+static void arm_iommu_free_attrs(struct device *dev, size_t size,
+				 void *cpu_addr, dma_addr_t handle,
+				 unsigned long attrs)
 {
 	__arm_iommu_free_attrs(dev, size, cpu_addr, handle, attrs, NORMAL);
 }
 
-void arm_coherent_iommu_free_attrs(struct device *dev, size_t size,
+static void arm_coherent_iommu_free_attrs(struct device *dev, size_t size,
 		    void *cpu_addr, dma_addr_t handle, unsigned long attrs)
 {
 	__arm_iommu_free_attrs(dev, size, cpu_addr, handle, attrs, COHERENT);
@@ -1713,7 +1714,7 @@ static int __iommu_map_sg(struct device *dev, struct scatterlist *sg, int nents,
  * possible) and tagged with the appropriate dma address and length. They are
  * obtained via sg_dma_{address,length}.
  */
-int arm_coherent_iommu_map_sg(struct device *dev, struct scatterlist *sg,
+static int arm_coherent_iommu_map_sg(struct device *dev, struct scatterlist *sg,
 		int nents, enum dma_data_direction dir, unsigned long attrs)
 {
 	return __iommu_map_sg(dev, sg, nents, dir, attrs, true);
@@ -1731,7 +1732,7 @@ int arm_coherent_iommu_map_sg(struct device *dev, struct scatterlist *sg,
  * tagged with the appropriate dma address and length. They are obtained via
  * sg_dma_{address,length}.
  */
-int arm_iommu_map_sg(struct device *dev, struct scatterlist *sg,
+static int arm_iommu_map_sg(struct device *dev, struct scatterlist *sg,
 		int nents, enum dma_data_direction dir, unsigned long attrs)
 {
 	return __iommu_map_sg(dev, sg, nents, dir, attrs, false);
@@ -1764,8 +1765,8 @@ static void __iommu_unmap_sg(struct device *dev, struct scatterlist *sg,
  * Unmap a set of streaming mode DMA translations.  Again, CPU access
  * rules concerning calls here are the same as for dma_unmap_single().
  */
-void arm_coherent_iommu_unmap_sg(struct device *dev, struct scatterlist *sg,
-		int nents, enum dma_data_direction dir,
+static void arm_coherent_iommu_unmap_sg(struct device *dev,
+		struct scatterlist *sg, int nents, enum dma_data_direction dir,
 		unsigned long attrs)
 {
 	__iommu_unmap_sg(dev, sg, nents, dir, attrs, true);
@@ -1781,9 +1782,10 @@ void arm_coherent_iommu_unmap_sg(struct device *dev, struct scatterlist *sg,
  * Unmap a set of streaming mode DMA translations.  Again, CPU access
  * rules concerning calls here are the same as for dma_unmap_single().
  */
-void arm_iommu_unmap_sg(struct device *dev, struct scatterlist *sg, int nents,
-			enum dma_data_direction dir,
-			unsigned long attrs)
+static void arm_iommu_unmap_sg(struct device *dev,
+			       struct scatterlist *sg, int nents,
+			       enum dma_data_direction dir,
+			       unsigned long attrs)
 {
 	__iommu_unmap_sg(dev, sg, nents, dir, attrs, false);
 }
@@ -1795,7 +1797,8 @@ void arm_iommu_unmap_sg(struct device *dev, struct scatterlist *sg, int nents,
  * @nents: number of buffers to map (returned from dma_map_sg)
  * @dir: DMA transfer direction (same as was passed to dma_map_sg)
  */
-void arm_iommu_sync_sg_for_cpu(struct device *dev, struct scatterlist *sg,
+static void arm_iommu_sync_sg_for_cpu(struct device *dev,
+			struct scatterlist *sg,
 			int nents, enum dma_data_direction dir)
 {
 	struct scatterlist *s;
@@ -1813,7 +1816,8 @@ void arm_iommu_sync_sg_for_cpu(struct device *dev, struct scatterlist *sg,
  * @nents: number of buffers to map (returned from dma_map_sg)
  * @dir: DMA transfer direction (same as was passed to dma_map_sg)
  */
-void arm_iommu_sync_sg_for_device(struct device *dev, struct scatterlist *sg,
+static void arm_iommu_sync_sg_for_device(struct device *dev,
+			struct scatterlist *sg,
 			int nents, enum dma_data_direction dir)
 {
 	struct scatterlist *s;
@@ -2015,7 +2019,7 @@ static void arm_iommu_sync_single_for_device(struct device *dev,
 	__dma_page_cpu_to_dev(page, offset, size, dir);
 }
 
-const struct dma_map_ops iommu_ops = {
+static const struct dma_map_ops iommu_ops = {
 	.alloc		= arm_iommu_alloc_attrs,
 	.free		= arm_iommu_free_attrs,
 	.mmap		= arm_iommu_mmap_attrs,
@@ -2037,7 +2041,7 @@ const struct dma_map_ops iommu_ops = {
 	.dma_supported		= arm_dma_supported,
 };
 
-const struct dma_map_ops iommu_coherent_ops = {
+static const struct dma_map_ops iommu_coherent_ops = {
 	.alloc		= arm_coherent_iommu_alloc_attrs,
 	.free		= arm_coherent_iommu_free_attrs,
 	.mmap		= arm_coherent_iommu_mmap_attrs,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
