Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A10013A30
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 15:25:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xqQdXIq4HbAoKrLzTVJ5DByfXqtHZ9l1E1c51KmJv4Q=; b=QIpN1jIKitaT4fJwS/2qn6Cu7A
	W0V9l82yvTM/smQntvi/2KGbaMZO3T/cFWVQE/wkCfDDrf8eDkYexCSnK1aOfsl8kVHEq5CENtMMT
	3T4kAYDbrgIWmeXLHpS3al+Mi/T7ZQm+JfeJ/R4q6NjRtC2iBSTgdJT2xDqMrSuXhETZAYHHpWz+F
	ykcB7/UiXq5sjAtKqeogmPKWgJ4Lk6cc/M7ED5VWs/Z56yifZaGv7sAIRs1K9+1COCoGxed0yvwex
	Mx2Hj8OSWJrrZu2RPvna6A23ceDbjNY6nbgRjG1sT45t3i4Z28K6eEmFdQs1dou09TD6kfh6CqJmo
	p7Zx2lVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMuf4-0006AG-Un; Sat, 04 May 2019 13:25:07 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMueN-0005LV-OV
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 13:24:32 +0000
Received: by mail-ed1-x541.google.com with SMTP id w33so7118357edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 May 2019 06:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MGv2a159/utSNPRrKthALX+gwTy5XSWgBBtVZtxsUEs=;
 b=fUiRrk1KYySTZz5QtSC78v3sitRc/Xx4j8p1zc8HH22cDSu0OyFgp0BEaA6TRxJWhW
 laPz07843slSKo/TznYWA5pBlVNJtjZHd5nxJBKiX7BWyvNtTa7VfIKHzWAI1eVjjAfR
 ScqC8iqD5aTMb2F7mCM6HFA4NXzW3JgbKjHJ3g8bcxzTfQNYD0QrmLqD3AHKKWCFL3Iv
 iE2/oxpyYMuBQBZtoGE8WdvMrKEJFxZ7t20XF+UqQ5mRVoVcYUQ1pgw5IQEfRyrW3tlk
 snTxLt00MSL4L01LJEfrywVq2EoOGR9tWjliB0NjrCbZ1tczVjPxyyl6jZT9DVAeVYpv
 v79A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MGv2a159/utSNPRrKthALX+gwTy5XSWgBBtVZtxsUEs=;
 b=uFNC9x7ZuKfvMaCq8oYhCrC48FAZZshVI//EGPPZXH20zdfmrT8zOI6M4om+ZJUg8B
 tSvQRbydLV3ZjJ1d9Bo/dyP6U0Qm5ok7uVnZKLAyiTD2S9M3XkgnBMG+XTru0nViSFCv
 GwEz1AYuvEHllguoZcMd8MPJQSHSJxHJGs8no9t7rpm12t10/AleKearYwCQ7URcPtP+
 snXHcpEXBWo9PmDtWkppOgMtVSTXaL+Rt+zz+g58lsjSk9oW15psmgxhD6BKYTVFULoL
 +ql0tVELyQOiY78GXu00MWONGqfbuBqDV04zeiwyES4ldDM/qLG/KHhAyve8S8H5NzDU
 9qvA==
X-Gm-Message-State: APjAAAUievSneTn81mDgf7Kq8QlYB0egJcdoJGYvxiIuSHsedx59gFaF
 XPS5ACgyZO8lFvGMo0ZL9swRVA==
X-Google-Smtp-Source: APXvYqywxlAbHXAeC69FkqfxEDfFcgcXMIm9JfImG/Xg1J0FSEmx+0RS7eL7cjdmPk25eN3Z2+sYWA==
X-Received: by 2002:a50:b4bb:: with SMTP id w56mr14985726edd.40.1556976261711; 
 Sat, 04 May 2019 06:24:21 -0700 (PDT)
Received: from localhost.localdomain ([79.97.203.116])
 by smtp.gmail.com with ESMTPSA id s53sm1391106edb.20.2019.05.04.06.24.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 06:24:21 -0700 (PDT)
From: Tom Murphy <tmurphy@arista.com>
To: iommu@lists.linux-foundation.org
Subject: [RFC 1/7] iommu/vt-d: Set the dma_ops per device so we can remove the
 iommu_no_mapping code
Date: Sat,  4 May 2019 14:23:17 +0100
Message-Id: <20190504132327.27041-2-tmurphy@arista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190504132327.27041-1-tmurphy@arista.com>
References: <20190504132327.27041-1-tmurphy@arista.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_062424_195956_C4EF5FAE 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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

Set the dma_ops per device so we can remove the iommu_no_mapping code.

Signed-off-by: Tom Murphy <tmurphy@arista.com>
---
 drivers/iommu/intel-iommu.c | 85 +++----------------------------------
 1 file changed, 6 insertions(+), 79 deletions(-)

diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
index eace915602f0..2db1dc47e7e4 100644
--- a/drivers/iommu/intel-iommu.c
+++ b/drivers/iommu/intel-iommu.c
@@ -2622,17 +2622,6 @@ static int __init si_domain_init(int hw)
 	return 0;
 }
 
-static int identity_mapping(struct device *dev)
-{
-	struct device_domain_info *info;
-
-	info = dev->archdata.iommu;
-	if (info && info != DUMMY_DEVICE_DOMAIN_INFO)
-		return (info->domain == si_domain);
-
-	return 0;
-}
-
 static int domain_add_dev_info(struct dmar_domain *domain, struct device *dev)
 {
 	struct dmar_domain *ndomain;
@@ -3270,43 +3259,6 @@ static unsigned long intel_alloc_iova(struct device *dev,
 	return iova_pfn;
 }
 
-/* Check if the dev needs to go through non-identity map and unmap process.*/
-static int iommu_no_mapping(struct device *dev)
-{
-	int found;
-
-	if (iommu_dummy(dev))
-		return 1;
-
-	found = identity_mapping(dev);
-	if (found) {
-		/*
-		 * If the device's dma_mask is less than the system's memory
-		 * size then this is not a candidate for identity mapping.
-		 */
-		u64 dma_mask = *dev->dma_mask;
-
-		if (dev->coherent_dma_mask &&
-		    dev->coherent_dma_mask < dma_mask)
-			dma_mask = dev->coherent_dma_mask;
-
-		if (dma_mask < dma_get_required_mask(dev)) {
-			/*
-			 * 32 bit DMA is removed from si_domain and fall back
-			 * to non-identity mapping.
-			 */
-			dmar_remove_one_dev_info(dev);
-			dev_warn(dev, "32bit DMA uses non-identity mapping\n");
-
-			return 0;
-		}
-
-		return 1;
-	}
-
-	return 0;
-}
-
 static dma_addr_t __intel_map_single(struct device *dev, phys_addr_t paddr,
 				     size_t size, int dir, u64 dma_mask)
 {
@@ -3320,9 +3272,6 @@ static dma_addr_t __intel_map_single(struct device *dev, phys_addr_t paddr,
 
 	BUG_ON(dir == DMA_NONE);
 
-	if (iommu_no_mapping(dev))
-		return paddr;
-
 	domain = find_domain(dev);
 	if (!domain)
 		return DMA_MAPPING_ERROR;
@@ -3391,9 +3340,6 @@ static void intel_unmap(struct device *dev, dma_addr_t dev_addr, size_t size)
 	struct intel_iommu *iommu;
 	struct page *freelist;
 
-	if (iommu_no_mapping(dev))
-		return;
-
 	domain = find_domain(dev);
 	BUG_ON(!domain);
 
@@ -3442,9 +3388,7 @@ static void *intel_alloc_coherent(struct device *dev, size_t size,
 	size = PAGE_ALIGN(size);
 	order = get_order(size);
 
-	if (!iommu_no_mapping(dev))
-		flags &= ~(GFP_DMA | GFP_DMA32);
-	else if (dev->coherent_dma_mask < dma_get_required_mask(dev)) {
+	if (dev->coherent_dma_mask < dma_get_required_mask(dev)) {
 		if (dev->coherent_dma_mask < DMA_BIT_MASK(32))
 			flags |= GFP_DMA;
 		else
@@ -3456,11 +3400,6 @@ static void *intel_alloc_coherent(struct device *dev, size_t size,
 
 		page = dma_alloc_from_contiguous(dev, count, order,
 						 flags & __GFP_NOWARN);
-		if (page && iommu_no_mapping(dev) &&
-		    page_to_phys(page) + size > dev->coherent_dma_mask) {
-			dma_release_from_contiguous(dev, page, count);
-			page = NULL;
-		}
 	}
 
 	if (!page)
@@ -3510,20 +3449,6 @@ static void intel_unmap_sg(struct device *dev, struct scatterlist *sglist,
 	intel_unmap(dev, startaddr, nrpages << VTD_PAGE_SHIFT);
 }
 
-static int intel_nontranslate_map_sg(struct device *hddev,
-	struct scatterlist *sglist, int nelems, int dir)
-{
-	int i;
-	struct scatterlist *sg;
-
-	for_each_sg(sglist, sg, nelems, i) {
-		BUG_ON(!sg_page(sg));
-		sg->dma_address = sg_phys(sg);
-		sg->dma_length = sg->length;
-	}
-	return nelems;
-}
-
 static int intel_map_sg(struct device *dev, struct scatterlist *sglist, int nelems,
 			enum dma_data_direction dir, unsigned long attrs)
 {
@@ -3538,8 +3463,6 @@ static int intel_map_sg(struct device *dev, struct scatterlist *sglist, int nele
 	struct intel_iommu *iommu;
 
 	BUG_ON(dir == DMA_NONE);
-	if (iommu_no_mapping(dev))
-		return intel_nontranslate_map_sg(dev, sglist, nelems, dir);
 
 	domain = find_domain(dev);
 	if (!domain)
@@ -4570,7 +4493,6 @@ int __init intel_iommu_init(void)
 #if defined(CONFIG_X86) && defined(CONFIG_SWIOTLB)
 	swiotlb = 0;
 #endif
-	dma_ops = &intel_dma_ops;
 
 	init_iommu_pm_ops();
 
@@ -4949,6 +4871,7 @@ static int intel_iommu_add_device(struct device *dev)
 {
 	struct intel_iommu *iommu;
 	struct iommu_group *group;
+	struct iommu_domain *domain;
 	u8 bus, devfn;
 
 	iommu = device_to_iommu(dev, &bus, &devfn);
@@ -4965,6 +4888,10 @@ static int intel_iommu_add_device(struct device *dev)
 	if (IS_ERR(group))
 		return PTR_ERR(group);
 
+	domain = iommu_get_domain_for_dev(dev);
+	if (domain->type == IOMMU_DOMAIN_DMA)
+		dev->dma_ops = &intel_dma_ops;
+
 	iommu_group_put(group);
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
