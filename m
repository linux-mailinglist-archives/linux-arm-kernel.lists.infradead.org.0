Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9921360805
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AN/orfqTnezzSLrmHPlyCrN7uqp2N2q4jyC4QDvTxf8=; b=gdAozXh5jL/Sm0dg0BhmgasK+W
	GxSS4Zi82mzOI2zoI74u2MY/FgQ+SqtNQLgDHNlu6ZGBsPBoAFTMkCFEwjLQgkBRRUqDutjVk3eT9
	E5vS9AF+ulxLPIpAJe9nSQ012A4KY86kjogyBaVVxpGqSZQAUL994Uf29xmn+mRIg/tUaUaiLxh/7
	dWLcEU1dig9D9AgT05d2h0AFKh2qRMdgdLThA4RWKcP6IWXk4UkY1mkGWaWkQbtMtgyR+vwHqgV2o
	b3PvlJTZT8zPpsgPzqMX4qg0/DIJ/8LCaexaKmfe/UcP5Nm8M0JLjWFkRxb8kAlOjxDlTuuvgFXT1
	qQuq9TOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPMx-0000ll-Uv; Fri, 05 Jul 2019 14:39:23 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPKC-0006Hz-Sf
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:36:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AeSx/o/wICdH/WeidM648iZnP7ppMXbuNTcYezPe+4Q=; b=Fv5FZtm4exMxSn0kwZp+pDey/
 OkB9tVCB4/SzR8LdY4WM3GwlFeW59vT7K/e0OA7LpKNgJK/Lb60bsht5/dgzbV2AWQnfdxLMzB60L
 xITXLVxRMCyNwe2lHZ2YvwyiJF/weIc2Db/N26mZ0KP8IBZaCH7YxPOfuOwtbB1/imGYLrCaI0JiF
 ZBNkoA25ZsbB9XURSSzHnMpbPJyepDaoUFipX2iKZbFUomYr4dRuJLnvrW+eBdxru3luYVYiO0Rlf
 uSwLPPU5KVJt+wQhWhjDdBxhb725Bd/a0OomUdq6ekeX+rLvXxNZwjCjjnvmoWREDKqyvYGSbHxDQ
 /GBAeXB5w==;
Received: from inva020.nxp.com ([92.121.34.13])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL7x-00022x-Pl
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:07:40 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5653B1A077A;
 Fri,  5 Jul 2019 12:07:24 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 912B01A0EB2;
 Fri,  5 Jul 2019 12:07:15 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id E46C54032D;
 Fri,  5 Jul 2019 18:07:04 +0800 (SGT)
From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 l.subrahmanya@mobiveil.co.in, shawnguo@kernel.org, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv6 13/28] PCI: mobiveil: Reformat the code for readability
Date: Fri,  5 Jul 2019 17:56:41 +0800
Message-Id: <20190705095656.19191-14-Zhiqiang.Hou@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
References: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_110737_906724_2B589251 
X-CRM114-Status: GOOD (  17.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Minghuan.Lian@nxp.com, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Xiaowei.Bao@nxp.com, Mingkai.Hu@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reformat the code to make it more readable. No functional
change intended.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
---
V6:
 - Splited from #2 of v5 patches, no functional change.

 drivers/pci/controller/pcie-mobiveil.c |  208 ++++++++++++++++---------------
 1 files changed, 107 insertions(+), 101 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index c9bf565..0767f19 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -31,38 +31,40 @@
  * translation tables are grouped into windows, each window registers are
  * grouped into blocks of 4 or 16 registers each
  */
-#define PAB_REG_BLOCK_SIZE	16
-#define PAB_EXT_REG_BLOCK_SIZE	4
+#define PAB_REG_BLOCK_SIZE		16
+#define PAB_EXT_REG_BLOCK_SIZE		4
 
-#define PAB_REG_ADDR(offset, win) (offset + (win * PAB_REG_BLOCK_SIZE))
-#define PAB_EXT_REG_ADDR(offset, win) (offset + (win * PAB_EXT_REG_BLOCK_SIZE))
+#define PAB_REG_ADDR(offset, win)	\
+	(offset + (win * PAB_REG_BLOCK_SIZE))
+#define PAB_EXT_REG_ADDR(offset, win)	\
+	(offset + (win * PAB_EXT_REG_BLOCK_SIZE))
 
-#define LTSSM_STATUS		0x0404
-#define  LTSSM_STATUS_L0_MASK	0x3f
-#define  LTSSM_STATUS_L0	0x2d
+#define LTSSM_STATUS			0x0404
+#define  LTSSM_STATUS_L0_MASK		0x3f
+#define  LTSSM_STATUS_L0		0x2d
 
-#define PAB_CTRL		0x0808
-#define  AMBA_PIO_ENABLE_SHIFT	0
-#define  PEX_PIO_ENABLE_SHIFT	1
-#define  PAGE_SEL_SHIFT	13
-#define  PAGE_SEL_MASK		0x3f
-#define  PAGE_LO_MASK		0x3ff
-#define  PAGE_SEL_OFFSET_SHIFT	10
+#define PAB_CTRL			0x0808
+#define  AMBA_PIO_ENABLE_SHIFT		0
+#define  PEX_PIO_ENABLE_SHIFT		1
+#define  PAGE_SEL_SHIFT			13
+#define  PAGE_SEL_MASK			0x3f
+#define  PAGE_LO_MASK			0x3ff
+#define  PAGE_SEL_OFFSET_SHIFT		10
 
-#define PAB_AXI_PIO_CTRL	0x0840
-#define  APIO_EN_MASK		0xf
+#define PAB_AXI_PIO_CTRL		0x0840
+#define  APIO_EN_MASK			0xf
 
-#define PAB_PEX_PIO_CTRL	0x08c0
-#define  PIO_ENABLE_SHIFT	0
+#define PAB_PEX_PIO_CTRL		0x08c0
+#define  PIO_ENABLE_SHIFT		0
 
 #define PAB_INTP_AMBA_MISC_ENB		0x0b0c
-#define PAB_INTP_AMBA_MISC_STAT	0x0b1c
+#define PAB_INTP_AMBA_MISC_STAT		0x0b1c
 #define  PAB_INTP_INTX_MASK		0x01e0
 #define  PAB_INTP_MSI_MASK		0x8
 
-#define PAB_AXI_AMAP_CTRL(win)	PAB_REG_ADDR(0x0ba0, win)
-#define  WIN_ENABLE_SHIFT	0
-#define  WIN_TYPE_SHIFT	1
+#define PAB_AXI_AMAP_CTRL(win)		PAB_REG_ADDR(0x0ba0, win)
+#define  WIN_ENABLE_SHIFT		0
+#define  WIN_TYPE_SHIFT			1
 
 #define PAB_EXT_AXI_AMAP_SIZE(win)	PAB_EXT_REG_ADDR(0xbaf0, win)
 
@@ -70,16 +72,16 @@
 #define  AXI_WINDOW_ALIGN_MASK		3
 
 #define PAB_AXI_AMAP_PEX_WIN_L(win)	PAB_REG_ADDR(0x0ba8, win)
-#define  PAB_BUS_SHIFT		24
-#define  PAB_DEVICE_SHIFT	19
-#define  PAB_FUNCTION_SHIFT	16
+#define  PAB_BUS_SHIFT			24
+#define  PAB_DEVICE_SHIFT		19
+#define  PAB_FUNCTION_SHIFT		16
 
 #define PAB_AXI_AMAP_PEX_WIN_H(win)	PAB_REG_ADDR(0x0bac, win)
 #define PAB_INTP_AXI_PIO_CLASS		0x474
 
-#define PAB_PEX_AMAP_CTRL(win)	PAB_REG_ADDR(0x4ba0, win)
-#define  AMAP_CTRL_EN_SHIFT	0
-#define  AMAP_CTRL_TYPE_SHIFT	1
+#define PAB_PEX_AMAP_CTRL(win)		PAB_REG_ADDR(0x4ba0, win)
+#define  AMAP_CTRL_EN_SHIFT		0
+#define  AMAP_CTRL_TYPE_SHIFT		1
 
 #define PAB_EXT_PEX_AMAP_SIZEN(win)	PAB_EXT_REG_ADDR(0xbef0, win)
 #define PAB_PEX_AMAP_AXI_WIN(win)	PAB_REG_ADDR(0x4ba4, win)
@@ -87,39 +89,39 @@
 #define PAB_PEX_AMAP_PEX_WIN_H(win)	PAB_REG_ADDR(0x4bac, win)
 
 /* starting offset of INTX bits in status register */
-#define PAB_INTX_START	5
+#define PAB_INTX_START			5
 
 /* supported number of MSI interrupts */
-#define PCI_NUM_MSI	16
+#define PCI_NUM_MSI			16
 
 /* MSI registers */
-#define MSI_BASE_LO_OFFSET	0x04
-#define MSI_BASE_HI_OFFSET	0x08
-#define MSI_SIZE_OFFSET	0x0c
-#define MSI_ENABLE_OFFSET	0x14
-#define MSI_STATUS_OFFSET	0x18
-#define MSI_DATA_OFFSET	0x20
-#define MSI_ADDR_L_OFFSET	0x24
-#define MSI_ADDR_H_OFFSET	0x28
+#define MSI_BASE_LO_OFFSET		0x04
+#define MSI_BASE_HI_OFFSET		0x08
+#define MSI_SIZE_OFFSET			0x0c
+#define MSI_ENABLE_OFFSET		0x14
+#define MSI_STATUS_OFFSET		0x18
+#define MSI_DATA_OFFSET			0x20
+#define MSI_ADDR_L_OFFSET		0x24
+#define MSI_ADDR_H_OFFSET		0x28
 
 /* outbound and inbound window definitions */
-#define WIN_NUM_0		0
-#define WIN_NUM_1		1
-#define CFG_WINDOW_TYPE	0
-#define IO_WINDOW_TYPE		1
-#define MEM_WINDOW_TYPE	2
-#define IB_WIN_SIZE		((u64)256 * 1024 * 1024 * 1024)
-#define MAX_PIO_WINDOWS	8
+#define WIN_NUM_0			0
+#define WIN_NUM_1			1
+#define CFG_WINDOW_TYPE			0
+#define IO_WINDOW_TYPE			1
+#define MEM_WINDOW_TYPE			2
+#define IB_WIN_SIZE			((u64)256 * 1024 * 1024 * 1024)
+#define MAX_PIO_WINDOWS			8
 
 /* Parameters for the waiting for link up routine */
-#define LINK_WAIT_MAX_RETRIES	10
-#define LINK_WAIT_MIN	90000
-#define LINK_WAIT_MAX	100000
+#define LINK_WAIT_MAX_RETRIES		10
+#define LINK_WAIT_MIN			90000
+#define LINK_WAIT_MAX			100000
 
-#define PAGED_ADDR_BNDRY			0xc00
-#define OFFSET_TO_PAGE_ADDR(off)		\
+#define PAGED_ADDR_BNDRY		0xc00
+#define OFFSET_TO_PAGE_ADDR(off)	\
 	((off & PAGE_LO_MASK) | PAGED_ADDR_BNDRY)
-#define OFFSET_TO_PAGE_IDX(off)			\
+#define OFFSET_TO_PAGE_IDX(off)		\
 	((off >> PAGE_SEL_OFFSET_SHIFT) & PAGE_SEL_MASK)
 
 struct mobiveil_msi {			/* MSI information */
@@ -294,17 +296,16 @@ static bool mobiveil_pcie_valid_device(struct pci_bus *bus, unsigned int devfn)
  * root port or endpoint
  */
 static void __iomem *mobiveil_pcie_map_bus(struct pci_bus *bus,
-					unsigned int devfn, int where)
+					   unsigned int devfn, int where)
 {
 	struct mobiveil_pcie *pcie = bus->sysdata;
 
 	if (!mobiveil_pcie_valid_device(bus, devfn))
 		return NULL;
 
-	if (bus->number == pcie->root_bus_nr) {
-		/* RC config access */
+	/* RC config access */
+	if (bus->number == pcie->root_bus_nr)
 		return pcie->csr_axi_slave_base + where;
-	}
 
 	/*
 	 * EP config access (in Config/APIO space)
@@ -313,9 +314,9 @@ static bool mobiveil_pcie_valid_device(struct pci_bus *bus, unsigned int devfn)
 	 * Relies on pci_lock serialization
 	 */
 	csr_writel(pcie, bus->number << PAB_BUS_SHIFT |
-			PCI_SLOT(devfn) << PAB_DEVICE_SHIFT |
-			PCI_FUNC(devfn) << PAB_FUNCTION_SHIFT,
-			PAB_AXI_AMAP_PEX_WIN_L(WIN_NUM_0));
+		   PCI_SLOT(devfn) << PAB_DEVICE_SHIFT |
+		   PCI_FUNC(devfn) << PAB_FUNCTION_SHIFT,
+		   PAB_AXI_AMAP_PEX_WIN_L(WIN_NUM_0));
 	return pcie->config_axi_slave_base + where;
 }
 
@@ -351,21 +352,21 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
 	/* Handle INTx */
 	if (intr_status & PAB_INTP_INTX_MASK) {
 		shifted_status = csr_readl(pcie, PAB_INTP_AMBA_MISC_STAT) >>
-			PAB_INTX_START;
+					   PAB_INTX_START;
 		do {
 			for_each_set_bit(bit, &shifted_status, PCI_NUM_INTX) {
 				virq = irq_find_mapping(pcie->intx_domain,
-						bit + 1);
+							bit + 1);
 				if (virq)
 					generic_handle_irq(virq);
 				else
-					dev_err_ratelimited(dev,
-						"unexpected IRQ, INT%d\n", bit);
+					dev_err_ratelimited(dev, "unexpected IRQ, INT%d\n",
+							    bit);
 
 				/* clear interrupt */
 				csr_writel(pcie,
-					shifted_status << PAB_INTX_START,
-					PAB_INTP_AMBA_MISC_STAT);
+					   shifted_status << PAB_INTX_START,
+					   PAB_INTP_AMBA_MISC_STAT);
 			}
 		} while ((shifted_status >> PAB_INTX_START) != 0);
 	}
@@ -375,8 +376,7 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
 
 	/* handle MSI interrupts */
 	while (msi_status & 1) {
-		msi_data = readl_relaxed(pcie->apb_csr_base
-				+ MSI_DATA_OFFSET);
+		msi_data = readl_relaxed(pcie->apb_csr_base + MSI_DATA_OFFSET);
 
 		/*
 		 * MSI_STATUS_OFFSET register gets updated to zero
@@ -385,18 +385,18 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
 		 * two dummy reads.
 		 */
 		msi_addr_lo = readl_relaxed(pcie->apb_csr_base +
-				MSI_ADDR_L_OFFSET);
+					    MSI_ADDR_L_OFFSET);
 		msi_addr_hi = readl_relaxed(pcie->apb_csr_base +
-				MSI_ADDR_H_OFFSET);
+					    MSI_ADDR_H_OFFSET);
 		dev_dbg(dev, "MSI registers, data: %08x, addr: %08x:%08x\n",
-				msi_data, msi_addr_hi, msi_addr_lo);
+			msi_data, msi_addr_hi, msi_addr_lo);
 
 		virq = irq_find_mapping(msi->dev_domain, msi_data);
 		if (virq)
 			generic_handle_irq(virq);
 
 		msi_status = readl_relaxed(pcie->apb_csr_base +
-				MSI_STATUS_OFFSET);
+					   MSI_STATUS_OFFSET);
 	}
 
 	/* Clear the interrupt status */
@@ -413,7 +413,7 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
 
 	/* map config resource */
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
-			"config_axi_slave");
+					   "config_axi_slave");
 	pcie->config_axi_slave_base = devm_pci_remap_cfg_resource(dev, res);
 	if (IS_ERR(pcie->config_axi_slave_base))
 		return PTR_ERR(pcie->config_axi_slave_base);
@@ -421,7 +421,7 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
 
 	/* map csr resource */
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
-			"csr_axi_slave");
+					   "csr_axi_slave");
 	pcie->csr_axi_slave_base = devm_pci_remap_cfg_resource(dev, res);
 	if (IS_ERR(pcie->csr_axi_slave_base))
 		return PTR_ERR(pcie->csr_axi_slave_base);
@@ -450,7 +450,7 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
 }
 
 static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
-		int pci_addr, u32 type, u64 size)
+			       int pci_addr, u32 type, u64 size)
 {
 	int pio_ctrl_val;
 	int amap_ctrl_dw;
@@ -463,8 +463,8 @@ static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
 	}
 
 	pio_ctrl_val = csr_readl(pcie, PAB_PEX_PIO_CTRL);
-	csr_writel(pcie,
-		pio_ctrl_val | (1 << PIO_ENABLE_SHIFT), PAB_PEX_PIO_CTRL);
+	csr_writel(pcie, pio_ctrl_val | (1 << PIO_ENABLE_SHIFT),
+		   PAB_PEX_PIO_CTRL);
 	amap_ctrl_dw = csr_readl(pcie, PAB_PEX_AMAP_CTRL(win_num));
 	amap_ctrl_dw = (amap_ctrl_dw | (type << AMAP_CTRL_TYPE_SHIFT));
 	amap_ctrl_dw = (amap_ctrl_dw | (1 << AMAP_CTRL_EN_SHIFT));
@@ -484,7 +484,8 @@ static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
  * routine to program the outbound windows
  */
 static void program_ob_windows(struct mobiveil_pcie *pcie, int win_num,
-		u64 cpu_addr, u64 pci_addr, u32 config_io_bit, u64 size)
+			       u64 cpu_addr, u64 pci_addr,
+			       u32 config_io_bit, u64 size)
 {
 
 	u32 value, type;
@@ -503,7 +504,7 @@ static void program_ob_windows(struct mobiveil_pcie *pcie, int win_num,
 	type = config_io_bit;
 	value = csr_readl(pcie, PAB_AXI_AMAP_CTRL(win_num));
 	csr_writel(pcie, 1 << WIN_ENABLE_SHIFT | type << WIN_TYPE_SHIFT |
-			lower_32_bits(size64), PAB_AXI_AMAP_CTRL(win_num));
+		   lower_32_bits(size64), PAB_AXI_AMAP_CTRL(win_num));
 
 	csr_writel(pcie, upper_32_bits(size64), PAB_EXT_AXI_AMAP_SIZE(win_num));
 
@@ -513,14 +514,14 @@ static void program_ob_windows(struct mobiveil_pcie *pcie, int win_num,
 	 */
 	value = csr_readl(pcie, PAB_AXI_AMAP_AXI_WIN(win_num));
 	csr_writel(pcie, cpu_addr & (~AXI_WINDOW_ALIGN_MASK),
-			PAB_AXI_AMAP_AXI_WIN(win_num));
+		   PAB_AXI_AMAP_AXI_WIN(win_num));
 
 	value = csr_readl(pcie, PAB_AXI_AMAP_PEX_WIN_H(win_num));
 
 	csr_writel(pcie, lower_32_bits(pci_addr),
-			PAB_AXI_AMAP_PEX_WIN_L(win_num));
+		   PAB_AXI_AMAP_PEX_WIN_L(win_num));
 	csr_writel(pcie, upper_32_bits(pci_addr),
-			PAB_AXI_AMAP_PEX_WIN_H(win_num));
+		   PAB_AXI_AMAP_PEX_WIN_H(win_num));
 
 	pcie->ob_wins_configured++;
 }
@@ -536,7 +537,9 @@ static int mobiveil_bringup_link(struct mobiveil_pcie *pcie)
 
 		usleep_range(LINK_WAIT_MIN, LINK_WAIT_MAX);
 	}
+
 	dev_err(&pcie->pdev->dev, "link never came up\n");
+
 	return -ETIMEDOUT;
 }
 
@@ -549,9 +552,9 @@ static void mobiveil_pcie_enable_msi(struct mobiveil_pcie *pcie)
 	msi->msi_pages_phys = (phys_addr_t)msg_addr;
 
 	writel_relaxed(lower_32_bits(msg_addr),
-		pcie->apb_csr_base + MSI_BASE_LO_OFFSET);
+		       pcie->apb_csr_base + MSI_BASE_LO_OFFSET);
 	writel_relaxed(upper_32_bits(msg_addr),
-		pcie->apb_csr_base + MSI_BASE_HI_OFFSET);
+		       pcie->apb_csr_base + MSI_BASE_HI_OFFSET);
 	writel_relaxed(4096, pcie->apb_csr_base + MSI_SIZE_OFFSET);
 	writel_relaxed(1, pcie->apb_csr_base + MSI_ENABLE_OFFSET);
 }
@@ -573,7 +576,7 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 	 */
 	value = csr_readl(pcie, PCI_COMMAND);
 	csr_writel(pcie, value | PCI_COMMAND_IO | PCI_COMMAND_MEMORY |
-		PCI_COMMAND_MASTER, PCI_COMMAND);
+		   PCI_COMMAND_MASTER, PCI_COMMAND);
 
 	/*
 	 * program PIO Enable Bit to 1 (and PEX PIO Enable to 1) in PAB_CTRL
@@ -581,10 +584,10 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 	 */
 	pab_ctrl = csr_readl(pcie, PAB_CTRL);
 	csr_writel(pcie, pab_ctrl | (1 << AMBA_PIO_ENABLE_SHIFT) |
-		(1 << PEX_PIO_ENABLE_SHIFT), PAB_CTRL);
+		   (1 << PEX_PIO_ENABLE_SHIFT), PAB_CTRL);
 
 	csr_writel(pcie, (PAB_INTP_INTX_MASK | PAB_INTP_MSI_MASK),
-		PAB_INTP_AMBA_MISC_ENB);
+		   PAB_INTP_AMBA_MISC_ENB);
 
 	/*
 	 * program PIO Enable Bit to 1 and Config Window Enable Bit to 1 in
@@ -675,10 +678,11 @@ static void mobiveil_unmask_intx_irq(struct irq_data *data)
 
 /* routine to setup the INTx related data */
 static int mobiveil_pcie_intx_map(struct irq_domain *domain, unsigned int irq,
-		irq_hw_number_t hwirq)
+				  irq_hw_number_t hwirq)
 {
 	irq_set_chip_and_handler(irq, &intx_irq_chip, handle_level_irq);
 	irq_set_chip_data(irq, domain->host_data);
+
 	return 0;
 }
 
@@ -713,7 +717,7 @@ static void mobiveil_compose_msi_msg(struct irq_data *data, struct msi_msg *msg)
 }
 
 static int mobiveil_msi_set_affinity(struct irq_data *irq_data,
-		const struct cpumask *mask, bool force)
+				     const struct cpumask *mask, bool force)
 {
 	return -EINVAL;
 }
@@ -725,7 +729,8 @@ static int mobiveil_msi_set_affinity(struct irq_data *irq_data,
 };
 
 static int mobiveil_irq_msi_domain_alloc(struct irq_domain *domain,
-		unsigned int virq, unsigned int nr_irqs, void *args)
+					 unsigned int virq,
+					 unsigned int nr_irqs, void *args)
 {
 	struct mobiveil_pcie *pcie = domain->host_data;
 	struct mobiveil_msi *msi = &pcie->msi;
@@ -745,13 +750,13 @@ static int mobiveil_irq_msi_domain_alloc(struct irq_domain *domain,
 	mutex_unlock(&msi->lock);
 
 	irq_domain_set_info(domain, virq, bit, &mobiveil_msi_bottom_irq_chip,
-				domain->host_data, handle_level_irq,
-				NULL, NULL);
+			    domain->host_data, handle_level_irq, NULL, NULL);
 	return 0;
 }
 
 static void mobiveil_irq_msi_domain_free(struct irq_domain *domain,
-		unsigned int virq, unsigned int nr_irqs)
+					 unsigned int virq,
+					 unsigned int nr_irqs)
 {
 	struct irq_data *d = irq_domain_get_irq_data(domain, virq);
 	struct mobiveil_pcie *pcie = irq_data_get_irq_chip_data(d);
@@ -759,12 +764,11 @@ static void mobiveil_irq_msi_domain_free(struct irq_domain *domain,
 
 	mutex_lock(&msi->lock);
 
-	if (!test_bit(d->hwirq, msi->msi_irq_in_use)) {
+	if (!test_bit(d->hwirq, msi->msi_irq_in_use))
 		dev_err(&pcie->pdev->dev, "trying to free unused MSI#%lu\n",
 			d->hwirq);
-	} else {
+	else
 		__clear_bit(d->hwirq, msi->msi_irq_in_use);
-	}
 
 	mutex_unlock(&msi->lock);
 }
@@ -788,12 +792,14 @@ static int mobiveil_allocate_msi_domains(struct mobiveil_pcie *pcie)
 	}
 
 	msi->msi_domain = pci_msi_create_irq_domain(fwnode,
-				&mobiveil_msi_domain_info, msi->dev_domain);
+						    &mobiveil_msi_domain_info,
+						    msi->dev_domain);
 	if (!msi->msi_domain) {
 		dev_err(dev, "failed to create MSI domain\n");
 		irq_domain_remove(msi->dev_domain);
 		return -ENOMEM;
 	}
+
 	return 0;
 }
 
@@ -804,8 +810,8 @@ static int mobiveil_pcie_init_irq_domain(struct mobiveil_pcie *pcie)
 	int ret;
 
 	/* setup INTx */
-	pcie->intx_domain = irq_domain_add_linear(node,
-				PCI_NUM_INTX, &intx_domain_ops, pcie);
+	pcie->intx_domain = irq_domain_add_linear(node, PCI_NUM_INTX,
+						  &intx_domain_ops, pcie);
 
 	if (!pcie->intx_domain) {
 		dev_err(dev, "Failed to get a INTx IRQ domain\n");
@@ -925,10 +931,10 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 static struct platform_driver mobiveil_pcie_driver = {
 	.probe = mobiveil_pcie_probe,
 	.driver = {
-			.name = "mobiveil-pcie",
-			.of_match_table = mobiveil_pcie_of_match,
-			.suppress_bind_attrs = true,
-		},
+		.name = "mobiveil-pcie",
+		.of_match_table = mobiveil_pcie_of_match,
+		.suppress_bind_attrs = true,
+	},
 };
 
 builtin_platform_driver(mobiveil_pcie_driver);
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
