Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6348D1289FC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 16:06:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNYvrXbt0wJB0En0r/d99zVgUUfi+uQU6CCXCZwVoJM=; b=c6BsB0PEMaphfp
	6Ae3JZ4LysfABrzaQC2Pgus11OmXoykM0/qwbmAEz1RgQkJae/srt1ad5s3tKzsWyMqB7KOwrxboq
	8oXrOJMqR55GBbBt9l3iF1rv61LMT1SeNoUJtb/6hjYaBQ3d/T9tXp8y/giDjFFePmbzJN4QtzkbU
	zRN2hAfCCRAdpM5184BLkfqlazzXmu8FVvIF9Q9aB6xP+vil7W1I8+xeEFZy62GClVXKzHS8jNyYq
	qP5KitWh0eYcdy26uN8eA8mrQ6yZK10Zjewrzn7mgUNrf9FZUd/CiAUuy6zgUIS8FbDBLNhnMsO7a
	JrlN6cBGZ+crcubZp/PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iigKF-0001Lj-MB; Sat, 21 Dec 2019 15:05:51 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iigIt-0007cw-ML
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 15:04:29 +0000
Received: by mail-ed1-x543.google.com with SMTP id t17so11391285eds.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 21 Dec 2019 07:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g9kFTz+OIjtd02sboEb/xPH2umLLduJGHZnkezx3k0U=;
 b=CTktPvnNq1jyejKuw4FPmsDHJqlMqnIK+LqTDjsTZ1ZsJVdD5K3EVXU9H9QfhP1vZi
 Dr+qg3qIXY699xoJ8F0TOCouYc1BBGbU43hDF2kmAYXm04HO5vI0AZGZAi2jkV0r6EFN
 Uqqu8MF/N0nkVC19U2nfYFQHC/XM6Mw8TaFgZUgu9czVrLEwvawDZRjnsTBB+/yigVh0
 MNGrdrt/6eys15k3D6741eDIFVQEakAIF0yLafdCTI/WakOrjNrokbN5gIZLsHdv6rvT
 JHYoqwNQsVMDBB0wYNztnmjEhP8hzVgepORwDvLZVBZd6aM2+hZeuyiCzwGgtYXJJ1Dy
 5Qag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g9kFTz+OIjtd02sboEb/xPH2umLLduJGHZnkezx3k0U=;
 b=q8FcgYAbWNtulHZkndHOsc0esyqmYdQ80oodNNQYsj9lXGCCdVNVNKcyZBrLQXBht3
 q6gkp3glxfegi/ZePQ139qnZa8/A9MmtvaTM2mnPRzkcNHPV0lCQHbu56rrC1yfkjoTC
 +vBtYxeAt5O30Fg55qjUxUG/0N86+nAunK0gLFMlgOyF3ZzDIC3rRj8LAC9ugtl6hm5y
 NsfSPuKBrfCtjxfa2TBQId5y2VzpWzkhXEJQN/j0SeXkYXlAVD74InoyREnaUVJMCKIz
 pN8WSIjgaTnhcQI25AhW41KTfFnAUei5psURm5lKe9T8k5L3SnPnF3JCP5k13Sm33Afq
 dqOw==
X-Gm-Message-State: APjAAAU8tG99EWJwf0UzWyoWPt+r8d/2xiPLAzgGZXG8E3ue68ksGY+Q
 c+x9LxAaadfsp7NtraEb0QE2tA==
X-Google-Smtp-Source: APXvYqz53m9hdZ0HCFwnxdnPVWgrcBCgGDP73tz51CWh/bfe9HlHp6dFxdkAOOP0s/SRLuvh29w7og==
X-Received: by 2002:a50:d0d0:: with SMTP id g16mr22057226edf.75.1576940666211; 
 Sat, 21 Dec 2019 07:04:26 -0800 (PST)
Received: from localhost.localdomain ([80.233.37.20])
 by smtp.googlemail.com with ESMTPSA id u13sm1517639ejz.69.2019.12.21.07.04.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Dec 2019 07:04:25 -0800 (PST)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Subject: [PATCH 2/8] iommu/vt-d: Use default dma_direct_* mapping functions
 for direct mapped devices
Date: Sat, 21 Dec 2019 15:03:54 +0000
Message-Id: <20191221150402.13868-3-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191221150402.13868-1-murphyt7@tcd.ie>
References: <20191221150402.13868-1-murphyt7@tcd.ie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_070427_811474_90B23B63 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-tegra@vger.kernel.org, Julien Grall <julien.grall@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 virtualization@lists.linux-foundation.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Woodhouse <dwmw2@infradead.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-kernel@vger.kernel.org, Tom Murphy <murphyt7@tcd.ie>,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We should only assign intel_dma_ops to devices which will actually use
the iommu and let the default fall back dma_direct_* functions handle
all other devices. This won't change any behaviour but will just use the
generic implementations for direct mapped devices rather than intel
specific ones.

Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
---
 drivers/iommu/intel-iommu.c | 52 +++++--------------------------------
 1 file changed, 6 insertions(+), 46 deletions(-)

diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
index c1ea66467918..64b1a9793daa 100644
--- a/drivers/iommu/intel-iommu.c
+++ b/drivers/iommu/intel-iommu.c
@@ -2794,17 +2794,6 @@ static int __init si_domain_init(int hw)
 	return 0;
 }
 
-static int identity_mapping(struct device *dev)
-{
-	struct device_domain_info *info;
-
-	info = dev->archdata.iommu;
-	if (info && info != DUMMY_DEVICE_DOMAIN_INFO && info != DEFER_DEVICE_DOMAIN_INFO)
-		return (info->domain == si_domain);
-
-	return 0;
-}
-
 static int domain_add_dev_info(struct dmar_domain *domain, struct device *dev)
 {
 	struct dmar_domain *ndomain;
@@ -3461,12 +3450,6 @@ static struct dmar_domain *get_private_domain_for_dev(struct device *dev)
 	return domain;
 }
 
-/* Check if the dev needs to go through non-identity map and unmap process.*/
-static bool iommu_no_mapping(struct device *dev)
-{
-	return iommu_dummy(dev) || identity_mapping(dev);
-}
-
 static dma_addr_t __intel_map_single(struct device *dev, phys_addr_t paddr,
 				     size_t size, int dir, u64 dma_mask)
 {
@@ -3531,9 +3514,6 @@ static dma_addr_t intel_map_page(struct device *dev, struct page *page,
 				 enum dma_data_direction dir,
 				 unsigned long attrs)
 {
-	if (iommu_no_mapping(dev))
-		return dma_direct_map_page(dev, page, offset, size, dir, attrs);
-
 	return __intel_map_single(dev, page_to_phys(page) + offset, size, dir,
 			*dev->dma_mask);
 }
@@ -3542,10 +3522,6 @@ static dma_addr_t intel_map_resource(struct device *dev, phys_addr_t phys_addr,
 				     size_t size, enum dma_data_direction dir,
 				     unsigned long attrs)
 {
-	if (iommu_no_mapping(dev))
-		return dma_direct_map_resource(dev, phys_addr, size, dir,
-				attrs);
-
 	return __intel_map_single(dev, phys_addr, size, dir, *dev->dma_mask);
 }
 
@@ -3597,17 +3573,13 @@ static void intel_unmap_page(struct device *dev, dma_addr_t dev_addr,
 			     size_t size, enum dma_data_direction dir,
 			     unsigned long attrs)
 {
-	if (iommu_no_mapping(dev))
-		dma_direct_unmap_page(dev, dev_addr, size, dir, attrs);
-	else
-		intel_unmap(dev, dev_addr, size);
+	intel_unmap(dev, dev_addr, size);
 }
 
 static void intel_unmap_resource(struct device *dev, dma_addr_t dev_addr,
 		size_t size, enum dma_data_direction dir, unsigned long attrs)
 {
-	if (!iommu_no_mapping(dev))
-		intel_unmap(dev, dev_addr, size);
+	intel_unmap(dev, dev_addr, size);
 }
 
 static void *intel_alloc_coherent(struct device *dev, size_t size,
@@ -3617,9 +3589,6 @@ static void *intel_alloc_coherent(struct device *dev, size_t size,
 	struct page *page = NULL;
 	int order;
 
-	if (iommu_no_mapping(dev))
-		return dma_direct_alloc(dev, size, dma_handle, flags, attrs);
-
 	size = PAGE_ALIGN(size);
 	order = get_order(size);
 
@@ -3653,9 +3622,6 @@ static void intel_free_coherent(struct device *dev, size_t size, void *vaddr,
 	int order;
 	struct page *page = virt_to_page(vaddr);
 
-	if (iommu_no_mapping(dev))
-		return dma_direct_free(dev, size, vaddr, dma_handle, attrs);
-
 	size = PAGE_ALIGN(size);
 	order = get_order(size);
 
@@ -3673,9 +3639,6 @@ static void intel_unmap_sg(struct device *dev, struct scatterlist *sglist,
 	struct scatterlist *sg;
 	int i;
 
-	if (iommu_no_mapping(dev))
-		return dma_direct_unmap_sg(dev, sglist, nelems, dir, attrs);
-
 	for_each_sg(sglist, sg, nelems, i) {
 		nrpages += aligned_nrpages(sg_dma_address(sg), sg_dma_len(sg));
 	}
@@ -3699,8 +3662,6 @@ static int intel_map_sg(struct device *dev, struct scatterlist *sglist, int nele
 	struct intel_iommu *iommu;
 
 	BUG_ON(dir == DMA_NONE);
-	if (iommu_no_mapping(dev))
-		return dma_direct_map_sg(dev, sglist, nelems, dir, attrs);
 
 	domain = deferred_attach_domain(dev);
 	if (!domain)
@@ -3747,8 +3708,6 @@ static int intel_map_sg(struct device *dev, struct scatterlist *sglist, int nele
 
 static u64 intel_get_required_mask(struct device *dev)
 {
-	if (iommu_no_mapping(dev))
-		return dma_direct_get_required_mask(dev);
 	return DMA_BIT_MASK(32);
 }
 
@@ -5014,7 +4973,6 @@ int __init intel_iommu_init(void)
 	if (!has_untrusted_dev() || intel_no_bounce)
 		swiotlb = 0;
 #endif
-	dma_ops = &intel_dma_ops;
 
 	init_iommu_pm_ops();
 
@@ -5623,6 +5581,8 @@ static int intel_iommu_add_device(struct device *dev)
 				dev_info(dev,
 					 "Device uses a private identity domain.\n");
 			}
+		} else {
+			dev->dma_ops = &intel_dma_ops;
 		}
 	} else {
 		if (device_def_domain_type(dev) == IOMMU_DOMAIN_DMA) {
@@ -5639,6 +5599,7 @@ static int intel_iommu_add_device(struct device *dev)
 				dev_info(dev,
 					 "Device uses a private dma domain.\n");
 			}
+			dev->dma_ops = &intel_dma_ops;
 		}
 	}
 
@@ -5665,8 +5626,7 @@ static void intel_iommu_remove_device(struct device *dev)
 
 	iommu_device_unlink(&iommu->iommu, dev);
 
-	if (device_needs_bounce(dev))
-		set_dma_ops(dev, NULL);
+	set_dma_ops(dev, NULL);
 }
 
 static void intel_iommu_get_resv_regions(struct device *device,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
