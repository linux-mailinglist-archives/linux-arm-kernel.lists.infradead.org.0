Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94ABB1FC07B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 22:58:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kI54ON3MLRhG+G8olzluiUEkgDphfK0IcGXh6xul2OY=; b=seCTKW6Zqm7Nlx/JAg1BXxTF/q
	q7M90WD4j+EYkehEwyF2dIQV5dF0bGSVX7aMnMVnpb3Zyof4gZszK7BvmPwdDVBUnhriUhzc/IjKB
	9Ot4rF4GX8IQUKUM8XEPhnSr5VceCuh9P/t1vouFi6TWCqzVyEGjR6D+4DqtqKSs/xbiOqiSlivV/
	1ovbIb19fJFpLKJh7EAwXwU7Ect1pg7s7iCoslyZvWQKtjM2zw0xpwZwPmCp/89QzbFQl9V+tr0Aq
	WJz3vMOUbXQsnxOaw7XUoWNsxLNHtFLcBWwJ50xqWBR96iKPyYtZgKTGHT36F9XFOJGrYulU226kA
	UNXdbfxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlIee-0003s3-BZ; Tue, 16 Jun 2020 20:58:00 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlIcz-0002co-UW; Tue, 16 Jun 2020 20:56:25 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 0D81030D887;
 Tue, 16 Jun 2020 13:56:16 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 0D81030D887
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1592340976;
 bh=6PoDpzaO2MmhT4GEwMCs2XqdMmfj99225wAtpStBliQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ScdqCfBi2E0XYAaMr4aZSVFVDY4j/OOb2IQFRDgPqavLV/cJJsm+qzse1oF/rp5AQ
 /qisSou8k9HIMTaHEvkwooCo1jJW0Nzr5Oe3EZCcualSZL1K2WlHshBIq6fA6VFbuB
 4xVVO6EDbPh8258xhI5LWBrQV8FUFRzFbR33DZ+E=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id 87C7B140069;
 Tue, 16 Jun 2020 13:56:14 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, james.quinlan@broadcom.com
Subject: [PATCH v5 09/12] PCI: brcmstb: Set internal memory viewport sizes
Date: Tue, 16 Jun 2020 16:55:16 -0400
Message-Id: <20200616205533.3513-10-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200616205533.3513-1-james.quinlan@broadcom.com>
References: <20200616205533.3513-1-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_135618_124109_00794290 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

BrcmSTB PCIe controllers are intimately connected to the memory
controller(s) on the SOC.  There is a "viewport" for each memory controller
that allows inbound accesses to CPU memory.  Each viewport's size must be
set to a power of two, and that size must be equal to or larger than the
amount of memory each controller supports.

Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
Acked-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/pci/controller/pcie-brcmstb.c | 68 ++++++++++++++++++++-------
 1 file changed, 50 insertions(+), 18 deletions(-)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 9189406fd35c..39f77709c6a2 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -57,6 +57,8 @@
 #define  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_MASK	0x300000
 #define  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_128		0x0
 #define  PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK		0xf8000000
+#define  PCIE_MISC_MISC_CTRL_SCB1_SIZE_MASK		0x07c00000
+#define  PCIE_MISC_MISC_CTRL_SCB2_SIZE_MASK		0x0000001f
 
 #define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO		0x400c
 #define PCIE_MEM_WIN0_LO(win)	\
@@ -154,6 +156,7 @@
 #define SSC_STATUS_OFFSET		0x1
 #define SSC_STATUS_SSC_MASK		0x400
 #define SSC_STATUS_PLL_LOCK_MASK	0x800
+#define PCIE_BRCM_MAX_MEMC		3
 
 #define IDX_ADDR(pcie)			(pcie->reg_offsets[EXT_CFG_INDEX])
 #define DATA_ADDR(pcie)			(pcie->reg_offsets[EXT_CFG_DATA])
@@ -260,6 +263,8 @@ struct brcm_pcie {
 	const int		*reg_field_info;
 	enum pcie_type		type;
 	struct reset_control	*rescal;
+	int			num_memc;
+	u64			memc_size[PCIE_BRCM_MAX_MEMC];
 };
 
 /*
@@ -715,22 +720,44 @@ static inline int brcm_pcie_get_rc_bar2_size_and_offset(struct brcm_pcie *pcie,
 							u64 *rc_bar2_offset)
 {
 	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);
-	struct device *dev = pcie->dev;
 	struct resource_entry *entry;
+	struct device *dev = pcie->dev;
+	u64 lowest_pcie_addr = ~(u64)0;
+	int ret, i = 0;
+	u64 size = 0;
 
-	entry = resource_list_first_type(&bridge->dma_ranges, IORESOURCE_MEM);
-	if (!entry)
-		return -ENODEV;
+	resource_list_for_each_entry(entry, &bridge->dma_ranges) {
+		u64 pcie_beg = entry->res->start - entry->offset;
 
+		size += entry->res->end - entry->res->start + 1;
+		if (pcie_beg < lowest_pcie_addr)
+			lowest_pcie_addr = pcie_beg;
+	}
 
-	/*
-	 * The controller expects the inbound window offset to be calculated as
-	 * the difference between PCIe's address space and CPU's. The offset
-	 * provided by the firmware is calculated the opposite way, so we
-	 * negate it.
-	 */
-	*rc_bar2_offset = -entry->offset;
-	*rc_bar2_size = 1ULL << fls64(entry->res->end - entry->res->start);
+	if (lowest_pcie_addr == ~(u64)0) {
+		dev_err(dev, "DT node has no dma-ranges\n");
+		return -EINVAL;
+	}
+
+	ret = of_property_read_variable_u64_array(pcie->np, "brcm,scb-sizes", pcie->memc_size, 1,
+						  PCIE_BRCM_MAX_MEMC);
+
+	if (ret <= 0) {
+		/* Make an educated guess */
+		pcie->num_memc = 1;
+		pcie->memc_size[0] = 1 << fls64(size - 1);
+	} else {
+		pcie->num_memc = ret;
+	}
+
+	/* Each memc is viewed through a "port" that is a power of 2 */
+	for (i = 0, size = 0; i < pcie->num_memc; i++)
+		size += pcie->memc_size[i];
+
+	/* System memory starts at this address in PCIe-space */
+	*rc_bar2_offset = lowest_pcie_addr;
+	/* The sum of all memc views must also be a power of 2 */
+	*rc_bar2_size = 1ULL << fls64(size - 1);
 
 	/*
 	 * We validate the inbound memory view even though we should trust
@@ -782,12 +809,11 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
 	void __iomem *base = pcie->base;
 	struct device *dev = pcie->dev;
 	struct resource_entry *entry;
-	unsigned int scb_size_val;
 	bool ssc_good = false;
 	struct resource *res;
 	int num_out_wins = 0;
 	u16 nlw, cls, lnksta;
-	int i, ret;
+	int i, ret, memc;
 	u32 tmp, aspm_support;
 
 	/* Reset the bridge */
@@ -824,11 +850,17 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
 	writel(upper_32_bits(rc_bar2_offset),
 	       base + PCIE_MISC_RC_BAR2_CONFIG_HI);
 
-	scb_size_val = rc_bar2_size ?
-		       ilog2(rc_bar2_size) - 15 : 0xf; /* 0xf is 1GB */
 	tmp = readl(base + PCIE_MISC_MISC_CTRL);
-	u32p_replace_bits(&tmp, scb_size_val,
-			  PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK);
+	for (memc = 0; memc < pcie->num_memc; memc++) {
+		u32 scb_size_val = ilog2(pcie->memc_size[memc]) - 15;
+
+		if (memc == 0)
+			u32p_replace_bits(&tmp, scb_size_val, PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK);
+		else if (memc == 1)
+			u32p_replace_bits(&tmp, scb_size_val, PCIE_MISC_MISC_CTRL_SCB1_SIZE_MASK);
+		else if (memc == 2)
+			u32p_replace_bits(&tmp, scb_size_val, PCIE_MISC_MISC_CTRL_SCB2_SIZE_MASK);
+	}
 	writel(tmp, base + PCIE_MISC_MISC_CTRL);
 
 	/*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
