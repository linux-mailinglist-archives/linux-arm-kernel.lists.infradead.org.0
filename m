Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F6915405
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 20:54:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BLemYD2GcHd9D9/EjEA0gBNajy8si57pymj4vYG0JL4=; b=GGLMQi7rwWrYYuRlFbyH5L3y/M
	0NbTx4/U/YOiT0QVyFTpLOP7Xs2+In1woCp9kNbKIdMCHdbJSzNHdUsZlae+S8QraG3tVwzwhrdDs
	kghQVKPOZdnu5MdBirdZVg2behrLi5ztbVrHp7nYUbDdAZWXuIJaxmm1owZEj2ZHdndd0cOW7drUk
	KmQLAtIyDTbZ66GfwbeG2a/6hxR1AESfjgtBqPCHSYNZWhC71VWAjKMMYbPCKiLSQy7KZnB3mebTz
	0lKe2IGxwxoMtZxniGujiuZs3mAMNgFUp8ReDAPBp2YbGC1wC6b7gpCxzqeAlOYiM5Mo+vMT02f1Y
	YOzBDiSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNikQ-0005ja-6E; Mon, 06 May 2019 18:53:58 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNijZ-0004mE-FV
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 18:53:20 +0000
Received: by mail-ed1-x544.google.com with SMTP id n17so16354699edb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 11:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/hTYvyPXHYQkQCzQru2covdVf7EDKqdAg5C6++p9hp0=;
 b=TXXO0sUa5j2S+jQ2V/DuEJrsKRb3HDirT68HeTl/j87oqJltVn4/AzBIpIAnNJ/FTH
 BXD7hqCTZ8mP2/lkvt1YSXSIXRnKzl+SJT6TihX5StIqNa/rsvmRT+SjQwhDfAJ6UJET
 MZ/njB9sHEoNIOd472p2eie0qVRix++XVw2puekuSuQtcs+wwcmPBTEbt7Pxw00WiIiH
 oJTpiQqm5ABDoXPS9p4VISTAAHXo9UWBrxWMGYQV4yMOP0ulAbVr0v4NsXjkGngspKYl
 WpzS32AYszwzwhILjzd9G0P62O4tCUfchiMuwAKSQ28IXVLOhuSTSSGSUosTjNhFTnnK
 vs1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/hTYvyPXHYQkQCzQru2covdVf7EDKqdAg5C6++p9hp0=;
 b=tEMzEA/O01X46daQfqpUxL6vmnSiz77cD0TBz/FFyTp0nML92CKqybaO5ChtqBhyTJ
 00LMt0qlpN6ge3sJuhM6lxwOWy7J0k4Jq4AjrKa0iC6IKz8TvNYxpEfdRU541urRCIB6
 WqNHnPa6bKsQ0/YapFPzysl4ST8jPNliua7Ii5UcEVwQgH5YYQn6YSZPeVvbAtgF9wGI
 f5/A+gT5hNl8agyJ6HIjQ8syMnrBjYx/llOweG9d0jWDoAgb2CS9owMThV2yzHjnpBmQ
 QnMlhZg3qnsTrUmohYmEVYCGg2GciI3AxfGegyj5dQ9oBx7/CLQnigrkqloOn5ouqzNW
 //Iw==
X-Gm-Message-State: APjAAAWyMAZixr0AL3Z77oUZzjiDBA9lFWWxYh4BPanYbkCen6QwqMSx
 wuAsimxFB4tCIFrI45GrZeG/tQ==
X-Google-Smtp-Source: APXvYqx6gw3vWSp/t+3S0SAtNJ94zSpQdEJDOcQR4soMcEGxTBfWu3kSLkCmkGga0x9j1A01hmIVvQ==
X-Received: by 2002:a17:906:e241:: with SMTP id
 gq1mr20832987ejb.5.1557168784042; 
 Mon, 06 May 2019 11:53:04 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:a0:bc00:d9d9:922a:828d:a50e])
 by smtp.gmail.com with ESMTPSA id
 e35sm3361412eda.2.2019.05.06.11.53.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 11:53:03 -0700 (PDT)
From: Tom Murphy <tmurphy@arista.com>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v3 3/4] iommu/dma-iommu: Use the dev->coherent_dma_mask
Date: Mon,  6 May 2019 19:52:05 +0100
Message-Id: <20190506185207.31069-4-tmurphy@arista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190506185207.31069-1-tmurphy@arista.com>
References: <20190506185207.31069-1-tmurphy@arista.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_115306_120307_863BEC48 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
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
index b383498e2dc3..2a968afdab10 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -442,7 +442,8 @@ static void __iommu_dma_unmap(struct iommu_domain *domain, dma_addr_t dma_addr,
 }
 
 static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
-		size_t size, int prot, struct iommu_domain *domain)
+		size_t size, int prot, struct iommu_domain *domain,
+		dma_addr_t dma_mask)
 {
 	struct iommu_dma_cookie *cookie = domain->iova_cookie;
 	size_t iova_off = 0;
@@ -453,7 +454,7 @@ static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
 		size = iova_align(&cookie->iovad, size + iova_off);
 	}
 
-	iova = iommu_dma_alloc_iova(domain, size, dma_get_mask(dev), dev);
+	iova = iommu_dma_alloc_iova(domain, size, dma_mask, dev);
 	if (!iova)
 		return DMA_MAPPING_ERROR;
 
@@ -496,7 +497,7 @@ static void *iommu_dma_alloc_contiguous(struct device *dev, size_t size,
 		return NULL;
 
 	*dma_handle = __iommu_dma_map(dev, page_to_phys(page), size, ioprot,
-			iommu_get_dma_domain(dev));
+			iommu_get_dma_domain(dev), dev->coherent_dma_mask);
 	if (*dma_handle == DMA_MAPPING_ERROR) {
 		if (!dma_release_from_contiguous(dev, page, count))
 			__free_pages(page, page_order);
@@ -766,7 +767,7 @@ static void *iommu_dma_alloc_pool(struct device *dev, size_t size,
 
 	*dma_handle = __iommu_dma_map(dev, page_to_phys(page), size,
 			dma_info_to_prot(DMA_BIDIRECTIONAL, coherent, attrs),
-			iommu_get_domain_for_dev(dev));
+			iommu_get_domain_for_dev(dev), dev->coherent_dma_mask);
 	if (*dma_handle == DMA_MAPPING_ERROR) {
 		dma_free_from_pool(vaddr, PAGE_ALIGN(size));
 		return NULL;
@@ -857,7 +858,7 @@ static dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
 
 	dma_handle = __iommu_dma_map(dev, phys, size,
 			dma_info_to_prot(dir, coherent, attrs),
-			iommu_get_dma_domain(dev));
+			iommu_get_dma_domain(dev), dma_get_mask(dev));
 	if (!coherent && !(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
 	    dma_handle != DMA_MAPPING_ERROR)
 		arch_sync_dma_for_device(dev, phys, size, dir);
@@ -1067,7 +1068,7 @@ static dma_addr_t iommu_dma_map_resource(struct device *dev, phys_addr_t phys,
 {
 	return __iommu_dma_map(dev, phys, size,
 			dma_info_to_prot(dir, false, attrs) | IOMMU_MMIO,
-			iommu_get_dma_domain(dev));
+			iommu_get_dma_domain(dev), dma_get_mask(dev));
 }
 
 static void iommu_dma_unmap_resource(struct device *dev, dma_addr_t handle,
@@ -1246,7 +1247,8 @@ static struct iommu_dma_msi_page *iommu_dma_get_msi_page(struct device *dev,
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
