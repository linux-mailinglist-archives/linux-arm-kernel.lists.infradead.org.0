Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C571F44F61
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 00:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H2QOUsmEMGVCUOo95ZlYBd/DnzMt5BTp/+cVTpvVbsE=; b=k/TNM8f+mK356x
	rxf5vzWzDizMLpi25GDfVXfrsCPssl4kK/DO0sAiU3orVv539NiysERHgYk6DbQpTfIt/H9tz8VWY
	cIYRA9FeTsfPCcH5izReu56oy5Jqdjn0RRiY1kc8gInBJbDxvYe0LELCnXSvNXXw6t4D1xy67S2nr
	9h+TlTbSBNwBsTd8pJU90kpmoAYa1ngK62T3hC7XveI7i5pfgk+mZACrFxyeLhY6UU5HnoxRfTW28
	7Se05UMx/QfjTMdAjjItww2okK6SgD+JdS+cEWSfWpaih1ZoMkrGWSDFGQYvrMfGzslYscaWYhxcu
	kp7JzIKT8EN/qcZan6Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbYP8-0004sX-W5; Thu, 13 Jun 2019 22:41:11 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbYNZ-0002Uf-No
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 22:39:36 +0000
Received: by mail-ed1-x544.google.com with SMTP id g13so513170edu.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 15:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VIfV1OsDOCOIqv6MGdwh5qyRNpWkUFsV6JcVvbdsKMU=;
 b=JTF8mvZhJ/EJnKSb2g8yYVwCI7gY6AOBJvHEmxI98vcIdBtLCHSGqNBLdR66ae+p3N
 Gz0InBZJxBwcsA2tjrxO7l/2SbOW9EC/J1NpN0q7ctUvhDyiy6gcYSquuay1uuRjHT0l
 YMCpGS8YP90uVBR7O2fFjUN4fpSk/Um0odBXe4DqJz7/xdmuiw3TAlj0hxdMDoWq/uEX
 RG3tSMQSl86NA27lig6IIG+QyQL9PoQFyZu2igpH5UvBqmMPLOASs5VkPg6T4OTwrWrD
 sx/2LKFbOUyC2/QeLMuD34t20k1dyG1V73h2F+lWe0JPXWsoQ86NzkR4a3bo6x0/xWPW
 M2Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VIfV1OsDOCOIqv6MGdwh5qyRNpWkUFsV6JcVvbdsKMU=;
 b=SsFpWv7Qu3TtwNrmfzYVzp8uqU8vO4cLERqcoVFzKnRYFJu3xE5XrmM2/9SdI3epyB
 vkrKJZw7MXIYSi28fz4HUw0wX53dIXu/QABKpyvhYx1TzvDqhbMeAfY5mKL+ekJdUlsV
 bFKdMtpyaCQufhosc4TOlpWlbZW4kbG3zIYPZ6xR2A/BoBEK+4hfSc3Wt6m338VMoFdz
 X2DFSFsYszzJDTYUL4GTBc8NmAZdrOdnNg/avhdBtNYLk/6Y/IGKRWyEmjek/5qFvJeP
 7SLs+Jy00BAuoT6ABjGT0aopfz14xrvOgHtfEA4YU1ak47vqBPfnZze7g5CaR1iM6wNy
 p3+Q==
X-Gm-Message-State: APjAAAVO4zI+yFvQvuxtbHF7/Hw9JhCXr3jSo0iNy54igoW8XSRCwcdL
 sKDwZXufDgDzw2AnVZbOHQVU1w==
X-Google-Smtp-Source: APXvYqztuOfR2YM2Du1Zdlax7/DpXIkbSCgn46ot/nG+g0htY0BBU7yj7/Fpx5Lf97ZANT/nGWWzUg==
X-Received: by 2002:a50:a941:: with SMTP id m1mr99843943edc.157.1560465571973; 
 Thu, 13 Jun 2019 15:39:31 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:a0:bc00:8042:d435:a754:1f22])
 by smtp.googlemail.com with ESMTPSA id
 s16sm216522eji.27.2019.06.13.15.39.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 15:39:31 -0700 (PDT)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v4 3/5] iommu/dma-iommu: Handle deferred devices
Date: Thu, 13 Jun 2019 23:38:58 +0100
Message-Id: <20190613223901.9523-4-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613223901.9523-1-murphyt7@tcd.ie>
References: <20190613223901.9523-1-murphyt7@tcd.ie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_153933_903453_2B5D438F 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>,
 virtualization@lists.linux-foundation.org,
 David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, Tom Murphy <murphyt7@tcd.ie>,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Handle devices which defer their attach to the iommu in the dma-iommu api

Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
---
 drivers/iommu/dma-iommu.c | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index e64dbbcde63c..f303bbe20e51 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -22,6 +22,7 @@
 #include <linux/pci.h>
 #include <linux/scatterlist.h>
 #include <linux/vmalloc.h>
+#include <linux/crash_dump.h>
 
 struct iommu_dma_msi_page {
 	struct list_head	list;
@@ -351,6 +352,21 @@ static int iommu_dma_init_domain(struct iommu_domain *domain, dma_addr_t base,
 	return iova_reserve_iommu_regions(dev, domain);
 }
 
+static int handle_deferred_device(struct device *dev,
+	struct iommu_domain *domain)
+{
+	const struct iommu_ops *ops = domain->ops;
+
+	if (!is_kdump_kernel())
+		return 0;
+
+	if (unlikely(ops->is_attach_deferred &&
+		ops->is_attach_deferred(domain, dev)))
+		return iommu_attach_device(domain, dev);
+
+	return 0;
+}
+
 /**
  * dma_info_to_prot - Translate DMA API directions and attributes to IOMMU API
  *                    page flags.
@@ -462,6 +478,9 @@ static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
 	size_t iova_off = 0;
 	dma_addr_t iova;
 
+	if (unlikely(handle_deferred_device(dev, domain)))
+		return DMA_MAPPING_ERROR;
+
 	if (cookie->type == IOMMU_DMA_IOVA_COOKIE) {
 		iova_off = iova_offset(&cookie->iovad, phys);
 		size = iova_align(&cookie->iovad, size + iova_off);
@@ -583,6 +602,9 @@ static void *iommu_dma_alloc_remap(struct device *dev, size_t size,
 
 	*dma_handle = DMA_MAPPING_ERROR;
 
+	if (unlikely(handle_deferred_device(dev, domain)))
+		return NULL;
+
 	min_size = alloc_sizes & -alloc_sizes;
 	if (min_size < PAGE_SIZE) {
 		min_size = PAGE_SIZE;
@@ -715,7 +737,7 @@ static dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
 	int prot = dma_info_to_prot(dir, coherent, attrs);
 	dma_addr_t dma_handle;
 
-	dma_handle =__iommu_dma_map(dev, phys, size, prot);
+	dma_handle = __iommu_dma_map(dev, phys, size, prot);
 	if (!coherent && !(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
 	    dma_handle != DMA_MAPPING_ERROR)
 		arch_sync_dma_for_device(dev, phys, size, dir);
@@ -825,6 +847,9 @@ static int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg,
 	unsigned long mask = dma_get_seg_boundary(dev);
 	int i;
 
+	if (unlikely(handle_deferred_device(dev, domain)))
+		return 0;
+
 	if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC))
 		iommu_dma_sync_sg_for_device(dev, sg, nents, dir);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
