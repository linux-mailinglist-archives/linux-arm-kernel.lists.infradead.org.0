Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C941AD016
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Sep 2019 18:58:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IN82Ec+DlIPfc2Vky13c6wbvdgGOY1ppOCt3PrPl8Z8=; b=c9YtLOYkBA5Uk1
	znLY3+816+Rp3ui0G3lXTU/rfAf9/cr/4VZa362nOo1ONz3HXnVadBACWPmZwzwU0uO2QzQEzFc6h
	GQKGdqrkhEqIF4EiUW8JTnww+EmiQ4u8LZvS8e6PkInG/yLmmQzD3iWwweNwB73MWs/pGRwzMvgKP
	/drVQ9Rr+4fKuHrbxpBHC2HOYNYnn3OrUS7HmLBf+JIrgY1keP5TOffWC6zmogfn3YVgWrSa6D6ni
	7XuVVdNmBGVfq1zAkHeYw3upCLhjQX3gn61dlQEEaL4SZb9/VNGui+69JV8iafW83IJy7tbVmzc3q
	dHRJUxoSMZy7KZDX9Gbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i70WB-0001UA-MY; Sun, 08 Sep 2019 16:58:27 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i70Us-0006G0-Qh
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Sep 2019 16:57:11 +0000
Received: by mail-pl1-x642.google.com with SMTP id k1so5453961pls.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 08 Sep 2019 09:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2k166qQLdaC2SRzvjISKU2JzkbWYFtRfKLEqNuRRq4w=;
 b=kAYPj6K2IJuyTOY+kT86j3hQitRbWXFgFsW9w6/gO7/hMZYRqd/bloOMw2F/lpChzP
 YvS1FpjnQ7WTZUiBKhuwWrRNnhQ8+5lFNUeTrpOLhVw7L7emTGKP65A5/4d4DshhF6au
 m7xSmJ25Y+qDsyVQuM0RXIEYAk3+m7heaUfNvVtMeW0heVmK7Lo4sAzjl9mxtDc+TQCx
 vMDToxbJN+l9TDZ1Z1i+XMUNrwx8bsvSr4YD91AaITgGE5SbvpPUfFGTuXqiMs9QBiet
 ZsEuPlUVzvy2zeiU5k/aHd48vhmQxNpo54Qn4oZdmEWb65EcV5U8BMpf1Rai2YzioDg6
 wXog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2k166qQLdaC2SRzvjISKU2JzkbWYFtRfKLEqNuRRq4w=;
 b=kMium6AffJhfP8qXG6ro7REOiNwRqbSTtxtlPhNtQze6Ccxqu3YPCTTm/3vIJQihiu
 X9Izi+bkXIWY2jfBIxk45wr7BH4rl5WkGq4tmbv5ZXftLyUIiBcI3mDAZXpW6knlJv9b
 ryCc9aX3s5ezofWzQofDugp2lPNVBCaZeqDpklzdxmyUo3Y1mzz1s/wn4QfY7OLKACQG
 +c+Y+NCnI5Q3262UQRlNGF5bdPwlXkqwydP6JCe4I8Q01qG5vhfwGQnj9ILeLuMKLT+Y
 ItEqpGBTs9yOu5AeLQOvYnO3Hv2zOxNP6H31onkM7Iv1aRfiDc757fKU6GaOsgQjn/3A
 roXg==
X-Gm-Message-State: APjAAAXWZUS6MRUcXmLbsTDDUcyyVtU+mXMsayMzDJt6Zezve1Ui6Kdk
 +Hqkom/cWmbeYIZCOoPq/d0E1A==
X-Google-Smtp-Source: APXvYqyyDdzrixHMRhxuF70UStjT1CSPQlQ1OcGvtHHzm4UnowYHpa/hlXLtO0d2Ac6mRvc2hcMUcQ==
X-Received: by 2002:a17:902:d201:: with SMTP id
 t1mr6220783ply.278.1567961825902; 
 Sun, 08 Sep 2019 09:57:05 -0700 (PDT)
Received: from localhost.localdomain ([24.244.23.109])
 by smtp.googlemail.com with ESMTPSA id
 f188sm13834631pfa.170.2019.09.08.09.57.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Sep 2019 09:57:05 -0700 (PDT)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Subject: [PATCH V6 3/5] iommu/dma-iommu: Handle deferred devices
Date: Sun,  8 Sep 2019 09:56:39 -0700
Message-Id: <20190908165642.22253-4-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190908165642.22253-1-murphyt7@tcd.ie>
References: <20190908165642.22253-1-murphyt7@tcd.ie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_095706_911223_D3AA983E 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>, virtualization@lists.linux-foundation.org,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Will Deacon <will@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>, linux-s390@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, David Woodhouse <dwmw2@infradead.org>,
 linux-kernel@vger.kernel.org, Tom Murphy <murphyt7@tcd.ie>,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Handle devices which defer their attach to the iommu in the dma-iommu api

Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/dma-iommu.c | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 2712fbc68b28..bd09b6b31c4e 100644
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
 
+static int iommu_dma_deferred_attach(struct device *dev,
+		struct iommu_domain *domain)
+{
+	const struct iommu_ops *ops = domain->ops;
+
+	if (!is_kdump_kernel())
+		return 0;
+
+	if (unlikely(ops->is_attach_deferred &&
+			ops->is_attach_deferred(domain, dev)))
+		return iommu_attach_device(domain, dev);
+
+	return 0;
+}
+
 /**
  * dma_info_to_prot - Translate DMA API directions and attributes to IOMMU API
  *                    page flags.
@@ -463,6 +479,9 @@ static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
 	size_t iova_off = iova_offset(iovad, phys);
 	dma_addr_t iova;
 
+	if (unlikely(iommu_dma_deferred_attach(dev, domain)))
+		return DMA_MAPPING_ERROR;
+
 	size = iova_align(iovad, size + iova_off);
 
 	iova = iommu_dma_alloc_iova(domain, size, dma_get_mask(dev), dev);
@@ -581,6 +600,9 @@ static void *iommu_dma_alloc_remap(struct device *dev, size_t size,
 
 	*dma_handle = DMA_MAPPING_ERROR;
 
+	if (unlikely(iommu_dma_deferred_attach(dev, domain)))
+		return NULL;
+
 	min_size = alloc_sizes & -alloc_sizes;
 	if (min_size < PAGE_SIZE) {
 		min_size = PAGE_SIZE;
@@ -713,7 +735,7 @@ static dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
 	int prot = dma_info_to_prot(dir, coherent, attrs);
 	dma_addr_t dma_handle;
 
-	dma_handle =__iommu_dma_map(dev, phys, size, prot);
+	dma_handle = __iommu_dma_map(dev, phys, size, prot);
 	if (!coherent && !(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
 	    dma_handle != DMA_MAPPING_ERROR)
 		arch_sync_dma_for_device(dev, phys, size, dir);
@@ -823,6 +845,9 @@ static int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg,
 	unsigned long mask = dma_get_seg_boundary(dev);
 	int i;
 
+	if (unlikely(iommu_dma_deferred_attach(dev, domain)))
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
