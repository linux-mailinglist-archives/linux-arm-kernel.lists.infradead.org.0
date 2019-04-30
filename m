Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F14D9EDE4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 02:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OX28xprtwrKylf2j0xb5zS7qCHomRq54lWK4Abga/7g=; b=FHXRzAGH0RwLCNIeFwexShJ6wF
	XrphMpSMN3qnh6kpJYq5ghsomdWESkmAobqYIyyOWipERkIxjUguvATcTAkM064TpVJ6KrV46rok4
	ck1w+heB6yOnyZxwyxoQ7RerUcJVM+7rMYQp6Jjn1wcB0V5oXws0WK/a4sg/wyMhdw+6YQiuWeJo9
	y0y2Z0y7CDGjD2xXy/0XypE/IT1NMYP7msbJyUmp5LCvTcs9QT8UnBgceq2wE/MXw+UgJQkr2k/d3
	4vQksKvSd+gfcjZir1Jh7gSi+ZwlBVPOrAVHcwBLLWjbTM0lh5V0gg422MX3cgIcluAV3mOONwM5/
	LuLbYSDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLGgX-0001mW-V0; Tue, 30 Apr 2019 00:31:49 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLGfb-0000tQ-0W
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 00:30:59 +0000
Received: by mail-ed1-x544.google.com with SMTP id g57so4176618edc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 17:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6wixYcB92mB+9i/uw14zD00tHT/PT7l91W2MRSJ23xo=;
 b=hEzzxNkt9AY0j0qPqigUqAw7cCai+XWuumBKhdUMfzR0jhW9BOEPGPLhhZfNsAGG95
 hKwfVkr2zYhqR4xc+JvxQCaR3nZ12Xqsd//pn3RcNnRbJGN+YjuDk+4Wht2SI+JNCj9u
 qmdokJt7w7UqLIzgc9EE6gvbxQ4lyWHdbom386DGZMjY+xQJrP7eOr1mFFZtZMU4ds1d
 sRwKOheTtMrjEVyOj5UmrH026HsBsBE5Dg0yNzrOhbDWiSYtWz8IM8Ug0jGzXWOCM6yC
 xY5MiG4TBoauMsgAMAs16V0H9pf0pR35dUOacMqMNO0d47awLofAQWSM/CvTKSEmEeo5
 pGBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6wixYcB92mB+9i/uw14zD00tHT/PT7l91W2MRSJ23xo=;
 b=eV7tA1X1ap5beDOWLMGhM90c2N1YEbInierf8zrDjd31y+BJ6oKq7m0BdXPY6qraqu
 QJkKfLhBPAjmPozixTe/vKe0qHL6ptm9O66EA9WSjjQaiRDJ0rOtLl+6KE5V7/IuObX9
 vQZuFRcY15YG3EnE/RIh3r1+USjq5FAQs6kvL9MMl+l2r0Ot03unOwxwCr2OmERH/y8u
 3dEn/dNXIR/JfNRDJDC1mBSUcQt52t0+9c8/fuDTAKnTq3yGbQGcY4iDsTEmm9Xlzrz2
 dmcEmItz4gvD4YAc2i+cjSDo2mRq1pMgdgLpsS0+ZE7XbbEhz7A8Lgpcttrkz8Wzo2Wj
 WRFQ==
X-Gm-Message-State: APjAAAUj9+hpoiOBMk96t8K9Lho2BSORSUKXdbMRNsoZ8IIjetwMU/N3
 Csjt8NwpfNoIGqA9/k6C8i+gyg==
X-Google-Smtp-Source: APXvYqywOhH2KIrFjPQcVc2NybBP/YVnpHG/pA61pubck/cts+9DyVhyGKxzcFjIAhDGhXfZNXL9ug==
X-Received: by 2002:a50:c31a:: with SMTP id a26mr5481344edb.289.1556584249639; 
 Mon, 29 Apr 2019 17:30:49 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:a0:bc00:7d76:7b66:68:3b5f])
 by smtp.gmail.com with ESMTPSA id a9sm9424163edt.93.2019.04.29.17.30.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 17:30:49 -0700 (PDT)
From: Tom Murphy <tmurphy@arista.com>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v2 3/4] iommu/dma-iommu: Use the dev->coherent_dma_mask
Date: Tue, 30 Apr 2019 01:29:50 +0100
Message-Id: <20190430002952.18909-4-tmurphy@arista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190430002952.18909-1-tmurphy@arista.com>
References: <20190430002952.18909-1-tmurphy@arista.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_173051_270245_19B64DB6 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>,
 David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Tom Murphy <tmurphy@arista.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 murphyt7@tcd.ie, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the dev->coherent_dma_mask when allocating in the dma-iommu ops api.

Signed-off-by: Tom Murphy <tmurphy@arista.com>
---
 drivers/iommu/dma-iommu.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index c18f74ad1e8b..df03104978d7 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -436,7 +436,8 @@ static void __iommu_dma_unmap(struct iommu_domain *domain, dma_addr_t dma_addr,
 }
 
 static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
-		size_t size, int prot, struct iommu_domain *domain)
+		size_t size, int prot, struct iommu_domain *domain,
+		dma_addr_t dma_limit)
 {
 	struct iommu_dma_cookie *cookie = domain->iova_cookie;
 	size_t iova_off = 0;
@@ -447,7 +448,7 @@ static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
 		size = iova_align(&cookie->iovad, size + iova_off);
 	}
 
-	iova = iommu_dma_alloc_iova(domain, size, dma_get_mask(dev), dev);
+	iova = iommu_dma_alloc_iova(domain, size, dma_limit, dev);
 	if (!iova)
 		return DMA_MAPPING_ERROR;
 
@@ -490,7 +491,7 @@ static void *iommu_dma_alloc_contiguous(struct device *dev, size_t size,
 		return NULL;
 
 	*dma_handle = __iommu_dma_map(dev, page_to_phys(page), size, ioprot,
-			iommu_get_dma_domain(dev));
+			iommu_get_dma_domain(dev), dev->coherent_dma_mask);
 	if (*dma_handle == DMA_MAPPING_ERROR) {
 		if (!dma_release_from_contiguous(dev, page, count))
 			__free_pages(page, page_order);
@@ -760,7 +761,7 @@ static void *iommu_dma_alloc_pool(struct device *dev, size_t size,
 
 	*dma_handle = __iommu_dma_map(dev, page_to_phys(page), size,
 			dma_info_to_prot(DMA_BIDIRECTIONAL, coherent, attrs),
-			iommu_get_domain_for_dev(dev));
+			iommu_get_domain_for_dev(dev), dev->coherent_dma_mask);
 	if (*dma_handle == DMA_MAPPING_ERROR) {
 		dma_free_from_pool(vaddr, PAGE_ALIGN(size));
 		return NULL;
@@ -850,7 +851,7 @@ static dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
 
 	dma_handle =__iommu_dma_map(dev, phys, size,
 			dma_info_to_prot(dir, coherent, attrs),
-			iommu_get_dma_domain(dev));
+			iommu_get_dma_domain(dev), dma_get_mask(dev));
 	if (!coherent && !(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
 	    dma_handle != DMA_MAPPING_ERROR)
 		arch_sync_dma_for_device(dev, phys, size, dir);
@@ -1065,7 +1066,7 @@ static dma_addr_t iommu_dma_map_resource(struct device *dev, phys_addr_t phys,
 
 	return __iommu_dma_map(dev, phys, size,
 			dma_info_to_prot(dir, false, attrs) | IOMMU_MMIO,
-			iommu_get_dma_domain(dev));
+			iommu_get_dma_domain(dev), dma_get_mask(dev));
 }
 
 static void iommu_dma_unmap_resource(struct device *dev, dma_addr_t handle,
@@ -1250,7 +1251,8 @@ static struct iommu_dma_msi_page *iommu_dma_get_msi_page(struct device *dev,
 	if (!msi_page)
 		return NULL;
 
-	iova = __iommu_dma_map(dev, msi_addr, size, prot, domain);
+	iova = __iommu_dma_map(dev, msi_addr, size, prot, domain,
+			dma_get_mask(dev));
 	if (iova == DMA_MAPPING_ERROR)
 		goto out_free_page;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
