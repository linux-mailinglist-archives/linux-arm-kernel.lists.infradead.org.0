Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C57313484E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kVvha3S7jb8urAo9nL4aLefczcSWhFTI0yhcdTeps1M=; b=OL1EFKU2QCh8w3
	JCxTxPDEbHOV9zIY07SBRI7bBdc30WDmO0Cp34TAEuTEU0Alwm4Hom/0pmlrZw5Xe0fJgM1/hKtqu
	o2tLxAugaOQ9PrIBEaYPq3V3Rg+lIFDoYm4P4C2gvdxPl1F6GF4lbBlmJn83zpznbDaNtTrT+YQgJ
	O7qqR/WMOh0g0lE9v9DX/ADnYBbOFb3ctn2dTehcDvBJyqDnpF/5cIhYs15Oi0WOQJlmp95sCwDFD
	82cNiD614/K1PZ/Fuc1BzTaLMLTvpsd6fFN9ZP/vh4z3V5yedGLwl6N4UvYsPcSBEFTEtW4kIqzMA
	uRQ/5jrHhZ6aNek9MIXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9MR-0006uO-6w; Tue, 04 Jun 2019 13:20:19 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9L1-0004kA-Np; Tue, 04 Jun 2019 13:19:29 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54DIgQY092168;
 Tue, 4 Jun 2019 08:18:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559654322;
 bh=RpjO9P/fHn964nb8jzwtD2iddPRG/sW3iiZvbwqx5/0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=wEBHLMMstAXCziVFRXHBPmB1wEDwKGg0XbR2HQR0qhoM3HLE05m7Mher8LV6zRZgQ
 JuA64Zzzwb6uGlfHpuCLVAn6dtGoZvwmXB8j5ZJP4qLqQptEH46Y4Iv79lQel5lL3r
 0mR1Ua5N80akDyVRmGt+yuX3ZNSjg67LytrD/UkQ=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54DIgui054157
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 08:18:42 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 08:18:41 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 08:18:41 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54DGdGb098972;
 Tue, 4 Jun 2019 08:18:36 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Subject: [RFC PATCH 21/30] PCI: cadence: Add support to configure virtual
 functions
Date: Tue, 4 Jun 2019 18:45:07 +0530
Message-ID: <20190604131516.13596-22-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604131516.13596-1-kishon@ti.com>
References: <20190604131516.13596-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_061852_542557_382D872E 
X-CRM114-Status: GOOD (  22.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Jingoo Han <jingoohan1@gmail.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that support for SRIOV is added in PCIe endpoint core, add support
to configure virtual functions in the Cadence PCIe EP driver.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/controller/pcie-cadence-ep.c | 104 ++++++++++++++++++++---
 drivers/pci/controller/pcie-cadence.h    |   5 ++
 2 files changed, 98 insertions(+), 11 deletions(-)

diff --git a/drivers/pci/controller/pcie-cadence-ep.c b/drivers/pci/controller/pcie-cadence-ep.c
index df8fc495ffd9..3dc1a896c1e6 100644
--- a/drivers/pci/controller/pcie-cadence-ep.c
+++ b/drivers/pci/controller/pcie-cadence-ep.c
@@ -53,7 +53,18 @@ static int cdns_pcie_ep_write_header(struct pci_epc *epc, u8 fn, u8 vfn,
 				     struct pci_epf_header *hdr)
 {
 	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
+	u32 cap = CDNS_PCIE_EP_FUNC_SRIOV_CAP_OFFSET;
 	struct cdns_pcie *pcie = &ep->pcie;
+	u32 reg;
+
+	if (vfn > 1) {
+		dev_dbg(&epc->dev, "Only Virtual Function #1 has deviceID\n");
+		return 0;
+	} else if (vfn == 1) {
+		reg = cap + PCI_SRIOV_VF_DID;
+		cdns_pcie_ep_fn_writew(pcie, fn, reg, hdr->deviceid);
+		return 0;
+	}
 
 	cdns_pcie_ep_fn_writew(pcie, fn, PCI_DEVICE_ID, hdr->deviceid);
 	cdns_pcie_ep_fn_writeb(pcie, fn, PCI_REVISION_ID, hdr->revid);
@@ -84,11 +95,13 @@ static int cdns_pcie_ep_set_bar(struct pci_epc *epc, u8 fn, u8 vfn,
 				struct pci_epf_bar *epf_bar)
 {
 	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
+	u32 cap = CDNS_PCIE_EP_FUNC_SRIOV_CAP_OFFSET;
 	struct cdns_pcie *pcie = &ep->pcie;
 	dma_addr_t bar_phys = epf_bar->phys_addr;
 	enum pci_barno bar = epf_bar->barno;
 	int flags = epf_bar->flags;
 	u32 addr0, addr1, reg, cfg, b, aperture, ctrl;
+	u32 first_vf_offset, stride;
 	u64 sz;
 
 	/* BAR size is 2^(aperture + 7) */
@@ -124,19 +137,38 @@ static int cdns_pcie_ep_set_bar(struct pci_epc *epc, u8 fn, u8 vfn,
 
 	addr0 = lower_32_bits(bar_phys);
 	addr1 = upper_32_bits(bar_phys);
+
+	if (vfn == 1) {
+		if (bar < BAR_4) {
+			reg = CDNS_PCIE_LM_EP_VFUNC_BAR_CFG0(fn);
+			b = bar;
+		} else {
+			reg = CDNS_PCIE_LM_EP_VFUNC_BAR_CFG1(fn);
+			b = bar - BAR_4;
+		}
+	} else {
+		if (bar < BAR_4) {
+			reg = CDNS_PCIE_LM_EP_FUNC_BAR_CFG0(fn);
+			b = bar;
+		} else {
+			reg = CDNS_PCIE_LM_EP_FUNC_BAR_CFG1(fn);
+			b = bar - BAR_4;
+		}
+	}
+
+	if (vfn > 0) {
+		first_vf_offset = cdns_pcie_ep_fn_readw(pcie, fn, cap +
+							PCI_SRIOV_VF_OFFSET);
+		stride = cdns_pcie_ep_fn_readw(pcie, fn, cap +
+					       PCI_SRIOV_VF_STRIDE);
+		fn = fn + first_vf_offset + ((vfn - 1) * stride);
+	}
+
 	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_EP_FUNC_BAR_ADDR0(fn, bar),
 			 addr0);
 	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_EP_FUNC_BAR_ADDR1(fn, bar),
 			 addr1);
 
-	if (bar < BAR_4) {
-		reg = CDNS_PCIE_LM_EP_FUNC_BAR_CFG0(fn);
-		b = bar;
-	} else {
-		reg = CDNS_PCIE_LM_EP_FUNC_BAR_CFG1(fn);
-		b = bar - BAR_4;
-	}
-
 	cfg = cdns_pcie_readl(pcie, reg);
 	cfg &= ~(CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_APERTURE_MASK(b) |
 		 CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_CTRL_MASK(b));
@@ -179,8 +211,18 @@ static int cdns_pcie_ep_map_addr(struct pci_epc *epc, u8 fn, u8 vfn,
 {
 	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
 	struct cdns_pcie *pcie = &ep->pcie;
+	u32 cap = CDNS_PCIE_EP_FUNC_SRIOV_CAP_OFFSET;
+	u32 first_vf_offset, stride;
 	u32 r;
 
+	if (vfn > 0) {
+		first_vf_offset = cdns_pcie_ep_fn_readw(pcie, fn, cap +
+							PCI_SRIOV_VF_OFFSET);
+		stride = cdns_pcie_ep_fn_readw(pcie, fn, cap +
+					       PCI_SRIOV_VF_STRIDE);
+		fn = fn + first_vf_offset + ((vfn - 1) * stride);
+	}
+
 	r = find_first_zero_bit(&ep->ob_region_map,
 				sizeof(ep->ob_region_map) * BITS_PER_LONG);
 	if (r >= ep->max_regions - 1) {
@@ -220,9 +262,19 @@ static int cdns_pcie_ep_set_msi(struct pci_epc *epc, u8 fn, u8 vfn, u8 mmc)
 {
 	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
 	struct cdns_pcie *pcie = &ep->pcie;
+	u32 sriov_cap = CDNS_PCIE_EP_FUNC_SRIOV_CAP_OFFSET;
 	u32 cap = CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET;
+	u32 first_vf_offset, stride;
 	u16 flags;
 
+	if (vfn > 0) {
+		first_vf_offset = cdns_pcie_ep_fn_readw(pcie, fn, sriov_cap +
+							PCI_SRIOV_VF_OFFSET);
+		stride = cdns_pcie_ep_fn_readw(pcie, fn, sriov_cap +
+					       PCI_SRIOV_VF_STRIDE);
+		fn = fn + first_vf_offset + ((vfn - 1) * stride);
+	}
+
 	/*
 	 * Set the Multiple Message Capable bitfield into the Message Control
 	 * register.
@@ -240,9 +292,19 @@ static int cdns_pcie_ep_get_msi(struct pci_epc *epc, u8 fn, u8 vfn)
 {
 	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
 	struct cdns_pcie *pcie = &ep->pcie;
+	u32 sriov_cap = CDNS_PCIE_EP_FUNC_SRIOV_CAP_OFFSET;
 	u32 cap = CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET;
+	u32 first_vf_offset, stride;
 	u16 flags, mme;
 
+	if (vfn > 0) {
+		first_vf_offset = cdns_pcie_ep_fn_readw(pcie, fn, sriov_cap +
+							PCI_SRIOV_VF_OFFSET);
+		stride = cdns_pcie_ep_fn_readw(pcie, fn, sriov_cap +
+					       PCI_SRIOV_VF_STRIDE);
+		fn = fn + first_vf_offset + ((vfn - 1) * stride);
+	}
+
 	/* Validate that the MSI feature is actually enabled. */
 	flags = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_MSI_FLAGS);
 	if (!(flags & PCI_MSI_FLAGS_ENABLE))
@@ -257,7 +319,7 @@ static int cdns_pcie_ep_get_msi(struct pci_epc *epc, u8 fn, u8 vfn)
 	return mme;
 }
 
-static void cdns_pcie_ep_assert_intx(struct cdns_pcie_ep *ep, u8 fn,
+static void cdns_pcie_ep_assert_intx(struct cdns_pcie_ep *ep, u8 fn, u8 vfn,
 				     u8 intx, bool is_asserted)
 {
 	struct cdns_pcie *pcie = &ep->pcie;
@@ -320,10 +382,20 @@ static int cdns_pcie_ep_send_msi_irq(struct cdns_pcie_ep *ep, u8 fn, u8 vfn,
 				     u8 interrupt_num)
 {
 	struct cdns_pcie *pcie = &ep->pcie;
+	u32 sriov_cap = CDNS_PCIE_EP_FUNC_SRIOV_CAP_OFFSET;
 	u32 cap = CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET;
 	u16 flags, mme, data, data_mask;
 	u8 msi_count;
 	u64 pci_addr, pci_addr_mask = 0xff;
+	u32 first_vf_offset, stride;
+
+	if (vfn > 0) {
+		first_vf_offset = cdns_pcie_ep_fn_readw(pcie, fn, sriov_cap +
+							PCI_SRIOV_VF_OFFSET);
+		stride = cdns_pcie_ep_fn_readw(pcie, fn, sriov_cap +
+					       PCI_SRIOV_VF_STRIDE);
+		fn = fn + first_vf_offset + ((vfn - 1) * stride);
+	}
 
 	/* Check whether the MSI feature has been enabled by the PCI host. */
 	flags = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_MSI_FLAGS);
@@ -364,7 +436,7 @@ static int cdns_pcie_ep_send_msi_irq(struct cdns_pcie_ep *ep, u8 fn, u8 vfn,
 	return 0;
 }
 
-static int cdns_pcie_ep_raise_irq(struct pci_epc *epc, u8 fn,
+static int cdns_pcie_ep_raise_irq(struct pci_epc *epc, u8 fn, u8 vfn,
 				  enum pci_epc_irq_type type,
 				  u16 interrupt_num)
 {
@@ -414,10 +486,20 @@ static const struct pci_epc_features cdns_pcie_epc_features = {
 	.msix_capable = false,
 };
 
+static const struct pci_epc_features cdns_pcie_epc_vf_features = {
+	.linkup_notifier = false,
+	.msi_capable = true,
+	.msix_capable = true,
+	.align = 65536,
+};
+
 static const struct pci_epc_features*
 cdns_pcie_ep_get_features(struct pci_epc *epc, u8 func_no, u8 vfunc_no)
 {
-	return &cdns_pcie_epc_features;
+	if (!vfunc_no)
+		return &cdns_pcie_epc_features;
+
+	return &cdns_pcie_epc_vf_features;
 }
 
 static const struct pci_epc_ops cdns_pcie_epc_ops = {
diff --git a/drivers/pci/controller/pcie-cadence.h b/drivers/pci/controller/pcie-cadence.h
index 3cef398b50da..8237847bbc4e 100644
--- a/drivers/pci/controller/pcie-cadence.h
+++ b/drivers/pci/controller/pcie-cadence.h
@@ -50,6 +50,10 @@
 	(CDNS_PCIE_LM_BASE + 0x0240 + (fn) * 0x0008)
 #define CDNS_PCIE_LM_EP_FUNC_BAR_CFG1(fn) \
 	(CDNS_PCIE_LM_BASE + 0x0244 + (fn) * 0x0008)
+#define CDNS_PCIE_LM_EP_VFUNC_BAR_CFG0(fn) \
+	(CDNS_PCIE_LM_BASE + 0x0280 + (fn) * 0x0008)
+#define CDNS_PCIE_LM_EP_VFUNC_BAR_CFG1(fn) \
+	(CDNS_PCIE_LM_BASE + 0x0284 + (fn) * 0x0008)
 #define  CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_APERTURE_MASK(b) \
 	(GENMASK(4, 0) << ((b) * 8))
 #define  CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_APERTURE(b, a) \
@@ -99,6 +103,7 @@
 #define CDNS_PCIE_EP_FUNC_BASE(fn)	(((fn) << 12) & GENMASK(19, 12))
 
 #define CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET	0x90
+#define CDNS_PCIE_EP_FUNC_SRIOV_CAP_OFFSET	0x200
 
 /*
  * Root Port Registers (PCI configuration space for the root port function)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
