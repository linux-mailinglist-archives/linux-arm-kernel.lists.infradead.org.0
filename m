Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DD817CAF1
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 03:31:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u4jPk0RahhfGg3gmEbDHYzmvWOONAlIobuSsjeDbGOU=; b=rtOYFTG7h3BgVStfjAwJ1YSHPE
	UqK6EAxt85qKBkUhUwV05X9F2Af1CYpnpvMyH7IiBqDEa6TxFl9AXvaugtFXxy+GeR0+OpiFyQcS8
	PXXmLUh4+Zn7ZTYearCmVp8zmanB+6vpP8VSdzkzxwJnLId2OmAVT1f5Pnk1itgQ9fBaCMwNHO356
	8Vu0BxC9rvUM+0jfVSHfinFg9Xggl/AlHO9QTI99IZAKRAlAoKmCF0P8n+XvWQBMbEB6GVOTHGtgf
	Pecw4yutyjZxffXTp9BgA9QupgAwtcLW/2dw/hRf2Yd4GMjAYpiSercPakBmVyQZ9CJg9RPihxXLt
	r0br0otQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAPEp-0006OC-0e; Sat, 07 Mar 2020 02:30:51 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAPDI-00040h-PT
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 02:29:19 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1EBAE1A198E;
 Sat,  7 Mar 2020 03:29:15 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 288561A1990;
 Sat,  7 Mar 2020 03:28:17 +0100 (CET)
Received: from titan.ap.freescale.net (titan.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 31ACD402DA;
 Sat,  7 Mar 2020 10:28:06 +0800 (SGT)
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Zhiqiang.Hou@nxp.com, Minghuan.Lian@nxp.com, mingkai.hu@nxp.com,
 bhelgaas@google.com, robh+dt@kernel.org, shawnguo@kernel.org,
 leoyang.li@nxp.com, kishon@ti.com, lorenzo.pieralisi@arm.com,
 roy.zang@nxp.com, amurray@thegoodpenguin.co.uk, jingoohan1@gmail.com,
 gustavo.pimentel@synopsys.com, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linuxppc-dev@lists.ozlabs.org
Subject: [PATCH v5 04/11] PCI: designware-ep: Modify MSI and MSIX CAP way of
 finding
Date: Sat,  7 Mar 2020 10:14:23 +0800
Message-Id: <20200307021430.36826-5-xiaowei.bao@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20200307021430.36826-1-xiaowei.bao@nxp.com>
References: <20200307021430.36826-1-xiaowei.bao@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_182917_339283_992A592C 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Xiaowei Bao <xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Each PF of EP device should have it's own MSI or MSIX capabitily
struct, so create a dw_pcie_ep_func struct and remove the msi_cap
and msix_cap to this struct from dw_pcie_ep, and manage the PFs
with a list.

Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
---
v3:
 - This is a new patch, to fix the issue of MSI and MSIX CAP way of
   finding.
v4:
 - Correct some word of commit message.
v5:
 - No change.

 drivers/pci/controller/dwc/pcie-designware-ep.c | 135 +++++++++++++++++++++---
 drivers/pci/controller/dwc/pcie-designware.h    |  18 +++-
 2 files changed, 134 insertions(+), 19 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c b/drivers/pci/controller/dwc/pcie-designware-ep.c
index 933bb89..fb915f2 100644
--- a/drivers/pci/controller/dwc/pcie-designware-ep.c
+++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
@@ -19,6 +19,19 @@ void dw_pcie_ep_linkup(struct dw_pcie_ep *ep)
 	pci_epc_linkup(epc);
 }
 
+struct dw_pcie_ep_func *
+dw_pcie_ep_get_func_from_ep(struct dw_pcie_ep *ep, u8 func_no)
+{
+	struct dw_pcie_ep_func *ep_func;
+
+	list_for_each_entry(ep_func, &ep->func_list, list) {
+		if (ep_func->func_no == func_no)
+			return ep_func;
+	}
+
+	return NULL;
+}
+
 static unsigned int dw_pcie_ep_func_select(struct dw_pcie_ep *ep, u8 func_no)
 {
 	unsigned int func_offset = 0;
@@ -59,6 +72,47 @@ void dw_pcie_ep_reset_bar(struct dw_pcie *pci, enum pci_barno bar)
 		__dw_pcie_ep_reset_bar(pci, func_no, bar, 0);
 }
 
+static u8 __dw_pcie_ep_find_next_cap(struct dw_pcie_ep *ep, u8 func_no,
+		u8 cap_ptr, u8 cap)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+	unsigned int func_offset = 0;
+	u8 cap_id, next_cap_ptr;
+	u16 reg;
+
+	if (!cap_ptr)
+		return 0;
+
+	func_offset = dw_pcie_ep_func_select(ep, func_no);
+
+	reg = dw_pcie_readw_dbi(pci, func_offset + cap_ptr);
+	cap_id = (reg & 0x00ff);
+
+	if (cap_id > PCI_CAP_ID_MAX)
+		return 0;
+
+	if (cap_id == cap)
+		return cap_ptr;
+
+	next_cap_ptr = (reg & 0xff00) >> 8;
+	return __dw_pcie_ep_find_next_cap(ep, func_no, next_cap_ptr, cap);
+}
+
+static u8 dw_pcie_ep_find_capability(struct dw_pcie_ep *ep, u8 func_no, u8 cap)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+	unsigned int func_offset = 0;
+	u8 next_cap_ptr;
+	u16 reg;
+
+	func_offset = dw_pcie_ep_func_select(ep, func_no);
+
+	reg = dw_pcie_readw_dbi(pci, func_offset + PCI_CAPABILITY_LIST);
+	next_cap_ptr = (reg & 0x00ff);
+
+	return __dw_pcie_ep_find_next_cap(ep, func_no, next_cap_ptr, cap);
+}
+
 static int dw_pcie_ep_write_header(struct pci_epc *epc, u8 func_no,
 				   struct pci_epf_header *hdr)
 {
@@ -246,13 +300,18 @@ static int dw_pcie_ep_get_msi(struct pci_epc *epc, u8 func_no)
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 	u32 val, reg;
 	unsigned int func_offset = 0;
+	struct dw_pcie_ep_func *ep_func;
 
-	if (!ep->msi_cap)
+	ep_func = dw_pcie_ep_get_func_from_ep(ep, func_no);
+	if (!ep_func)
+		return -EINVAL;
+
+	if (!ep_func->msi_cap)
 		return -EINVAL;
 
 	func_offset = dw_pcie_ep_func_select(ep, func_no);
 
-	reg = ep->msi_cap + func_offset + PCI_MSI_FLAGS;
+	reg = ep_func->msi_cap + func_offset + PCI_MSI_FLAGS;
 	val = dw_pcie_readw_dbi(pci, reg);
 	if (!(val & PCI_MSI_FLAGS_ENABLE))
 		return -EINVAL;
@@ -268,13 +327,18 @@ static int dw_pcie_ep_set_msi(struct pci_epc *epc, u8 func_no, u8 interrupts)
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 	u32 val, reg;
 	unsigned int func_offset = 0;
+	struct dw_pcie_ep_func *ep_func;
+
+	ep_func = dw_pcie_ep_get_func_from_ep(ep, func_no);
+	if (!ep_func)
+		return -EINVAL;
 
-	if (!ep->msi_cap)
+	if (!ep_func->msi_cap)
 		return -EINVAL;
 
 	func_offset = dw_pcie_ep_func_select(ep, func_no);
 
-	reg = ep->msi_cap + func_offset + PCI_MSI_FLAGS;
+	reg = ep_func->msi_cap + func_offset + PCI_MSI_FLAGS;
 	val = dw_pcie_readw_dbi(pci, reg);
 	val &= ~PCI_MSI_FLAGS_QMASK;
 	val |= (interrupts << 1) & PCI_MSI_FLAGS_QMASK;
@@ -291,13 +355,18 @@ static int dw_pcie_ep_get_msix(struct pci_epc *epc, u8 func_no)
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 	u32 val, reg;
 	unsigned int func_offset = 0;
+	struct dw_pcie_ep_func *ep_func;
+
+	ep_func = dw_pcie_ep_get_func_from_ep(ep, func_no);
+	if (!ep_func)
+		return -EINVAL;
 
-	if (!ep->msix_cap)
+	if (!ep_func->msix_cap)
 		return -EINVAL;
 
 	func_offset = dw_pcie_ep_func_select(ep, func_no);
 
-	reg = ep->msix_cap + func_offset + PCI_MSIX_FLAGS;
+	reg = ep_func->msix_cap + func_offset + PCI_MSIX_FLAGS;
 	val = dw_pcie_readw_dbi(pci, reg);
 	if (!(val & PCI_MSIX_FLAGS_ENABLE))
 		return -EINVAL;
@@ -313,13 +382,18 @@ static int dw_pcie_ep_set_msix(struct pci_epc *epc, u8 func_no, u16 interrupts)
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 	u32 val, reg;
 	unsigned int func_offset = 0;
+	struct dw_pcie_ep_func *ep_func;
 
-	if (!ep->msix_cap)
+	ep_func = dw_pcie_ep_get_func_from_ep(ep, func_no);
+	if (!ep_func)
+		return -EINVAL;
+
+	if (!ep_func->msix_cap)
 		return -EINVAL;
 
 	func_offset = dw_pcie_ep_func_select(ep, func_no);
 
-	reg = ep->msix_cap + func_offset + PCI_MSIX_FLAGS;
+	reg = ep_func->msix_cap + func_offset + PCI_MSIX_FLAGS;
 	val = dw_pcie_readw_dbi(pci, reg);
 	val &= ~PCI_MSIX_FLAGS_QSIZE;
 	val |= interrupts;
@@ -404,6 +478,7 @@ int dw_pcie_ep_raise_msi_irq(struct dw_pcie_ep *ep, u8 func_no,
 			     u8 interrupt_num)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+	struct dw_pcie_ep_func *ep_func;
 	struct pci_epc *epc = ep->epc;
 	unsigned int aligned_offset;
 	unsigned int func_offset = 0;
@@ -413,25 +488,29 @@ int dw_pcie_ep_raise_msi_irq(struct dw_pcie_ep *ep, u8 func_no,
 	bool has_upper;
 	int ret;
 
-	if (!ep->msi_cap)
+	ep_func = dw_pcie_ep_get_func_from_ep(ep, func_no);
+	if (!ep_func)
+		return -EINVAL;
+
+	if (!ep_func->msi_cap)
 		return -EINVAL;
 
 	func_offset = dw_pcie_ep_func_select(ep, func_no);
 
 	/* Raise MSI per the PCI Local Bus Specification Revision 3.0, 6.8.1. */
-	reg = ep->msi_cap + func_offset + PCI_MSI_FLAGS;
+	reg = ep_func->msi_cap + func_offset + PCI_MSI_FLAGS;
 	msg_ctrl = dw_pcie_readw_dbi(pci, reg);
 	has_upper = !!(msg_ctrl & PCI_MSI_FLAGS_64BIT);
-	reg = ep->msi_cap + func_offset + PCI_MSI_ADDRESS_LO;
+	reg = ep_func->msi_cap + func_offset + PCI_MSI_ADDRESS_LO;
 	msg_addr_lower = dw_pcie_readl_dbi(pci, reg);
 	if (has_upper) {
-		reg = ep->msi_cap + func_offset + PCI_MSI_ADDRESS_HI;
+		reg = ep_func->msi_cap + func_offset + PCI_MSI_ADDRESS_HI;
 		msg_addr_upper = dw_pcie_readl_dbi(pci, reg);
-		reg = ep->msi_cap + func_offset + PCI_MSI_DATA_64;
+		reg = ep_func->msi_cap + func_offset + PCI_MSI_DATA_64;
 		msg_data = dw_pcie_readw_dbi(pci, reg);
 	} else {
 		msg_addr_upper = 0;
-		reg = ep->msi_cap + func_offset + PCI_MSI_DATA_32;
+		reg = ep_func->msi_cap + func_offset + PCI_MSI_DATA_32;
 		msg_data = dw_pcie_readw_dbi(pci, reg);
 	}
 	aligned_offset = msg_addr_lower & (epc->mem->page_size - 1);
@@ -467,6 +546,7 @@ int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
 			      u16 interrupt_num)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+	struct dw_pcie_ep_func *ep_func;
 	struct pci_epc *epc = ep->epc;
 	u16 tbl_offset, bir;
 	unsigned int func_offset = 0;
@@ -477,9 +557,16 @@ int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
 	void __iomem *msix_tbl;
 	int ret;
 
+	ep_func = dw_pcie_ep_get_func_from_ep(ep, func_no);
+	if (!ep_func)
+		return -EINVAL;
+
+	if (!ep_func->msix_cap)
+		return -EINVAL;
+
 	func_offset = dw_pcie_ep_func_select(ep, func_no);
 
-	reg = ep->msix_cap + func_offset + PCI_MSIX_TABLE;
+	reg = ep_func->msix_cap + func_offset + PCI_MSIX_TABLE;
 	tbl_offset = dw_pcie_readl_dbi(pci, reg);
 	bir = (tbl_offset & PCI_MSIX_TABLE_BIR);
 	tbl_offset &= PCI_MSIX_TABLE_OFFSET;
@@ -558,6 +645,7 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
 	int i;
 	int ret;
 	u32 reg;
+	u8 func_no;
 	void *addr;
 	u8 hdr_type;
 	unsigned int nbars;
@@ -566,6 +654,9 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 	struct device *dev = pci->dev;
 	struct device_node *np = dev->of_node;
+	struct dw_pcie_ep_func *ep_func;
+
+	INIT_LIST_HEAD(&ep->func_list);
 
 	if (!pci->dbi_base || !pci->dbi_base2) {
 		dev_err(dev, "dbi_base/dbi_base2 is not populated\n");
@@ -632,9 +723,19 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
 	if (ret < 0)
 		epc->max_functions = 1;
 
-	ep->msi_cap = dw_pcie_find_capability(pci, PCI_CAP_ID_MSI);
+	for (func_no = 0; func_no < epc->max_functions; func_no++) {
+		ep_func = devm_kzalloc(dev, sizeof(*ep_func), GFP_KERNEL);
+		if (!ep_func)
+			return -ENOMEM;
 
-	ep->msix_cap = dw_pcie_find_capability(pci, PCI_CAP_ID_MSIX);
+		ep_func->func_no = func_no;
+		ep_func->msi_cap = dw_pcie_ep_find_capability(ep, func_no,
+							      PCI_CAP_ID_MSI);
+		ep_func->msix_cap = dw_pcie_ep_find_capability(ep, func_no,
+							       PCI_CAP_ID_MSIX);
+
+		list_add_tail(&ep_func->list, &ep->func_list);
+	}
 
 	if (ep->ops->ep_init)
 		ep->ops->ep_init(ep);
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index cb32afa..dd9b7b4 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -230,8 +230,16 @@ struct dw_pcie_ep_ops {
 	unsigned int (*func_conf_select)(struct dw_pcie_ep *ep, u8 func_no);
 };
 
+struct dw_pcie_ep_func {
+	struct list_head	list;
+	u8			func_no;
+	u8			msi_cap;	/* MSI capability offset */
+	u8			msix_cap;	/* MSI-X capability offset */
+};
+
 struct dw_pcie_ep {
 	struct pci_epc		*epc;
+	struct list_head	func_list;
 	const struct dw_pcie_ep_ops *ops;
 	phys_addr_t		phys_base;
 	size_t			addr_size;
@@ -244,8 +252,6 @@ struct dw_pcie_ep {
 	u32			num_ob_windows;
 	void __iomem		*msi_mem;
 	phys_addr_t		msi_mem_phys;
-	u8			msi_cap;	/* MSI capability offset */
-	u8			msix_cap;	/* MSI-X capability offset */
 };
 
 struct dw_pcie_ops {
@@ -437,6 +443,8 @@ int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
 int dw_pcie_ep_raise_msix_irq_doorbell(struct dw_pcie_ep *ep, u8 func_no,
 				       u16 interrupt_num);
 void dw_pcie_ep_reset_bar(struct dw_pcie *pci, enum pci_barno bar);
+struct dw_pcie_ep_func *
+dw_pcie_ep_get_func_from_ep(struct dw_pcie_ep *ep, u8 func_no);
 #else
 static inline void dw_pcie_ep_linkup(struct dw_pcie_ep *ep)
 {
@@ -478,5 +486,11 @@ static inline int dw_pcie_ep_raise_msix_irq_doorbell(struct dw_pcie_ep *ep,
 static inline void dw_pcie_ep_reset_bar(struct dw_pcie *pci, enum pci_barno bar)
 {
 }
+
+struct dw_pcie_ep_func *
+dw_pcie_ep_get_func_from_ep(struct dw_pcie_ep *ep, u8 func_no)
+{
+	return NULL;
+}
 #endif
 #endif /* _PCIE_DESIGNWARE_H */
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
