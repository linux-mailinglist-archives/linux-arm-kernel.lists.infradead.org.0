Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3E86098D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ivh405ZdA5RlWF1bKA3lqDmusDWy5CUjw2N35sWRW5k=; b=LV7JVBIVyA6OwFjo9b/irYQNFG
	1kwnFyDP2M3RWisHbDisu10l8knp/hrYCj/MqM2F2ZBgmulfZfko7Wsg6u4R0OQIngxKXJSN+Na/h
	D3u8Clxkrb+5l5M59PV1Qywh47oWodOvM9rjslDsMI7Wjd3VCLLUHwCWAjMIdtv+wlowMT19nI5NE
	+804GakDVWfzFW4DyDS7f091P+89jgMSsypaObSVFHiPCUG6EG+vwOgOXYJgAPEhRJk6LJDAoGkmO
	KOMilvxDXbllTMIUtZkH4wxrPJ0ACl59CYrMggPxD/0Yygi2zYrFnGYOieRZMR0eMO2FhakrlwUlS
	gweZt0GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQPm-0000YN-D5; Fri, 05 Jul 2019 15:46:22 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQNO-0005XL-Og
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 15:43:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GwFsSANUl7F9fsVRm/8Hi9e7+UVH0+kRwY1GwJWgqd8=; b=fd3P/J8CiVDI8c4Qt7SLWnjdH
 VMnzuldzhYDOuC/++NfdRscKEgK6MIfczn//CSzyYwKDES2+qiEAviI/kRsVix11nnF4wrTIGTaP0
 vaOiBD8x5rOPNExH1SkTwRd5KqsuBieZx44DNrQmFvLHdHGWN5tgCyU+GRGFvQ1R6lq0Ams9TgK97
 w7VCAdRaaNaIS32gWcZjFEopXNfdcI1EJml2e4em3K/mP5InwpI7FGwqy5XSmIr/wvAmm78XhCT14
 9oqsPzOocdM9Q8N+O3WBrphGpsIx3hFXwHkE641YbdJuz5dxN5AxIPH14zZLDMcYyT+TTLT16xsUT
 DM/4RgNcw==;
Received: from inva021.nxp.com ([92.121.34.21])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL81-00010J-Gl
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:07:42 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id AE9D120070A;
 Fri,  5 Jul 2019 12:07:25 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id EEB0A2006F9;
 Fri,  5 Jul 2019 12:07:16 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 85D1E402E1;
 Fri,  5 Jul 2019 18:07:06 +0800 (SGT)
From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 l.subrahmanya@mobiveil.co.in, shawnguo@kernel.org, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv6 14/28] PCI: mobiveil: Make the register updating more
 readable
Date: Fri,  5 Jul 2019 17:56:42 +0800
Message-Id: <20190705095656.19191-15-Zhiqiang.Hou@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
References: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

To make the register updating more readable, outstand the fields
to update by changing the register updating sequence to:
a. Read out the original value from the target register.
b. Update the value in one sentence.
c. Program the updated value back to the register.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
---
V6:
 - Splited from #2 of v5 patches, no functional change.

 drivers/pci/controller/pcie-mobiveil.c |   43 ++++++++++++++++++-------------
 1 files changed, 25 insertions(+), 18 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index 0767f19..906299b 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -299,6 +299,7 @@ static bool mobiveil_pcie_valid_device(struct pci_bus *bus, unsigned int devfn)
 					   unsigned int devfn, int where)
 {
 	struct mobiveil_pcie *pcie = bus->sysdata;
+	u32 value;
 
 	if (!mobiveil_pcie_valid_device(bus, devfn))
 		return NULL;
@@ -313,10 +314,12 @@ static bool mobiveil_pcie_valid_device(struct pci_bus *bus, unsigned int devfn)
 	 * (BDF) in PAB_AXI_AMAP_PEX_WIN_L0 Register.
 	 * Relies on pci_lock serialization
 	 */
-	csr_writel(pcie, bus->number << PAB_BUS_SHIFT |
-		   PCI_SLOT(devfn) << PAB_DEVICE_SHIFT |
-		   PCI_FUNC(devfn) << PAB_FUNCTION_SHIFT,
-		   PAB_AXI_AMAP_PEX_WIN_L(WIN_NUM_0));
+	value = bus->number << PAB_BUS_SHIFT |
+		PCI_SLOT(devfn) << PAB_DEVICE_SHIFT |
+		PCI_FUNC(devfn) << PAB_FUNCTION_SHIFT;
+
+	csr_writel(pcie, value, PAB_AXI_AMAP_PEX_WIN_L(WIN_NUM_0));
+
 	return pcie->config_axi_slave_base + where;
 }
 
@@ -463,19 +466,20 @@ static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
 	}
 
 	pio_ctrl_val = csr_readl(pcie, PAB_PEX_PIO_CTRL);
-	csr_writel(pcie, pio_ctrl_val | (1 << PIO_ENABLE_SHIFT),
-		   PAB_PEX_PIO_CTRL);
-	amap_ctrl_dw = csr_readl(pcie, PAB_PEX_AMAP_CTRL(win_num));
-	amap_ctrl_dw = (amap_ctrl_dw | (type << AMAP_CTRL_TYPE_SHIFT));
-	amap_ctrl_dw = (amap_ctrl_dw | (1 << AMAP_CTRL_EN_SHIFT));
+	pio_ctrl_val |= 1 << PIO_ENABLE_SHIFT;
+	csr_writel(pcie, pio_ctrl_val, PAB_PEX_PIO_CTRL);
 
-	csr_writel(pcie, amap_ctrl_dw | lower_32_bits(size64),
-		   PAB_PEX_AMAP_CTRL(win_num));
+	amap_ctrl_dw = csr_readl(pcie, PAB_PEX_AMAP_CTRL(win_num));
+	amap_ctrl_dw |= (type << AMAP_CTRL_TYPE_SHIFT) |
+			(1 << AMAP_CTRL_EN_SHIFT) |
+			lower_32_bits(size64);
+	csr_writel(pcie, amap_ctrl_dw, PAB_PEX_AMAP_CTRL(win_num));
 
 	csr_writel(pcie, upper_32_bits(size64),
 		   PAB_EXT_PEX_AMAP_SIZEN(win_num));
 
 	csr_writel(pcie, pci_addr, PAB_PEX_AMAP_AXI_WIN(win_num));
+
 	csr_writel(pcie, pci_addr, PAB_PEX_AMAP_PEX_WIN_L(win_num));
 	csr_writel(pcie, 0, PAB_PEX_AMAP_PEX_WIN_H(win_num));
 }
@@ -575,16 +579,16 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 	 * Space
 	 */
 	value = csr_readl(pcie, PCI_COMMAND);
-	csr_writel(pcie, value | PCI_COMMAND_IO | PCI_COMMAND_MEMORY |
-		   PCI_COMMAND_MASTER, PCI_COMMAND);
+	value |= PCI_COMMAND_IO | PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER;
+	csr_writel(pcie, value, PCI_COMMAND);
 
 	/*
 	 * program PIO Enable Bit to 1 (and PEX PIO Enable to 1) in PAB_CTRL
 	 * register
 	 */
 	pab_ctrl = csr_readl(pcie, PAB_CTRL);
-	csr_writel(pcie, pab_ctrl | (1 << AMBA_PIO_ENABLE_SHIFT) |
-		   (1 << PEX_PIO_ENABLE_SHIFT), PAB_CTRL);
+	pab_ctrl |= (1 << AMBA_PIO_ENABLE_SHIFT) | (1 << PEX_PIO_ENABLE_SHIFT);
+	csr_writel(pcie, pab_ctrl, PAB_CTRL);
 
 	csr_writel(pcie, (PAB_INTP_INTX_MASK | PAB_INTP_MSI_MASK),
 		   PAB_INTP_AMBA_MISC_ENB);
@@ -594,7 +598,8 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 	 * PAB_AXI_PIO_CTRL Register
 	 */
 	value = csr_readl(pcie, PAB_AXI_PIO_CTRL);
-	csr_writel(pcie, value | APIO_EN_MASK, PAB_AXI_PIO_CTRL);
+	value |= APIO_EN_MASK;
+	csr_writel(pcie, value, PAB_AXI_PIO_CTRL);
 
 	/*
 	 * we'll program one outbound window for config reads and
@@ -649,7 +654,8 @@ static void mobiveil_mask_intx_irq(struct irq_data *data)
 	mask = 1 << ((data->hwirq + PAB_INTX_START) - 1);
 	raw_spin_lock_irqsave(&pcie->intx_mask_lock, flags);
 	shifted_val = csr_readl(pcie, PAB_INTP_AMBA_MISC_ENB);
-	csr_writel(pcie, (shifted_val & (~mask)), PAB_INTP_AMBA_MISC_ENB);
+	shifted_val &= ~mask;
+	csr_writel(pcie, shifted_val, PAB_INTP_AMBA_MISC_ENB);
 	raw_spin_unlock_irqrestore(&pcie->intx_mask_lock, flags);
 }
 
@@ -664,7 +670,8 @@ static void mobiveil_unmask_intx_irq(struct irq_data *data)
 	mask = 1 << ((data->hwirq + PAB_INTX_START) - 1);
 	raw_spin_lock_irqsave(&pcie->intx_mask_lock, flags);
 	shifted_val = csr_readl(pcie, PAB_INTP_AMBA_MISC_ENB);
-	csr_writel(pcie, (shifted_val | mask), PAB_INTP_AMBA_MISC_ENB);
+	shifted_val |= mask;
+	csr_writel(pcie, shifted_val, PAB_INTP_AMBA_MISC_ENB);
 	raw_spin_unlock_irqrestore(&pcie->intx_mask_lock, flags);
 }
 
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
