Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3487C785
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:51:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1X4/joCc6KNkDcOi0VtLru0+xlcTLgzKApYDnlp3mI=; b=JB1Yu6gfVmWBXB
	efElAxJHsvGaqKr1WFTzzoe659F+1JgpZ9nkCbAAx4Ydd7gV4z4VSTC6xXML3p+GRX/2P/M/6SngP
	bj8LYkbQmBT+cH+HyJqERc4cBPfgQ6AaTFE+FhvYMCzSoeg2QczrXp4d9SxMUi/I87lw+zfvDvEt5
	1Pocz4nFlfxfeZyxWipXfCDJTSZqdJFgB2ulULcDwZ5HqMToVIZuklb/0ka2da1rBt9Opq2IXBxFP
	VDRGUJpbKeuacnftNaN9wdTdWwdBI2tyyeqyCl8QEiZmzvEtTSdKFVFiZWaCHna0vYI88ka71rTz+
	aW5ozZe8GxHPYKfZZ7UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqtB-0004nn-2N; Wed, 31 Jul 2019 15:51:41 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqph-0007ai-Fd; Wed, 31 Jul 2019 15:48:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 01F74AFE4;
 Wed, 31 Jul 2019 15:48:04 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: catalin.marinas@arm.com, hch@lst.de, wahrenst@gmx.net,
 marc.zyngier@arm.com, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mm@kvack.org,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH 3/8] of/fdt: add function to get the SoC wide DMA addressable
 memory size
Date: Wed, 31 Jul 2019 17:47:46 +0200
Message-Id: <20190731154752.16557-4-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731154752.16557-1-nsaenzjulienne@suse.de>
References: <20190731154752.16557-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_084805_850422_BBB39BEB 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: phill@raspberryi.org, f.fainelli@gmail.com, linux-kernel@vger.kernel.org,
 eric@anholt.net, mbrugger@suse.com, linux-rpi-kernel@lists.infradead.org,
 akpm@linux-foundation.org, will@kernel.org, nsaenzjulienne@suse.de,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some SoCs might have multiple interconnects each with their own DMA
addressing limitations. This function parses the 'dma-ranges' on each of
them and tries to guess the maximum SoC wide DMA addressable memory
size.

This is specially useful for arch code in order to properly setup CMA
and memory zones.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

 drivers/of/fdt.c       | 72 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/of_fdt.h |  2 ++
 2 files changed, 74 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 9cdf14b9aaab..f2444c61a136 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -953,6 +953,78 @@ int __init early_init_dt_scan_chosen_stdout(void)
 }
 #endif
 
+/**
+ * early_init_dt_dma_zone_size - Look at all 'dma-ranges' and provide the
+ * maximum common dmable memory size.
+ *
+ * Some devices might have multiple interconnects each with their own DMA
+ * addressing limitations. For example the Raspberry Pi 4 has the following:
+ *
+ * soc {
+ *	dma-ranges = <0xc0000000  0x0 0x00000000  0x3c000000>;
+ *	[...]
+ * }
+ *
+ * v3dbus {
+ *	dma-ranges = <0x00000000  0x0 0x00000000  0x3c000000>;
+ *	[...]
+ * }
+ *
+ * scb {
+ *	dma-ranges = <0x0 0x00000000  0x0 0x00000000  0xfc000000>;
+ *	[...]
+ * }
+ *
+ * Here the area addressable by all devices is [0x00000000-0x3bffffff]. Hence
+ * the function will write in 'data' a size of 0x3c000000.
+ *
+ * Note that the implementation assumes all interconnects have the same physical
+ * memory view and that the mapping always start at the beginning of RAM.
+ */
+int __init early_init_dt_dma_zone_size(unsigned long node, const char *uname,
+				       int depth, void *data)
+{
+	const char *type = of_get_flat_dt_prop(node, "device_type", NULL);
+	u64 phys_addr, dma_addr, size;
+	u64 *dma_zone_size = data;
+	int dma_addr_cells;
+	const __be32 *reg;
+	const void *prop;
+	int len;
+
+	if (depth == 0)
+		*dma_zone_size = 0;
+
+	/*
+	 * We avoid pci host controllers as they have their own way of using
+	 * 'dma-ranges'.
+	 */
+	if (type && !strcmp(type, "pci"))
+		return 0;
+
+	reg = of_get_flat_dt_prop(node, "dma-ranges", &len);
+	if (!reg)
+		return 0;
+
+	prop = of_get_flat_dt_prop(node, "#address-cells", NULL);
+	if (prop)
+		dma_addr_cells = be32_to_cpup(prop);
+	else
+		dma_addr_cells = 1; /* arm64's default addr_cell size */
+
+	if (len < (dma_addr_cells + dt_root_addr_cells + dt_root_size_cells))
+		return 0;
+
+	dma_addr = dt_mem_next_cell(dma_addr_cells, &reg);
+	phys_addr = dt_mem_next_cell(dt_root_addr_cells, &reg);
+	size = dt_mem_next_cell(dt_root_size_cells, &reg);
+
+	if (!*dma_zone_size || *dma_zone_size > size)
+		*dma_zone_size = size;
+
+	return 0;
+}
+
 /**
  * early_init_dt_scan_root - fetch the top level address and size cells
  */
diff --git a/include/linux/of_fdt.h b/include/linux/of_fdt.h
index acf820e88952..2ad36b7bd4fa 100644
--- a/include/linux/of_fdt.h
+++ b/include/linux/of_fdt.h
@@ -72,6 +72,8 @@ extern int early_init_dt_reserve_memory_arch(phys_addr_t base, phys_addr_t size,
 					     bool no_map);
 extern u64 dt_mem_next_cell(int s, const __be32 **cellp);
 
+extern int early_init_dt_dma_zone_size(unsigned long node, const char *uname,
+				       int depth, void *data);
 /* Early flat tree scan hooks */
 extern int early_init_dt_scan_root(unsigned long node, const char *uname,
 				   int depth, void *data);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
