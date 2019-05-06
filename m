Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 579BB15400
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 20:53:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4d68tmh9Nd4H+1daqzHRFuIfRpH5c1nnziro32JkDxM=; b=fvHw7K7pmJQtArVBHJWRMDd30E
	svp+iA3P8BHzoPPhUZULF2pVlodYYDcie257DIKGwC7qiYitknTjg34xRnRuozNk1p4SUtzfXlzju
	hUl3NqQ+0+DK4+ElVf+sSIDe9VWRrAlKEFX73TP80VQunCzeryltvuy4Vr6S1YQDE0/rJ5DaSdVi7
	esn80O0vCfR/D0WrTgGjggag5i8QMVeyvy+69dyIW6drtYkBYm1GxfRUdCfLEE7F2ctOSdwtqcZvc
	pBI4LJBR/1jqCnmM8HARJEt6SjqlsI+9YUUCaIcruG2CGB1WLQiey76u7rrF5Sgg+8W/355UoSGEH
	i+07eq0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNik7-0005LG-Rx; Mon, 06 May 2019 18:53:39 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNijW-0004i8-PC
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 18:53:14 +0000
Received: by mail-ed1-x542.google.com with SMTP id e24so16324571edq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 11:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ybQIpJHlWaFs/zU9bGDFvVwxe0GuybJKNVxIUx2IidQ=;
 b=JFf67WwYhFLm0sTPsKCR4MLJ0rPWCvtSCjSSI4/WRj/g9uerAOoO3YHngKXqV5XRDA
 BsbOZnljWpcXPUXX/jdN2xuHesc6zNY0itBP+Fnyyrju3F9JKQ0g/s7Ckwv7CC2oFl1z
 wI0b3z3GIBx6hJ/4s6XRLBTMGNolbKMrJ0Vb3tg01k29lvgmr+SxiJ/TBbe4Qq9DsrKF
 qQiEaIlqgSuvkr/cE/rrrDO7H+Q6t/rD5v/qYXgdM3iw1x5tIh+qOQo1qf2dmaa/9AK4
 IrFWN83fIgwTfxZdeZHp0uHV/tDIwiIQrAP0r7XVNfccsjI2qQbvZKc+B08HsaVF6EPb
 B2BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ybQIpJHlWaFs/zU9bGDFvVwxe0GuybJKNVxIUx2IidQ=;
 b=FZHZhdDTzxkS4azdwK3Y17Q9WisIzyNlWWKMqm+e+vV7ewSbG4MmeZTPv1isKYfz/V
 2a6J6R2iVPtvHYNAE5RlYtPBE3qX6LTbkjMTwfb9uIthaqDeGG6XdSKJyg1Xo0IJzO0g
 zR58RCCu3thsBnb9bGyrPifKopgyWgs+yE3D6v+Vz/5OtBwyjSqc8Qx3XiqmhBP1lbst
 m5tRI7m41roE+xEbtsblPPI8BUP2QqCYPhg1vGJZ+8IzMdAmLeVJ4xyl1ON5LdOr5T0L
 Kqpd3VJjpcQ5TvO+3b7t613rpZxeuBcsNvBA+6T+Lz8FQtiYwp6RYDeshzSewph3yUXj
 dZJg==
X-Gm-Message-State: APjAAAXNdgoQQXG9k3sSsVPNjIN3U/lmj3Nnptaksbv0w/h2sdw8eDUf
 TdPMKMagU9sUg8kOC1mgon7CNg==
X-Google-Smtp-Source: APXvYqy6IgposVXar6I91KdFzVPePJ0WSHgH7cCqvKmX63+rZDsgMJaDXv+5YPJR8LEJQrNd+kLsNA==
X-Received: by 2002:a17:907:1059:: with SMTP id
 oy25mr8017394ejb.118.1557168781318; 
 Mon, 06 May 2019 11:53:01 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:a0:bc00:d9d9:922a:828d:a50e])
 by smtp.gmail.com with ESMTPSA id
 e35sm3361412eda.2.2019.05.06.11.52.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 11:53:00 -0700 (PDT)
From: Tom Murphy <tmurphy@arista.com>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v3 2/4] iommu/dma-iommu: Handle deferred devices
Date: Mon,  6 May 2019 19:52:04 +0100
Message-Id: <20190506185207.31069-3-tmurphy@arista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190506185207.31069-1-tmurphy@arista.com>
References: <20190506185207.31069-1-tmurphy@arista.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_115303_289555_67869020 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
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

Handle devices which defer their attach to the iommu in the dma-iommu api

Signed-off-by: Tom Murphy <tmurphy@arista.com>
---
 drivers/iommu/dma-iommu.c | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 7a96c2c8f56b..b383498e2dc3 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -22,6 +22,7 @@
 #include <linux/pci.h>
 #include <linux/scatterlist.h>
 #include <linux/vmalloc.h>
+#include <linux/crash_dump.h>
 
 struct iommu_dma_msi_page {
 	struct list_head	list;
@@ -322,6 +323,22 @@ static int iommu_dma_init_domain(struct iommu_domain *domain, dma_addr_t base,
 	return iova_reserve_iommu_regions(dev, domain);
 }
 
+static int handle_deferred_device(struct device *dev)
+{
+	struct iommu_domain *domain;
+	const struct iommu_ops *ops;
+
+	if (!is_kdump_kernel())
+		return 0;
+
+	domain = iommu_get_domain_for_dev(dev);
+	ops = domain->ops;
+	if (ops->is_attach_deferred && ops->is_attach_deferred(domain, dev))
+		return iommu_attach_device(domain, dev);
+
+	return 0;
+}
+
 /**
  * dma_info_to_prot - Translate DMA API directions and attributes to IOMMU API
  *                    page flags.
@@ -835,7 +852,10 @@ static dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
 	bool coherent = dev_is_dma_coherent(dev);
 	dma_addr_t dma_handle;
 
-	dma_handle =__iommu_dma_map(dev, phys, size,
+	if (unlikely(handle_deferred_device(dev)))
+		return DMA_MAPPING_ERROR;
+
+	dma_handle = __iommu_dma_map(dev, phys, size,
 			dma_info_to_prot(dir, coherent, attrs),
 			iommu_get_dma_domain(dev));
 	if (!coherent && !(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
@@ -953,6 +973,9 @@ static int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg,
 	unsigned long mask = dma_get_seg_boundary(dev);
 	int i;
 
+	if (unlikely(handle_deferred_device(dev)))
+		return 0;
+
 	if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC))
 		iommu_dma_sync_sg_for_device(dev, sg, nents, dir);
 
@@ -1056,6 +1079,9 @@ static void iommu_dma_unmap_resource(struct device *dev, dma_addr_t handle,
 static void *iommu_dma_alloc(struct device *dev, size_t size,
 		dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
 {
+	if (unlikely(handle_deferred_device(dev)))
+		return NULL;
+
 	gfp |= __GFP_ZERO;
 
 #ifdef CONFIG_DMA_DIRECT_REMAP
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
