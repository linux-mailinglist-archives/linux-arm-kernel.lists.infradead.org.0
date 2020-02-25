Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8387D16BB9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 09:13:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ff3wT9k0qwQiP6VShJHg2erJNsKai+imp/Bq7JDyfhs=; b=ERs/nBgoU9ITw0
	9UbhTnfYa+ZHS2s7e+A2wTOylF0N56l6SvYHfEO/wvTCIs66/76hv7/h7EqIag9ql6L3ygy6VtV/H
	VsPAHFFGmmw9IZoMW4qRNwOCbFPyVJJcbvZ4n9YDIuVxazTCaHB02PpxcSwXn0w5cpw/riUlZ+TMk
	fzKIDOMu3lAAbHSFLDESYUyunPmQh5X4HIZ+aInocbIpmh7kpYhGuM0Vu0wXyUKe5IbsVAZlCT4WB
	oLI0KWUDCYqfTbr+2ebESjTP9YkavPVKk/iyEjU6IyFb72Km9JqObg82QxZ4FQEe5NfclpopV7z/m
	prikv+z9B7b4KxEmwqMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6VLG-000185-55; Tue, 25 Feb 2020 08:13:22 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VKl-0000xt-2U
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 08:12:53 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01P8Ck4r022848;
 Tue, 25 Feb 2020 02:12:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582618366;
 bh=MFKlsVEIsp/GM8V4eXJvs2LWVxdQ1A0Od80VYBrMQL0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=KL2C3bOp08O9vYDn2sumYsHzTO2DYtiIO+keBI+XhoV+aKg1eQXj7SHlGf6xOHC1X
 qvGo8v8PRUCU4vdW9e7tm8AOsuHNTzpDfi5F12ajbm0rYnBESQLOXTKuiAVBsQWTsF
 +r5gJMWU9QQFSCvQphGY7T2FviJKOrSC6SVZO01c=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01P8CkQQ092228
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 25 Feb 2020 02:12:46 -0600
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 25
 Feb 2020 02:12:45 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 25 Feb 2020 02:12:46 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01P8CYuA026220;
 Tue, 25 Feb 2020 02:12:42 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Murali Karicheri <m-karicheri2@ti.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Andrew Murray <amurray@thegoodpenguin.co.uk>,
 Bjorn Helgaas <bhelgaas@google.com>, Gustavo Pimentel
 <gustavo.pimentel@synopsys.com>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH v2 2/3] PCI: dwc: Fix dw_pcie_ep_raise_msix_irq() to get
 correct MSI-X table address
Date: Tue, 25 Feb 2020 13:47:02 +0530
Message-ID: <20200225081703.8857-3-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200225081703.8857-1-kishon@ti.com>
References: <20200225081703.8857-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_001251_193202_4BDDBEFE 
X-CRM114-Status: GOOD (  22.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pci@vger.kernel.org, Xiaowei Bao <xiaowei.bao@nxp.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

commit beb4641a787d ("PCI: dwc: Add MSI-X callbacks handler"),
in order to raise MSI-X interrupt, obtained MSIX table address from
Base Address Register (BAR). However BAR only holds PCI address
programmed by the host whereas the MSI-X table should be in the local
memory.

Store the MSI-X table address (virtual address) as part of ->set_bar()
callback and use that to get the message address and message data
here.

Fixes: beb4641a787d ("PCI: dwc: Add MSI-X callbacks handler")
Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../pci/controller/dwc/pcie-designware-ep.c   | 46 +++++++------------
 drivers/pci/controller/dwc/pcie-designware.h  |  1 +
 drivers/pci/endpoint/pci-epf-core.c           |  2 +
 include/linux/pci-epf.h                       | 15 ++++++
 4 files changed, 35 insertions(+), 29 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c b/drivers/pci/controller/dwc/pcie-designware-ep.c
index 19ab3903f042..b61e47365456 100644
--- a/drivers/pci/controller/dwc/pcie-designware-ep.c
+++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
@@ -125,6 +125,7 @@ static void dw_pcie_ep_clear_bar(struct pci_epc *epc, u8 func_no,
 
 	dw_pcie_disable_atu(pci, atu_index, DW_PCIE_REGION_INBOUND);
 	clear_bit(atu_index, ep->ib_window_map);
+	ep->epf_bar[bar] = NULL;
 }
 
 static int dw_pcie_ep_set_bar(struct pci_epc *epc, u8 func_no,
@@ -158,6 +159,7 @@ static int dw_pcie_ep_set_bar(struct pci_epc *epc, u8 func_no,
 		dw_pcie_writel_dbi(pci, reg + 4, 0);
 	}
 
+	ep->epf_bar[bar] = epf_bar;
 	dw_pcie_dbi_ro_wr_dis(pci);
 
 	return 0;
@@ -420,55 +422,41 @@ int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
 			     u16 interrupt_num)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+	struct pci_epf_msix_tbl *msix_tbl;
 	struct pci_epc *epc = ep->epc;
-	u16 tbl_offset, bir;
-	u32 bar_addr_upper, bar_addr_lower;
-	u32 msg_addr_upper, msg_addr_lower;
+	struct pci_epf_bar *epf_bar;
 	u32 reg, msg_data, vec_ctrl;
-	u64 tbl_addr, msg_addr, reg_u64;
-	void __iomem *msix_tbl;
+	unsigned int aligned_offset;
+	u32 tbl_offset;
+	u64 msg_addr;
 	int ret;
+	u8 bir;
 
 	reg = ep->msix_cap + PCI_MSIX_TABLE;
 	tbl_offset = dw_pcie_readl_dbi(pci, reg);
 	bir = (tbl_offset & PCI_MSIX_TABLE_BIR);
 	tbl_offset &= PCI_MSIX_TABLE_OFFSET;
 
-	reg = PCI_BASE_ADDRESS_0 + (4 * bir);
-	bar_addr_upper = 0;
-	bar_addr_lower = dw_pcie_readl_dbi(pci, reg);
-	reg_u64 = (bar_addr_lower & PCI_BASE_ADDRESS_MEM_TYPE_MASK);
-	if (reg_u64 == PCI_BASE_ADDRESS_MEM_TYPE_64)
-		bar_addr_upper = dw_pcie_readl_dbi(pci, reg + 4);
+	epf_bar = ep->epf_bar[bir];
+	msix_tbl = epf_bar->addr;
+	msix_tbl = (struct pci_epf_msix_tbl *)((char *)msix_tbl + tbl_offset);
 
-	tbl_addr = ((u64) bar_addr_upper) << 32 | bar_addr_lower;
-	tbl_addr += (tbl_offset + ((interrupt_num - 1) * PCI_MSIX_ENTRY_SIZE));
-	tbl_addr &= PCI_BASE_ADDRESS_MEM_MASK;
-
-	msix_tbl = ioremap(ep->phys_base + tbl_addr,
-				   PCI_MSIX_ENTRY_SIZE);
-	if (!msix_tbl)
-		return -EINVAL;
-
-	msg_addr_lower = readl(msix_tbl + PCI_MSIX_ENTRY_LOWER_ADDR);
-	msg_addr_upper = readl(msix_tbl + PCI_MSIX_ENTRY_UPPER_ADDR);
-	msg_addr = ((u64) msg_addr_upper) << 32 | msg_addr_lower;
-	msg_data = readl(msix_tbl + PCI_MSIX_ENTRY_DATA);
-	vec_ctrl = readl(msix_tbl + PCI_MSIX_ENTRY_VECTOR_CTRL);
-
-	iounmap(msix_tbl);
+	msg_addr = msix_tbl[(interrupt_num - 1)].msg_addr;
+	msg_data = msix_tbl[(interrupt_num - 1)].msg_data;
+	vec_ctrl = msix_tbl[(interrupt_num - 1)].vector_ctrl;
 
 	if (vec_ctrl & PCI_MSIX_ENTRY_CTRL_MASKBIT) {
 		dev_dbg(pci->dev, "MSI-X entry ctrl set\n");
 		return -EPERM;
 	}
 
-	ret = dw_pcie_ep_map_addr(epc, func_no, ep->msi_mem_phys, msg_addr,
+	aligned_offset = msg_addr & (epc->mem->page_size - 1);
+	ret = dw_pcie_ep_map_addr(epc, func_no, ep->msi_mem_phys,  msg_addr,
 				  epc->mem->page_size);
 	if (ret)
 		return ret;
 
-	writel(msg_data, ep->msi_mem);
+	writel(msg_data, ep->msi_mem + aligned_offset);
 
 	dw_pcie_ep_unmap_addr(epc, func_no, ep->msi_mem_phys);
 
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index a22ea5982817..0813c2b62f89 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -233,6 +233,7 @@ struct dw_pcie_ep {
 	phys_addr_t		msi_mem_phys;
 	u8			msi_cap;	/* MSI capability offset */
 	u8			msix_cap;	/* MSI-X capability offset */
+	struct pci_epf_bar	*epf_bar[PCI_STD_NUM_BARS];
 };
 
 struct dw_pcie_ops {
diff --git a/drivers/pci/endpoint/pci-epf-core.c b/drivers/pci/endpoint/pci-epf-core.c
index 6e0648991b5c..244e00f48c5c 100644
--- a/drivers/pci/endpoint/pci-epf-core.c
+++ b/drivers/pci/endpoint/pci-epf-core.c
@@ -87,6 +87,7 @@ void pci_epf_free_space(struct pci_epf *epf, void *addr, enum pci_barno bar)
 			  epf->bar[bar].phys_addr);
 
 	epf->bar[bar].phys_addr = 0;
+	epf->bar[bar].addr = NULL;
 	epf->bar[bar].size = 0;
 	epf->bar[bar].barno = 0;
 	epf->bar[bar].flags = 0;
@@ -123,6 +124,7 @@ void *pci_epf_alloc_space(struct pci_epf *epf, size_t size, enum pci_barno bar,
 	}
 
 	epf->bar[bar].phys_addr = phys_addr;
+	epf->bar[bar].addr = space;
 	epf->bar[bar].size = size;
 	epf->bar[bar].barno = bar;
 	epf->bar[bar].flags |= upper_32_bits(size) ?
diff --git a/include/linux/pci-epf.h b/include/linux/pci-epf.h
index bcdf4f07bde7..efbc08a153ff 100644
--- a/include/linux/pci-epf.h
+++ b/include/linux/pci-epf.h
@@ -89,10 +89,12 @@ struct pci_epf_driver {
 /**
  * struct pci_epf_bar - represents the BAR of EPF device
  * @phys_addr: physical address that should be mapped to the BAR
+ * @addr: virtual address corresponding to the @phys_addr
  * @size: the size of the address space present in BAR
  */
 struct pci_epf_bar {
 	dma_addr_t	phys_addr;
+	void		*addr;
 	size_t		size;
 	enum pci_barno	barno;
 	int		flags;
@@ -129,6 +131,19 @@ struct pci_epf {
 	struct mutex		lock;
 };
 
+/**
+ * struct pci_epf_msix_tbl - represents the MSIX table entry structure
+ * @msg_addr: Writes to this address will trigger MSIX interrupt in host
+ * @msg_data: Data that should be written to @msg_addr to trigger MSIX interrupt
+ * @vector_ctrl: Identifies if the function is prohibited from sending a message
+ * using this MSIX table entry
+ */
+struct pci_epf_msix_tbl {
+	u64 msg_addr;
+	u32 msg_data;
+	u32 vector_ctrl;
+};
+
 #define to_pci_epf(epf_dev) container_of((epf_dev), struct pci_epf, dev)
 
 #define pci_epf_register_driver(driver)    \
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
