Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B75B13A39
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 15:25:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=B4FxiBNmiZ3av1jMWiWPKsKe+pKsqnExm/qDogFSyu4=; b=K4TUsKZ4sr/HruGdmBW2spmPqx
	CJ1S/Q63Z+HMQrLUJKKjNOzXZ/vzQq0H1b5q1jyUYMJBXHCs4kYMGvEuySoVDyhQ9GhZVftfSfqqG
	pi3g9nKslpB6qZ0doxcFO4k+z+2J9EBLaZrJOMClDA7gi1BpgrWEb8DisE98/hVtmmFiB8hkw+zVw
	4LlbgTGzDeXL/cYzUBnlg/cs7mHIywSwmUbXaCyePnga1lR77KLmue9kRxEyflI+Q3K5c3VyQJZJD
	voj/JDpeCHXzC3b6bGRS/mJTco/LQCAb/SeTh1DQhejux3SboVJpwHmE6lMHfO+yFOjXI0ArTgw88
	K1gf5/KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMufd-0006eJ-MI; Sat, 04 May 2019 13:25:41 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMueW-0005dA-E2
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 13:24:43 +0000
Received: by mail-ed1-x543.google.com with SMTP id w33so7118704edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 May 2019 06:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Pb0FurG1gPallERUa4GtO9mxZ28AqtkU2mAXxV5NwXw=;
 b=W8f9FzvsVHhGxLFBguWeeZs+ubClbXwnb1xuM9tOkfL1yYUyX2simh1nO5w3OVm6Vn
 v5sn0WNvAF3uskflo6rHExNjsGbtgZGJy/D02rtnfVatfgyHhL/LvzV+aA9Q7P9DiSl3
 mMO77SpCuHiaXpRzF/a6zNT5gRWMU+q61suKesL9n+3j3/TOF1jdh4GNvcBHlmBHVJEp
 SE2Yui5ftEFWzpaOfxenjEY3KCXsWWHH8YaEQeyN6X4Zg+t/A6GFrsCTqRe6XzzYn1Tj
 bgFziDpik4zAyOzj3GZ4i2BEbcjQO7MrJR6c6se5sYhMF1j2ryHMeSg+Pqv7gwrC9D7R
 Ba4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Pb0FurG1gPallERUa4GtO9mxZ28AqtkU2mAXxV5NwXw=;
 b=nycHbAFoQa4qNMmgtUj4JXb73J/JePX0GJE7i4I76aITA3gQZxCdZNvi0FPlclouDV
 suHW3ZwVX5/ipzfR1EGUlM9Daq5jgqCFiXjE2v4j1Hine8at9yAofboh8GyvRjSMjx+x
 eyiiOMMf8gC36I/+oLX3BD/rOFZvU88h7aMZxGYNtSar2ioHVzvCNwnCphU5dT6TGkMT
 WXilT3KaNt1QOHxrEkm9ueRwWEvdBF/fgR5p3RE9wfwV66SE1/n4tQpQH2O/gzTLRa1s
 sthCkyc2yeYBU4mmFyDQsjINz4oOaZWrLYbYt6iBFnoih4U/+kKTAlqBNoqP6AYsP5ng
 kIDQ==
X-Gm-Message-State: APjAAAUIEYZMcd5Dg/PbJpL6PIRq+UfVOdYabCW+1X3yaS6Zc0vFtPXR
 32zAbaMxv8VMeeYjVXmJwi4CWA==
X-Google-Smtp-Source: APXvYqwLofPa/Ot8PBnBqSJONpdwchx14qZlLoKPK2dNR5dn5+G7//+sHPRbUzyJrnQyhD48s52O/Q==
X-Received: by 2002:a17:906:ad85:: with SMTP id
 la5mr10674324ejb.294.1556976270719; 
 Sat, 04 May 2019 06:24:30 -0700 (PDT)
Received: from localhost.localdomain ([79.97.203.116])
 by smtp.gmail.com with ESMTPSA id s53sm1391106edb.20.2019.05.04.06.24.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 06:24:30 -0700 (PDT)
From: Tom Murphy <tmurphy@arista.com>
To: iommu@lists.linux-foundation.org
Subject: [RFC 3/7] iommu: improve iommu iotlb flushing
Date: Sat,  4 May 2019 14:23:19 +0100
Message-Id: <20190504132327.27041-4-tmurphy@arista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190504132327.27041-1-tmurphy@arista.com>
References: <20190504132327.27041-1-tmurphy@arista.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_062433_371428_C380B814 
X-CRM114-Status: GOOD (  21.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>, linux-arm-msm@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Tom Murphy <tmurphy@arista.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, murphyt7@tcd.ie, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a new iommu_ops::flush_iotlb_range function which allows us to flush
the entire range of an iommu_unmap and implement it for the amd and
intel iommu drivers.
remove the iotlb_range_add because it isn't used anywhere.

Signed-off-by: Tom Murphy <tmurphy@arista.com>
---
 drivers/iommu/amd_iommu.c       | 14 +++++----
 drivers/iommu/arm-smmu-v3.c     |  3 +-
 drivers/iommu/arm-smmu.c        |  2 +-
 drivers/iommu/exynos-iommu.c    |  3 +-
 drivers/iommu/intel-iommu.c     | 50 ++++++++++++++++++++-------------
 drivers/iommu/iommu.c           | 11 +++++---
 drivers/iommu/ipmmu-vmsa.c      |  2 +-
 drivers/iommu/msm_iommu.c       |  2 +-
 drivers/iommu/mtk_iommu.c       |  3 +-
 drivers/iommu/mtk_iommu_v1.c    |  3 +-
 drivers/iommu/omap-iommu.c      |  2 +-
 drivers/iommu/qcom_iommu.c      |  2 +-
 drivers/iommu/rockchip-iommu.c  |  2 +-
 drivers/iommu/s390-iommu.c      |  3 +-
 drivers/iommu/tegra-gart.c      |  2 +-
 drivers/iommu/tegra-smmu.c      |  2 +-
 drivers/vfio/vfio_iommu_type1.c |  1 -
 include/linux/iommu.h           | 21 ++++++++------
 18 files changed, 77 insertions(+), 51 deletions(-)

diff --git a/drivers/iommu/amd_iommu.c b/drivers/iommu/amd_iommu.c
index f7cdd2ab7f11..de98265b5f4e 100644
--- a/drivers/iommu/amd_iommu.c
+++ b/drivers/iommu/amd_iommu.c
@@ -3105,7 +3105,7 @@ static int amd_iommu_map(struct iommu_domain *dom, unsigned long iova,
 }
 
 static size_t amd_iommu_unmap(struct iommu_domain *dom, unsigned long iova,
-			   size_t page_size)
+			   size_t page_size, struct page **freelist)
 {
 	struct protection_domain *domain = to_pdomain(dom);
 	size_t unmap_size;
@@ -3246,9 +3246,14 @@ static void amd_iommu_flush_iotlb_all(struct iommu_domain *domain)
 	domain_flush_complete(dom);
 }
 
-static void amd_iommu_iotlb_range_add(struct iommu_domain *domain,
-				      unsigned long iova, size_t size)
+static void amd_iommu_flush_iotlb_range(struct iommu_domain *domain,
+				      unsigned long iova, size_t size,
+				      struct page *freelist)
 {
+	struct protection_domain *dom = to_pdomain(domain);
+
+	domain_flush_pages(dom, iova, size);
+	domain_flush_complete(dom);
 }
 
 const struct iommu_ops amd_iommu_ops = {
@@ -3269,8 +3274,7 @@ const struct iommu_ops amd_iommu_ops = {
 	.is_attach_deferred = amd_iommu_is_attach_deferred,
 	.pgsize_bitmap	= AMD_IOMMU_PGSIZES,
 	.flush_iotlb_all = amd_iommu_flush_iotlb_all,
-	.iotlb_range_add = amd_iommu_iotlb_range_add,
-	.iotlb_sync = amd_iommu_flush_iotlb_all,
+	.flush_iotlb_range = amd_iommu_flush_iotlb_range,
 };
 
 /*****************************************************************************
diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index d3880010c6cf..2d24185614b9 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -1788,7 +1788,8 @@ static int arm_smmu_map(struct iommu_domain *domain, unsigned long iova,
 }
 
 static size_t
-arm_smmu_unmap(struct iommu_domain *domain, unsigned long iova, size_t size)
+arm_smmu_unmap(struct iommu_domain *domain, unsigned long iova, size_t size,
+		struct page **freelist)
 {
 	struct io_pgtable_ops *ops = to_smmu_domain(domain)->pgtbl_ops;
 
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 045d93884164..80bcd4d3197a 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -1303,7 +1303,7 @@ static int arm_smmu_map(struct iommu_domain *domain, unsigned long iova,
 }
 
 static size_t arm_smmu_unmap(struct iommu_domain *domain, unsigned long iova,
-			     size_t size)
+			     size_t size, struct page **freelist)
 {
 	struct io_pgtable_ops *ops = to_smmu_domain(domain)->pgtbl_ops;
 	struct arm_smmu_device *smmu = to_smmu_domain(domain)->smmu;
diff --git a/drivers/iommu/exynos-iommu.c b/drivers/iommu/exynos-iommu.c
index 05c6bc099d62..5f858ca8a970 100644
--- a/drivers/iommu/exynos-iommu.c
+++ b/drivers/iommu/exynos-iommu.c
@@ -1133,7 +1133,8 @@ static void exynos_iommu_tlb_invalidate_entry(struct exynos_iommu_domain *domain
 }
 
 static size_t exynos_iommu_unmap(struct iommu_domain *iommu_domain,
-				 unsigned long l_iova, size_t size)
+				 unsigned long l_iova, size_t size,
+				 struct page **freelist)
 {
 	struct exynos_iommu_domain *domain = to_exynos_domain(iommu_domain);
 	sysmmu_iova_t iova = (sysmmu_iova_t)l_iova;
diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
index 77895cd89f29..87622a28b854 100644
--- a/drivers/iommu/intel-iommu.c
+++ b/drivers/iommu/intel-iommu.c
@@ -1146,17 +1146,17 @@ static struct page *dma_pte_clear_level(struct dmar_domain *domain, int level,
    pages can only be freed after the IOTLB flush has been done. */
 static struct page *domain_unmap(struct dmar_domain *domain,
 				 unsigned long start_pfn,
-				 unsigned long last_pfn)
+				 unsigned long last_pfn,
+				 struct page *freelist)
 {
-	struct page *freelist;
-
 	BUG_ON(!domain_pfn_supported(domain, start_pfn));
 	BUG_ON(!domain_pfn_supported(domain, last_pfn));
 	BUG_ON(start_pfn > last_pfn);
 
 	/* we don't need lock here; nobody else touches the iova range */
 	freelist = dma_pte_clear_level(domain, agaw_to_level(domain->agaw),
-				       domain->pgd, 0, start_pfn, last_pfn, NULL);
+				       domain->pgd, 0, start_pfn, last_pfn,
+				       freelist);
 
 	/* free pgd */
 	if (start_pfn == 0 && last_pfn == DOMAIN_MAX_PFN(domain->gaw)) {
@@ -1873,7 +1873,7 @@ static void domain_exit(struct dmar_domain *domain)
 	if (domain->domain.type == IOMMU_DOMAIN_DMA)
 		put_iova_domain(&domain->iovad);
 
-	freelist = domain_unmap(domain, 0, DOMAIN_MAX_PFN(domain->gaw));
+	freelist = domain_unmap(domain, 0, DOMAIN_MAX_PFN(domain->gaw), NULL);
 
 	dma_free_pagelist(freelist);
 
@@ -3340,7 +3340,7 @@ static void intel_unmap(struct device *dev, dma_addr_t dev_addr, size_t size)
 
 	dev_dbg(dev, "Device unmapping: pfn %lx-%lx\n", start_pfn, last_pfn);
 
-	freelist = domain_unmap(domain, start_pfn, last_pfn);
+	freelist = domain_unmap(domain, start_pfn, last_pfn, NULL);
 
 	if (intel_iommu_strict) {
 		iommu_flush_iotlb_psi(iommu, domain, start_pfn,
@@ -4190,7 +4190,7 @@ static int intel_iommu_memory_notifier(struct notifier_block *nb,
 			struct page *freelist;
 
 			freelist = domain_unmap(si_domain, start_vpfn,
-					last_vpfn);
+					last_vpfn, NULL);
 
 			rcu_read_lock();
 			for_each_active_iommu(iommu, drhd)
@@ -4780,13 +4780,12 @@ static int intel_iommu_map(struct iommu_domain *domain,
 }
 
 static size_t intel_iommu_unmap(struct iommu_domain *domain,
-				unsigned long iova, size_t size)
+				unsigned long iova, size_t size,
+				struct page **freelist)
 {
 	struct dmar_domain *dmar_domain = to_dmar_domain(domain);
-	struct page *freelist = NULL;
 	unsigned long start_pfn, last_pfn;
-	unsigned int npages;
-	int iommu_id, level = 0;
+	int level = 0;
 
 	/* Cope with horrid API which requires us to unmap more than the
 	   size argument if it happens to be a large-page mapping. */
@@ -4798,20 +4797,32 @@ static size_t intel_iommu_unmap(struct iommu_domain *domain,
 	start_pfn = iova >> VTD_PAGE_SHIFT;
 	last_pfn = (iova + size - 1) >> VTD_PAGE_SHIFT;
 
-	freelist = domain_unmap(dmar_domain, start_pfn, last_pfn);
+	*freelist = domain_unmap(dmar_domain, start_pfn, last_pfn, *freelist);
+	if (dmar_domain->max_addr == iova + size)
+		dmar_domain->max_addr = iova;
+
+	return size;
+}
+
+static void intel_iommu_flush_iotlb_range(struct iommu_domain *domain,
+					unsigned long iova, size_t size,
+					struct page *freelist)
+{
+	struct dmar_domain *dmar_domain = to_dmar_domain(domain);
+	unsigned long start_pfn, last_pfn;
+	unsigned long iova_pfn = IOVA_PFN(iova);
+	unsigned long nrpages;
+	int iommu_id;
 
-	npages = last_pfn - start_pfn + 1;
+	nrpages = aligned_nrpages(iova, size);
+	start_pfn = mm_to_dma_pfn(iova_pfn);
+	last_pfn = start_pfn + nrpages - 1;
 
 	for_each_domain_iommu(iommu_id, dmar_domain)
 		iommu_flush_iotlb_psi(g_iommus[iommu_id], dmar_domain,
-				      start_pfn, npages, !freelist, 0);
+				start_pfn, nrpages, !freelist, 0);
 
 	dma_free_pagelist(freelist);
-
-	if (dmar_domain->max_addr == iova + size)
-		dmar_domain->max_addr = iova;
-
-	return size;
 }
 
 static phys_addr_t intel_iommu_iova_to_phys(struct iommu_domain *domain,
@@ -5039,6 +5050,7 @@ const struct iommu_ops intel_iommu_ops = {
 	.detach_dev		= intel_iommu_detach_device,
 	.map			= intel_iommu_map,
 	.unmap			= intel_iommu_unmap,
+	.flush_iotlb_range	= intel_iommu_flush_iotlb_range,
 	.iova_to_phys		= intel_iommu_iova_to_phys,
 	.add_device		= intel_iommu_add_device,
 	.remove_device		= intel_iommu_remove_device,
diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index 6353e13ae79f..23918e7a0094 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -1658,6 +1658,7 @@ static size_t __iommu_unmap(struct iommu_domain *domain,
 {
 	const struct iommu_ops *ops = domain->ops;
 	size_t unmapped_page, unmapped = 0;
+	struct page *freelist_head = NULL;
 	unsigned long orig_iova = iova;
 	unsigned int min_pagesz;
 
@@ -1691,13 +1692,11 @@ static size_t __iommu_unmap(struct iommu_domain *domain,
 	while (unmapped < size) {
 		size_t pgsize = iommu_pgsize(domain, iova, size - unmapped);
 
-		unmapped_page = ops->unmap(domain, iova, pgsize);
+		unmapped_page = ops->unmap(domain, iova, pgsize,
+				&freelist_head);
 		if (!unmapped_page)
 			break;
 
-		if (sync && ops->iotlb_range_add)
-			ops->iotlb_range_add(domain, iova, pgsize);
-
 		pr_debug("unmapped: iova 0x%lx size 0x%zx\n",
 			 iova, unmapped_page);
 
@@ -1708,6 +1707,10 @@ static size_t __iommu_unmap(struct iommu_domain *domain,
 	if (sync && ops->iotlb_sync)
 		ops->iotlb_sync(domain);
 
+	if (sync && ops->flush_iotlb_range)
+		ops->flush_iotlb_range(domain, orig_iova, unmapped,
+				freelist_head);
+
 	trace_unmap(orig_iova, size, unmapped);
 	return unmapped;
 }
diff --git a/drivers/iommu/ipmmu-vmsa.c b/drivers/iommu/ipmmu-vmsa.c
index 9a380c10655e..7c30d82a2f99 100644
--- a/drivers/iommu/ipmmu-vmsa.c
+++ b/drivers/iommu/ipmmu-vmsa.c
@@ -718,7 +718,7 @@ static int ipmmu_map(struct iommu_domain *io_domain, unsigned long iova,
 }
 
 static size_t ipmmu_unmap(struct iommu_domain *io_domain, unsigned long iova,
-			  size_t size)
+			  size_t size, struct page **freelist)
 {
 	struct ipmmu_vmsa_domain *domain = to_vmsa_domain(io_domain);
 
diff --git a/drivers/iommu/msm_iommu.c b/drivers/iommu/msm_iommu.c
index 9fb0eb7a4d02..d5067af98602 100644
--- a/drivers/iommu/msm_iommu.c
+++ b/drivers/iommu/msm_iommu.c
@@ -522,7 +522,7 @@ static int msm_iommu_map(struct iommu_domain *domain, unsigned long iova,
 }
 
 static size_t msm_iommu_unmap(struct iommu_domain *domain, unsigned long iova,
-			      size_t len)
+			      size_t len, struct page **freelist)
 {
 	struct msm_priv *priv = to_msm_priv(domain);
 	unsigned long flags;
diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index de3e02277b70..18a08e77b24f 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -379,7 +379,8 @@ static int mtk_iommu_map(struct iommu_domain *domain, unsigned long iova,
 }
 
 static size_t mtk_iommu_unmap(struct iommu_domain *domain,
-			      unsigned long iova, size_t size)
+			      unsigned long iova, size_t size,
+			      struct page **freelist)
 {
 	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
 	unsigned long flags;
diff --git a/drivers/iommu/mtk_iommu_v1.c b/drivers/iommu/mtk_iommu_v1.c
index 52b01e3a49df..79d7e35e06ee 100644
--- a/drivers/iommu/mtk_iommu_v1.c
+++ b/drivers/iommu/mtk_iommu_v1.c
@@ -332,7 +332,8 @@ static int mtk_iommu_map(struct iommu_domain *domain, unsigned long iova,
 }
 
 static size_t mtk_iommu_unmap(struct iommu_domain *domain,
-			      unsigned long iova, size_t size)
+			      unsigned long iova, size_t size,
+			      struct page **freelist)
 {
 	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
 	unsigned long flags;
diff --git a/drivers/iommu/omap-iommu.c b/drivers/iommu/omap-iommu.c
index d2fb347aa4ff..680a2ea76c60 100644
--- a/drivers/iommu/omap-iommu.c
+++ b/drivers/iommu/omap-iommu.c
@@ -1153,7 +1153,7 @@ static int omap_iommu_map(struct iommu_domain *domain, unsigned long da,
 }
 
 static size_t omap_iommu_unmap(struct iommu_domain *domain, unsigned long da,
-			       size_t size)
+			       size_t size, struct page **freelist)
 {
 	struct omap_iommu_domain *omap_domain = to_omap_domain(domain);
 	struct device *dev = omap_domain->dev;
diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
index 8cdd3f059513..0a4bcd604bdc 100644
--- a/drivers/iommu/qcom_iommu.c
+++ b/drivers/iommu/qcom_iommu.c
@@ -428,7 +428,7 @@ static int qcom_iommu_map(struct iommu_domain *domain, unsigned long iova,
 }
 
 static size_t qcom_iommu_unmap(struct iommu_domain *domain, unsigned long iova,
-			       size_t size)
+			       size_t size, struct page **freelist)
 {
 	size_t ret;
 	unsigned long flags;
diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 77d4bd93fe4b..7fce623a0ff6 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -797,7 +797,7 @@ static int rk_iommu_map(struct iommu_domain *domain, unsigned long _iova,
 }
 
 static size_t rk_iommu_unmap(struct iommu_domain *domain, unsigned long _iova,
-			     size_t size)
+			     size_t size, struct page **freelist)
 {
 	struct rk_iommu_domain *rk_domain = to_rk_domain(domain);
 	unsigned long flags;
diff --git a/drivers/iommu/s390-iommu.c b/drivers/iommu/s390-iommu.c
index 22d4db302c1c..b58755219a1f 100644
--- a/drivers/iommu/s390-iommu.c
+++ b/drivers/iommu/s390-iommu.c
@@ -314,7 +314,8 @@ static phys_addr_t s390_iommu_iova_to_phys(struct iommu_domain *domain,
 }
 
 static size_t s390_iommu_unmap(struct iommu_domain *domain,
-			       unsigned long iova, size_t size)
+			       unsigned long iova, size_t size,
+			       struct page **freelist)
 {
 	struct s390_domain *s390_domain = to_s390_domain(domain);
 	int flags = ZPCI_PTE_INVALID;
diff --git a/drivers/iommu/tegra-gart.c b/drivers/iommu/tegra-gart.c
index 4d8057916552..823e5fe31c34 100644
--- a/drivers/iommu/tegra-gart.c
+++ b/drivers/iommu/tegra-gart.c
@@ -219,7 +219,7 @@ static inline int __gart_iommu_unmap(struct gart_device *gart,
 }
 
 static size_t gart_iommu_unmap(struct iommu_domain *domain, unsigned long iova,
-			       size_t bytes)
+			       size_t bytes, struct page **freelist)
 {
 	struct gart_device *gart = gart_handle;
 	int err;
diff --git a/drivers/iommu/tegra-smmu.c b/drivers/iommu/tegra-smmu.c
index 5182c7d6171e..612073a445b7 100644
--- a/drivers/iommu/tegra-smmu.c
+++ b/drivers/iommu/tegra-smmu.c
@@ -662,7 +662,7 @@ static int tegra_smmu_map(struct iommu_domain *domain, unsigned long iova,
 }
 
 static size_t tegra_smmu_unmap(struct iommu_domain *domain, unsigned long iova,
-			       size_t size)
+			       size_t size, struct page **freelist)
 {
 	struct tegra_smmu_as *as = to_smmu_as(domain);
 	dma_addr_t pte_dma;
diff --git a/drivers/vfio/vfio_iommu_type1.c b/drivers/vfio/vfio_iommu_type1.c
index d0f731c9920a..26c3f519b01a 100644
--- a/drivers/vfio/vfio_iommu_type1.c
+++ b/drivers/vfio/vfio_iommu_type1.c
@@ -715,7 +715,6 @@ static size_t unmap_unpin_fast(struct vfio_domain *domain,
 		if (!unmapped) {
 			kfree(entry);
 		} else {
-			iommu_tlb_range_add(domain->domain, *iova, unmapped);
 			entry->iova = *iova;
 			entry->phys = phys;
 			entry->len  = unmapped;
diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index 9318fa1d822e..7e084eb1725f 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -172,7 +172,7 @@ struct iommu_resv_region {
  * @map: map a physically contiguous memory region to an iommu domain
  * @unmap: unmap a physically contiguous memory region from an iommu domain
  * @flush_iotlb_all: Synchronously flush all hardware TLBs for this domain
- * @iotlb_range_add: Add a given iova range to the flush queue for this domain
+ * @flush_iotlb_range: Flush given iova range of hardware TLBs for this domain
  * @iotlb_sync_map: Sync mappings created recently using @map to the hardware
  * @iotlb_sync: Flush all queued ranges from the hardware TLBs and empty flush
  *            queue
@@ -209,10 +209,11 @@ struct iommu_ops {
 	int (*map)(struct iommu_domain *domain, unsigned long iova,
 		   phys_addr_t paddr, size_t size, int prot);
 	size_t (*unmap)(struct iommu_domain *domain, unsigned long iova,
-		     size_t size);
+		     size_t size, struct page **freelist);
 	void (*flush_iotlb_all)(struct iommu_domain *domain);
-	void (*iotlb_range_add)(struct iommu_domain *domain,
-				unsigned long iova, size_t size);
+	void (*flush_iotlb_range)(struct iommu_domain *domain,
+				unsigned long iova, size_t size,
+				struct page *freelist);
 	void (*iotlb_sync_map)(struct iommu_domain *domain);
 	void (*iotlb_sync)(struct iommu_domain *domain);
 	phys_addr_t (*iova_to_phys)(struct iommu_domain *domain, dma_addr_t iova);
@@ -371,11 +372,12 @@ static inline void iommu_flush_tlb_all(struct iommu_domain *domain)
 		domain->ops->flush_iotlb_all(domain);
 }
 
-static inline void iommu_tlb_range_add(struct iommu_domain *domain,
-				       unsigned long iova, size_t size)
+static inline void iommu_flush_iotlb_range(struct iommu_domain *domain,
+			      unsigned long iova, size_t size,
+			      struct page *freelist)
 {
-	if (domain->ops->iotlb_range_add)
-		domain->ops->iotlb_range_add(domain, iova, size);
+	if (domain->ops->flush_iotlb_range)
+		domain->ops->flush_iotlb_range(domain, iova, size, freelist);
 }
 
 static inline void iommu_tlb_sync(struct iommu_domain *domain)
@@ -487,7 +489,8 @@ static inline size_t iommu_unmap(struct iommu_domain *domain,
 }
 
 static inline size_t iommu_unmap_fast(struct iommu_domain *domain,
-				      unsigned long iova, int gfp_order)
+				      unsigned long iova, int gfp_order,
+					  struct page **freelist)
 {
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
