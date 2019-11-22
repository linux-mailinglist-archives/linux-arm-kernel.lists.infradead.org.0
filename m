Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C40106C9A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:54:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C8KjFo/gJwxu6Of1P/uOySUXnyBQKCGuuGNx49wuQEg=; b=boTumS3w65vwbd
	I3Yv2ft/DLBXKH4Iwai/MwzT22MxqI0Yji1uVcsoVs5rtLKe+mrRyVjWUZCTe+SjH/dmtwWVnc5nw
	hXS1Fhj6rBNchRaY+rxnIAYmN/z0Vr4M9IOQ7XQkKhRdyjTLAKmDmVuOO4xrd+9Yu4XoRVqlRTEgh
	WJt1n4yP85NtIu9y1s2FWDi/xh+qHHXvrTpejX6jjp9qOl2HIk/s4Qb4+P0MH3rejlrNdmQCwpaE6
	BT4wEQU9SxxOwtb0zhfj5Cwp7FBf+MUsndxSbOx1q3RZjogmej/q0ibC8idkgatzb0Y8R5bt1yGWa
	/SnSWqhmpJn9Dc7yXx/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6aW-00009Q-Bv; Fri, 22 Nov 2019 10:54:56 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6Wh-00056R-Rx
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:51:02 +0000
Received: by mail-wr1-x442.google.com with SMTP id s5so8071458wrw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 02:50:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qRDncnEv4s95CgSa1yvYrULV0iuYi2jZhVWKJTRAVu0=;
 b=YNEi/CQbRXtkAwf0pPEyl5prqRn8u5HZ5xYtYrRJWWkt3EHX92cjZa+ZJIy6EgzQMY
 JomcQEQZ9aHxpyPv5xUr8gzpIvqxnMSJDzlZzKuglBou7QBJ8izCjPyAp5gagAMgiSTy
 8/Tp82wscT0Sev3YneHxCoFu66z2uQW1GImKYPrOPHwBJ+eCbINzD7/G0fD3TYBod7yi
 cXSfkjUy19kRIUpzuBATTRkMQ1lFky+4zyrQkjA9B+Fb+7/32I9fa7POnzm7YS7U86Ce
 NYiXSZoHwEnBnTVK2qCqhRV3tiLJKL/mgFahWAwg2v9n6ttfmUegZHJDqNkVa8wtqyzH
 PvgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qRDncnEv4s95CgSa1yvYrULV0iuYi2jZhVWKJTRAVu0=;
 b=PY1Nbt2yWk5Pq4CX7CR6HY3YIgpNjyrmDXFqR8TLNErwMdjWwmH1rpSBcr562izanm
 uGfyjAf2/I0YCTO4mWtJsAfULK+TQqSDkDutt7HUqCqq+WU1/fW8JxBYPuvnfV3by8bH
 A8Bju+LW8LnfsdPwch8XKbOkINraN4cvIbtXWbBKAC38dJC4dS6EOrkWKzlMNQBQ6hRL
 f0sLXjCerjzyBQJLxU7t9fWIgNqpG+oPFP2O4GxHVSPOfwbuxSsbAOrb/ADK4BNCkldy
 JGeOKOzsdCwjQXuPlltdOhfYYoBOS5WTz5ZuD5R8UJvwYezzLcP2Ifv7Fvge8vH8WUhV
 KTZQ==
X-Gm-Message-State: APjAAAWzRmdk4ZwEXsr80SlV8h6IfXxJNlA/UpWJfSU9cRHFYRIgu0rq
 MWBYgKPlLiAqwBQnOzBepVkV3w==
X-Google-Smtp-Source: APXvYqzXiSDh39VIufdE8cTUkRB2hfptRNr1/jdFpr07MvIngTSRR794NgxmfjDCLcPXZDKMLSVPnQ==
X-Received: by 2002:a5d:49c4:: with SMTP id t4mr10152262wrs.226.1574419857729; 
 Fri, 22 Nov 2019 02:50:57 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-204-106.adslplus.ch.
 [188.155.204.106])
 by smtp.gmail.com with ESMTPSA id o133sm2088197wmb.4.2019.11.22.02.50.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 02:50:57 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org,
 virtualization@lists.linux-foundation.org, linux-pci@vger.kernel.org,
 virtio-dev@lists.oasis-open.org
Subject: [RFC 05/13] ACPI/IORT: Support VIOT virtio-mmio node
Date: Fri, 22 Nov 2019 11:49:52 +0100
Message-Id: <20191122105000.800410-6-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191122105000.800410-1-jean-philippe@linaro.org>
References: <20191122105000.800410-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_025100_108903_D4E15DF3 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kevin.tian@intel.com, lorenzo.pieralisi@arm.com, mst@redhat.com,
 gregkh@linuxfoundation.org, joro@8bytes.org, sudeep.holla@arm.com,
 rjw@rjwysocki.net, eric.auger@redhat.com, sebastien.boeuf@intel.com,
 jacob.jun.pan@intel.com, guohanjun@huawei.com, bhelgaas@google.com,
 jasowang@redhat.com, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a new type of node to the IORT driver, that describes a virtio-iommu
device based on the virtio-mmio transport. The node is only available
when the IORT is a sub-table of the VIOT.

Signed-off-by: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
---
 drivers/acpi/iort.c | 66 ++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 62 insertions(+), 4 deletions(-)

diff --git a/drivers/acpi/iort.c b/drivers/acpi/iort.c
index 1d43fbc0001f..adc5953fffa5 100644
--- a/drivers/acpi/iort.c
+++ b/drivers/acpi/iort.c
@@ -43,7 +43,8 @@ static bool iort_type_matches(u8 type, enum iort_node_category category)
 	switch (category) {
 	case IORT_IOMMU_TYPE:
 		return type == ACPI_IORT_NODE_SMMU ||
-		       type == ACPI_IORT_NODE_SMMU_V3;
+		       type == ACPI_IORT_NODE_SMMU_V3 ||
+		       type == ACPI_VIOT_IORT_NODE_VIRTIO_MMIO_IOMMU;
 	case IORT_MSI_TYPE:
 		return type == ACPI_IORT_NODE_ITS_GROUP;
 	default:
@@ -868,8 +869,10 @@ static inline bool iort_iommu_driver_enabled(u8 type)
 		return IS_BUILTIN(CONFIG_ARM_SMMU_V3);
 	case ACPI_IORT_NODE_SMMU:
 		return IS_BUILTIN(CONFIG_ARM_SMMU);
+	case ACPI_VIOT_IORT_NODE_VIRTIO_MMIO_IOMMU:
+		return IS_ENABLED(CONFIG_VIRTIO_IOMMU);
 	default:
-		pr_warn("IORT node type %u does not describe an SMMU\n", type);
+		pr_warn("IORT node type %u does not describe an IOMMU\n", type);
 		return false;
 	}
 }
@@ -1408,6 +1411,46 @@ static int __init arm_smmu_v3_pmcg_add_platdata(struct platform_device *pdev)
 	return platform_device_add_data(pdev, &model, sizeof(model));
 }
 
+static int __init viommu_mmio_count_resources(struct acpi_iort_node *node)
+{
+	/* Mem + IRQ */
+	return 2;
+}
+
+static void __init viommu_mmio_init_resources(struct resource *res,
+					   struct acpi_iort_node *node)
+{
+	int hw_irq, trigger;
+	struct acpi_viot_iort_virtio_mmio_iommu *viommu;
+
+	viommu = (struct acpi_viot_iort_virtio_mmio_iommu *)node->node_data;
+
+	res[0].start = viommu->base_address;
+	res[0].end = viommu->base_address + viommu->span - 1;
+	res[0].flags = IORESOURCE_MEM;
+
+	hw_irq = IORT_IRQ_MASK(viommu->interrupt);
+	trigger = IORT_IRQ_TRIGGER_MASK(viommu->interrupt);
+	acpi_iort_register_irq(hw_irq, "viommu", trigger, res + 1);
+}
+
+static void __init viommu_mmio_dma_configure(struct device *dev,
+					  struct acpi_iort_node *node)
+{
+	enum dev_dma_attr attr;
+	struct acpi_viot_iort_virtio_mmio_iommu *viommu;
+
+	viommu = (struct acpi_viot_iort_virtio_mmio_iommu *)node->node_data;
+
+	attr = (viommu->flags & ACPI_VIOT_IORT_VIRTIO_MMIO_IOMMU_CACHE_COHERENT) ?
+		DEV_DMA_COHERENT : DEV_DMA_NON_COHERENT;
+
+	dev->dma_mask = &dev->coherent_dma_mask;
+
+	/* Configure DMA for the page table walker */
+	acpi_dma_configure(dev, attr);
+}
+
 struct iort_dev_config {
 	const char *name;
 	int (*dev_init)(struct acpi_iort_node *node);
@@ -1443,6 +1486,14 @@ static const struct iort_dev_config iort_arm_smmu_v3_pmcg_cfg __initconst = {
 	.dev_add_platdata = arm_smmu_v3_pmcg_add_platdata,
 };
 
+static const struct iort_dev_config iort_viommu_mmio_cfg __initconst = {
+	/* Probe with the generic virtio-mmio driver */
+	.name = "virtio-mmio",
+	.dev_dma_configure = viommu_mmio_dma_configure,
+	.dev_count_resources = viommu_mmio_count_resources,
+	.dev_init_resources = viommu_mmio_init_resources,
+};
+
 static __init const struct iort_dev_config *iort_get_dev_cfg(
 			struct acpi_iort_node *node)
 {
@@ -1453,9 +1504,16 @@ static __init const struct iort_dev_config *iort_get_dev_cfg(
 		return &iort_arm_smmu_cfg;
 	case ACPI_IORT_NODE_PMCG:
 		return &iort_arm_smmu_v3_pmcg_cfg;
-	default:
-		return NULL;
 	}
+
+	if (iort_table_source == IORT_SOURCE_VIOT) {
+		switch (node->type) {
+		case ACPI_VIOT_IORT_NODE_VIRTIO_MMIO_IOMMU:
+			return &iort_viommu_mmio_cfg;
+		}
+	}
+
+	return NULL;
 }
 
 /**
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
