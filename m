Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A3D1ADDBF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 15:00:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rftZdN2kQLkAY2it5dN466qQDoDoSbOx0UnfbEbPgfg=; b=h+uVhtTBiKD0pi
	RaeqLzkPNjykoWDAHSOwwjyK2luorQplDeu6NqQyfztPj/mUGF5BD1bAMckfHqG/QqlFpLNnoFUD7
	iGN+0J4sgZiVsbLkHRYSKVLWFiGIhe+GBDpE/KbScaF+YNnQx6hadcNTu+biH/SGwkhG9KIYY1O3r
	+48jtZEQDTUGplIld/lCytfRkQOJk1tLcRJOZfzyko0QjeOhsQ+sNiFza6JjMnUGcuya9ikmYcrhf
	acBTkDq50cgJXQtiW8lFPstOWxvEAUi8+jtZVWoALR0VnjZKQJgt6ZT3w4aARFubZL8/O4xeuYO5B
	7KnrSqMFMM7rf894w2FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPQbq-0006Is-Sv; Fri, 17 Apr 2020 13:00:42 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPQZr-0002N7-8O
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 12:58:44 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03HCwUsE013807;
 Fri, 17 Apr 2020 07:58:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587128310;
 bh=O9L4/8B5VRW+YMKUUzhKymFFP7eSxK8Ynyqo3J84KmE=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=hMKnvHy3Lahn3foDo8TjqEVDsxNCy7ZVT4agZeORH4C5q4/r5pnSRyKH1Fw4zohtP
 W1B0lENP7lvs8TMdnqwCg0y2G/394EliV2tMB5yMDBAw88FgYbvFqp+PFTt3dHMkcv
 jVyb3g0F1PYLy5eLgkr3Kxn0x/pU1wHlYd5RtZR0=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03HCwUBN051883;
 Fri, 17 Apr 2020 07:58:30 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 17
 Apr 2020 07:58:30 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 17 Apr 2020 07:58:30 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03HCvsDE031089;
 Fri, 17 Apr 2020 07:58:27 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh+dt@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Subject: [PATCH v3 09/14] PCI: cadence: Add MSI-X support to Endpoint driver
Date: Fri, 17 Apr 2020 18:27:48 +0530
Message-ID: <20200417125753.13021-10-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200417125753.13021-1-kishon@ti.com>
References: <20200417125753.13021-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_055839_384340_D546F86A 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alan Douglas <adouglas@cadence.com>

Implement ->set_msix() and ->get_msix() callback functions in order
to configure MSIX capability in the PCIe endpoint controller.

Add cdns_pcie_ep_send_msix_irq() to send MSIX interrupts to Host.
cdns_pcie_ep_send_msix_irq() gets the MSIX table address (virtual
address) from "struct cdns_pcie_epf" that gets initialized in
->set_bar() call back function.

[kishon@ti.com: Re-implement MSIX support in accordance with the
 re-designed core MSI-X interfaces]
Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Signed-off-by: Alan Douglas <adouglas@cadence.com>
---
 .../pci/controller/cadence/pcie-cadence-ep.c  | 112 +++++++++++++++++-
 drivers/pci/controller/cadence/pcie-cadence.h |  10 ++
 2 files changed, 121 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
index 14021d760482..c43340ca0630 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
@@ -51,6 +51,7 @@ static int cdns_pcie_ep_set_bar(struct pci_epc *epc, u8 fn,
 				struct pci_epf_bar *epf_bar)
 {
 	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
+	struct cdns_pcie_epf *epf = &ep->epf[fn];
 	struct cdns_pcie *pcie = &ep->pcie;
 	dma_addr_t bar_phys = epf_bar->phys_addr;
 	enum pci_barno bar = epf_bar->barno;
@@ -111,6 +112,8 @@ static int cdns_pcie_ep_set_bar(struct pci_epc *epc, u8 fn,
 		CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_CTRL(b, ctrl));
 	cdns_pcie_writel(pcie, reg, cfg);
 
+	epf->epf_bar[bar] = epf_bar;
+
 	return 0;
 }
 
@@ -118,6 +121,7 @@ static void cdns_pcie_ep_clear_bar(struct pci_epc *epc, u8 fn,
 				   struct pci_epf_bar *epf_bar)
 {
 	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
+	struct cdns_pcie_epf *epf = &ep->epf[fn];
 	struct cdns_pcie *pcie = &ep->pcie;
 	enum pci_barno bar = epf_bar->barno;
 	u32 reg, cfg, b, ctrl;
@@ -139,6 +143,8 @@ static void cdns_pcie_ep_clear_bar(struct pci_epc *epc, u8 fn,
 
 	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_EP_FUNC_BAR_ADDR0(fn, bar), 0);
 	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_EP_FUNC_BAR_ADDR1(fn, bar), 0);
+
+	epf->epf_bar[bar] = NULL;
 }
 
 static int cdns_pcie_ep_map_addr(struct pci_epc *epc, u8 fn, phys_addr_t addr,
@@ -224,6 +230,50 @@ static int cdns_pcie_ep_get_msi(struct pci_epc *epc, u8 fn)
 	return mme;
 }
 
+static int cdns_pcie_ep_get_msix(struct pci_epc *epc, u8 func_no)
+{
+	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
+	struct cdns_pcie *pcie = &ep->pcie;
+	u32 cap = CDNS_PCIE_EP_FUNC_MSIX_CAP_OFFSET;
+	u32 val, reg;
+
+	reg = cap + PCI_MSIX_FLAGS;
+	val = cdns_pcie_ep_fn_readw(pcie, func_no, reg);
+	if (!(val & PCI_MSIX_FLAGS_ENABLE))
+		return -EINVAL;
+
+	val &= PCI_MSIX_FLAGS_QSIZE;
+
+	return val;
+}
+
+static int cdns_pcie_ep_set_msix(struct pci_epc *epc, u8 fn, u16 interrupts,
+				 enum pci_barno bir, u32 offset)
+{
+	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
+	struct cdns_pcie *pcie = &ep->pcie;
+	u32 cap = CDNS_PCIE_EP_FUNC_MSIX_CAP_OFFSET;
+	u32 val, reg;
+
+	reg = cap + PCI_MSIX_FLAGS;
+	val = cdns_pcie_ep_fn_readw(pcie, fn, reg);
+	val &= ~PCI_MSIX_FLAGS_QSIZE;
+	val |= interrupts;
+	cdns_pcie_ep_fn_writew(pcie, fn, reg, val);
+
+	/* Set MSIX BAR and offset */
+	reg = cap + PCI_MSIX_TABLE;
+	val = offset | bir;
+	cdns_pcie_ep_fn_writel(pcie, fn, reg, val);
+
+	/* Set PBA BAR and offset.  BAR must match MSIX BAR */
+	reg = cap + PCI_MSIX_PBA;
+	val = (offset + (interrupts * PCI_MSIX_ENTRY_SIZE)) | bir;
+	cdns_pcie_ep_fn_writel(pcie, fn, reg, val);
+
+	return 0;
+}
+
 static void cdns_pcie_ep_assert_intx(struct cdns_pcie_ep *ep, u8 fn,
 				     u8 intx, bool is_asserted)
 {
@@ -330,6 +380,56 @@ static int cdns_pcie_ep_send_msi_irq(struct cdns_pcie_ep *ep, u8 fn,
 	return 0;
 }
 
+static int cdns_pcie_ep_send_msix_irq(struct cdns_pcie_ep *ep, u8 fn,
+				      u16 interrupt_num)
+{
+	u32 cap = CDNS_PCIE_EP_FUNC_MSIX_CAP_OFFSET;
+	u32 tbl_offset, msg_data, reg, vec_ctrl;
+	struct cdns_pcie *pcie = &ep->pcie;
+	struct pci_epf_msix_tbl *msix_tbl;
+	struct pci_epf_bar *epf_bar;
+	struct cdns_pcie_epf *epf;
+	u64 pci_addr_mask = 0xff;
+	u64 msg_addr;
+	u16 flags;
+	u8 bir;
+
+	/* Check whether the MSI-X feature has been enabled by the PCI host. */
+	flags = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_MSIX_FLAGS);
+	if (!(flags & PCI_MSIX_FLAGS_ENABLE))
+		return -EINVAL;
+
+	reg = cap + PCI_MSIX_TABLE;
+	tbl_offset = cdns_pcie_ep_fn_readl(pcie, fn, reg);
+	bir = tbl_offset & PCI_MSIX_TABLE_BIR;
+	tbl_offset &= PCI_MSIX_TABLE_OFFSET;
+
+	epf = &ep->epf[fn];
+	epf_bar = epf->epf_bar[bir];
+	msix_tbl = epf_bar->addr;
+	msix_tbl = (struct pci_epf_msix_tbl *)((char *)msix_tbl + tbl_offset);
+
+	msg_addr = msix_tbl[(interrupt_num - 1)].msg_addr;
+	msg_data = msix_tbl[(interrupt_num - 1)].msg_data;
+	vec_ctrl = msix_tbl[(interrupt_num - 1)].vector_ctrl;
+
+	/* Set the outbound region if needed. */
+	if (ep->irq_pci_addr != (msg_addr & ~pci_addr_mask) ||
+	    ep->irq_pci_fn != fn) {
+		/* First region was reserved for IRQ writes. */
+		cdns_pcie_set_outbound_region(pcie, fn, 0,
+					      false,
+					      ep->irq_phys_addr,
+					      msg_addr & ~pci_addr_mask,
+					      pci_addr_mask + 1);
+		ep->irq_pci_addr = (msg_addr & ~pci_addr_mask);
+		ep->irq_pci_fn = fn;
+	}
+	writel(msg_data, ep->irq_cpu_addr + (msg_addr & pci_addr_mask));
+
+	return 0;
+}
+
 static int cdns_pcie_ep_raise_irq(struct pci_epc *epc, u8 fn,
 				  enum pci_epc_irq_type type,
 				  u16 interrupt_num)
@@ -343,6 +443,9 @@ static int cdns_pcie_ep_raise_irq(struct pci_epc *epc, u8 fn,
 	case PCI_EPC_IRQ_MSI:
 		return cdns_pcie_ep_send_msi_irq(ep, fn, interrupt_num);
 
+	case PCI_EPC_IRQ_MSIX:
+		return cdns_pcie_ep_send_msix_irq(ep, fn, interrupt_num);
+
 	default:
 		break;
 	}
@@ -380,7 +483,7 @@ static int cdns_pcie_ep_start(struct pci_epc *epc)
 static const struct pci_epc_features cdns_pcie_epc_features = {
 	.linkup_notifier = false,
 	.msi_capable = true,
-	.msix_capable = false,
+	.msix_capable = true,
 };
 
 static const struct pci_epc_features*
@@ -397,6 +500,8 @@ static const struct pci_epc_ops cdns_pcie_epc_ops = {
 	.unmap_addr	= cdns_pcie_ep_unmap_addr,
 	.set_msi	= cdns_pcie_ep_set_msi,
 	.get_msi	= cdns_pcie_ep_get_msi,
+	.set_msix	= cdns_pcie_ep_set_msix,
+	.get_msix	= cdns_pcie_ep_get_msix,
 	.raise_irq	= cdns_pcie_ep_raise_irq,
 	.start		= cdns_pcie_ep_start,
 	.get_features	= cdns_pcie_ep_get_features,
@@ -455,6 +560,11 @@ int cdns_pcie_ep_setup(struct cdns_pcie_ep *ep)
 	if (of_property_read_u8(np, "max-functions", &epc->max_functions) < 0)
 		epc->max_functions = 1;
 
+	ep->epf = devm_kcalloc(dev, epc->max_functions, sizeof(*ep->epf),
+			       GFP_KERNEL);
+	if (!ep->epf)
+		return -ENOMEM;
+
 	ret = pci_epc_mem_init(epc, pcie->mem_res->start,
 			       resource_size(pcie->mem_res));
 	if (ret < 0) {
diff --git a/drivers/pci/controller/cadence/pcie-cadence.h b/drivers/pci/controller/cadence/pcie-cadence.h
index 16a6b0ee547c..ea850290a602 100644
--- a/drivers/pci/controller/cadence/pcie-cadence.h
+++ b/drivers/pci/controller/cadence/pcie-cadence.h
@@ -99,6 +99,7 @@
 #define CDNS_PCIE_EP_FUNC_BASE(fn)	(((fn) << 12) & GENMASK(19, 12))
 
 #define CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET	0x90
+#define CDNS_PCIE_EP_FUNC_MSIX_CAP_OFFSET	0xb0
 
 /*
  * Root Port Registers (PCI configuration space for the root port function)
@@ -280,6 +281,14 @@ struct cdns_pcie_rc {
 	u32			device_id;
 };
 
+/**
+ * struct cdns_pcie_epf - Structure to hold info about endpoint function
+ * @epf_bar: reference to the pci_epf_bar for the six Base Address Registers
+ */
+struct cdns_pcie_epf {
+	struct pci_epf_bar *epf_bar[PCI_STD_NUM_BARS];
+};
+
 /**
  * struct cdns_pcie_ep - private data for this PCIe endpoint controller driver
  * @pcie: Cadence PCIe controller
@@ -307,6 +316,7 @@ struct cdns_pcie_ep {
 	u64			irq_pci_addr;
 	u8			irq_pci_fn;
 	u8			irq_pending;
+	struct cdns_pcie_epf	*epf;
 };
 
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
