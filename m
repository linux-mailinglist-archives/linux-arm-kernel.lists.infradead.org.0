Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 206E316BB95
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 09:13:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQDwNvG7Cf9OCQSUpAAd0RQd+lKv+qzL8s+YK6AKzUg=; b=OkKrqkrAa2JQJ+
	Js/Ibgs9e8SVjrjGFVcY4XDZ00ETxZIFPjdPhCnqSl6nf8/8Gy8v+ZUISy7c4xrtJoxKxOqIH6ckP
	6Wc9KIjt0BbWPYYlskHlicuf5percKojjk1NHStVGstmoL53pkOmspP8sPYVt0WeAGj+be7BOMP/x
	hA/j8Iy7u6njFrv17aghW+U/TCC1XEHqmAXjvPPUbmqSSQRnuyMTTd69HAoT3zWaqOnRk2w8XjTLu
	HTqIz4iIInJpsJPZzRoGU1AR+y+qsni3+fHmzvY/O7cZlJu/qnQgXvwGFskZempRo32VAkR76EtmW
	JaXq/vqcd4GYeJDcTYHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6VKw-0000zS-HP; Tue, 25 Feb 2020 08:13:02 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VKk-0000xp-Jk
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 08:12:53 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01P8Cgih022807;
 Tue, 25 Feb 2020 02:12:42 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582618362;
 bh=7feZc0VOIpjf0NIO8as8tjy992qKw4MEu7qLaQo6Shc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=onrCAsQYjxCM9GtpCgtOm0WWcxgEji714fW9eitDibfyLc12GFymLAtfx+clpFZyz
 w7aKGfOZSl+2JbS9Fo1mFXrHlhNKCPn4FWYV0pGv3uNjsRSMDOvRyQeYkFVC22M6Dq
 dJfQzgQDRhMfR+Idn4tfPJLQFBcNcsrafR3u81BY=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01P8CgCD025536;
 Tue, 25 Feb 2020 02:12:42 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 25
 Feb 2020 02:12:42 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 25 Feb 2020 02:12:42 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01P8CYu9026220;
 Tue, 25 Feb 2020 02:12:39 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Murali Karicheri <m-karicheri2@ti.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Andrew Murray <amurray@thegoodpenguin.co.uk>,
 Bjorn Helgaas <bhelgaas@google.com>, Gustavo Pimentel
 <gustavo.pimentel@synopsys.com>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH v2 1/3] PCI: endpoint: Fix ->set_msix() to take BIR and offset
 as arguments
Date: Tue, 25 Feb 2020 13:47:01 +0530
Message-ID: <20200225081703.8857-2-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200225081703.8857-1-kishon@ti.com>
References: <20200225081703.8857-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_001250_732693_6DA0E206 
X-CRM114-Status: GOOD (  22.96  )
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

commit 8963106eabdc ("PCI: endpoint: Add MSI-X interfaces") while
adding support to raise MSI-X interrupts from endpoint didn't include
BAR Indicator register (BIR) configuration and MSI-X table offset as
arguments in pci_epc_set_msix(). This would result in endpoint
controller register using random BAR indicator register, the memory
for which might not be allocated by the endpoint function driver.
Add BAR indicator register and MSI-X table offset as arguments in
pci_epc_set_msix() and allocate space for MSI-X table and pending
bit array (PBA) in pci-epf-test endpoint function driver.

Fixes: 8963106eabdc ("PCI: endpoint: Add MSI-X interfaces")
Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../pci/controller/dwc/pcie-designware-ep.c   | 15 +++++++--
 drivers/pci/endpoint/functions/pci-epf-test.c | 31 +++++++++++++++----
 drivers/pci/endpoint/pci-epc-core.c           |  7 +++--
 include/linux/pci-epc.h                       |  6 ++--
 4 files changed, 47 insertions(+), 12 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c b/drivers/pci/controller/dwc/pcie-designware-ep.c
index cfeccd7e9fff..19ab3903f042 100644
--- a/drivers/pci/controller/dwc/pcie-designware-ep.c
+++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
@@ -269,7 +269,8 @@ static int dw_pcie_ep_get_msix(struct pci_epc *epc, u8 func_no)
 	return val;
 }
 
-static int dw_pcie_ep_set_msix(struct pci_epc *epc, u8 func_no, u16 interrupts)
+static int dw_pcie_ep_set_msix(struct pci_epc *epc, u8 func_no, u16 interrupts,
+			       enum pci_barno bir, u32 offset)
 {
 	struct dw_pcie_ep *ep = epc_get_drvdata(epc);
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
@@ -278,12 +279,22 @@ static int dw_pcie_ep_set_msix(struct pci_epc *epc, u8 func_no, u16 interrupts)
 	if (!ep->msix_cap)
 		return -EINVAL;
 
+	dw_pcie_dbi_ro_wr_en(pci);
+
 	reg = ep->msix_cap + PCI_MSIX_FLAGS;
 	val = dw_pcie_readw_dbi(pci, reg);
 	val &= ~PCI_MSIX_FLAGS_QSIZE;
 	val |= interrupts;
-	dw_pcie_dbi_ro_wr_en(pci);
 	dw_pcie_writew_dbi(pci, reg, val);
+
+	reg = ep->msix_cap + PCI_MSIX_TABLE;
+	val = offset | bir;
+	dw_pcie_writel_dbi(pci, reg, val);
+
+	reg = ep->msix_cap + PCI_MSIX_PBA;
+	val = (offset + (interrupts * PCI_MSIX_ENTRY_SIZE)) | bir;
+	dw_pcie_writel_dbi(pci, reg, val);
+
 	dw_pcie_dbi_ro_wr_dis(pci);
 
 	return 0;
diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
index db15b080519d..d5d675575347 100644
--- a/drivers/pci/endpoint/functions/pci-epf-test.c
+++ b/drivers/pci/endpoint/functions/pci-epf-test.c
@@ -50,6 +50,7 @@ struct pci_epf_test {
 	void			*reg[PCI_STD_NUM_BARS];
 	struct pci_epf		*epf;
 	enum pci_barno		test_reg_bar;
+	size_t			msix_table_offset;
 	struct delayed_work	cmd_handler;
 	struct dma_chan		*dma_chan;
 	struct completion	transfer_complete;
@@ -674,6 +675,10 @@ static int pci_epf_test_alloc_space(struct pci_epf *epf)
 	struct pci_epf_test *epf_test = epf_get_drvdata(epf);
 	struct device *dev = &epf->dev;
 	struct pci_epf_bar *epf_bar;
+	size_t msix_table_size = 0;
+	size_t test_reg_bar_size;
+	size_t pba_size = 0;
+	bool msix_capable;
 	void *base;
 	int bar, add;
 	enum pci_barno test_reg_bar = epf_test->test_reg_bar;
@@ -682,13 +687,25 @@ static int pci_epf_test_alloc_space(struct pci_epf *epf)
 
 	epc_features = epf_test->epc_features;
 
-	if (epc_features->bar_fixed_size[test_reg_bar])
+	test_reg_bar_size = ALIGN(sizeof(struct pci_epf_test_reg), 128);
+
+	msix_capable = epc_features->msix_capable;
+	if (msix_capable) {
+		msix_table_size = PCI_MSIX_ENTRY_SIZE * epf->msix_interrupts;
+		epf_test->msix_table_offset = test_reg_bar_size;
+		/* Align to QWORD or 8 Bytes */
+		pba_size = ALIGN(DIV_ROUND_UP(epf->msix_interrupts, 8), 8);
+	}
+	test_reg_size = test_reg_bar_size + msix_table_size + pba_size;
+
+	if (epc_features->bar_fixed_size[test_reg_bar]) {
+		if (test_reg_size > bar_size[test_reg_bar])
+			return -ENOMEM;
 		test_reg_size = bar_size[test_reg_bar];
-	else
-		test_reg_size = sizeof(struct pci_epf_test_reg);
+	}
 
-	base = pci_epf_alloc_space(epf, test_reg_size,
-				   test_reg_bar, epc_features->align);
+	base = pci_epf_alloc_space(epf, test_reg_size, test_reg_bar,
+				   epc_features->align);
 	if (!base) {
 		dev_err(dev, "Failed to allocated register space\n");
 		return -ENOMEM;
@@ -784,7 +801,9 @@ static int pci_epf_test_bind(struct pci_epf *epf)
 	}
 
 	if (msix_capable) {
-		ret = pci_epc_set_msix(epc, epf->func_no, epf->msix_interrupts);
+		ret = pci_epc_set_msix(epc, epf->func_no, epf->msix_interrupts,
+				       epf_test->test_reg_bar,
+				       epf_test->msix_table_offset);
 		if (ret) {
 			dev_err(dev, "MSI-X configuration failed\n");
 			return ret;
diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index dc1c673534e0..13c03ccb39ac 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -297,10 +297,13 @@ EXPORT_SYMBOL_GPL(pci_epc_get_msix);
  * @epc: the EPC device on which MSI-X has to be configured
  * @func_no: the endpoint function number in the EPC device
  * @interrupts: number of MSI-X interrupts required by the EPF
+ * @bir: BAR where the MSI-X table resides
+ * @offset: Offset pointing to the start of MSI-X table
  *
  * Invoke to set the required number of MSI-X interrupts.
  */
-int pci_epc_set_msix(struct pci_epc *epc, u8 func_no, u16 interrupts)
+int pci_epc_set_msix(struct pci_epc *epc, u8 func_no, u16 interrupts,
+		     enum pci_barno bir, u32 offset)
 {
 	int ret;
 
@@ -312,7 +315,7 @@ int pci_epc_set_msix(struct pci_epc *epc, u8 func_no, u16 interrupts)
 		return 0;
 
 	mutex_lock(&epc->lock);
-	ret = epc->ops->set_msix(epc, func_no, interrupts - 1);
+	ret = epc->ops->set_msix(epc, func_no, interrupts - 1, bir, offset);
 	mutex_unlock(&epc->lock);
 
 	return ret;
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index ccaf6e3fa931..105801f6e300 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -53,7 +53,8 @@ struct pci_epc_ops {
 			      phys_addr_t addr);
 	int	(*set_msi)(struct pci_epc *epc, u8 func_no, u8 interrupts);
 	int	(*get_msi)(struct pci_epc *epc, u8 func_no);
-	int	(*set_msix)(struct pci_epc *epc, u8 func_no, u16 interrupts);
+	int	(*set_msix)(struct pci_epc *epc, u8 func_no, u16 interrupts,
+			    enum pci_barno, u32 offset);
 	int	(*get_msix)(struct pci_epc *epc, u8 func_no);
 	int	(*raise_irq)(struct pci_epc *epc, u8 func_no,
 			     enum pci_epc_irq_type type, u16 interrupt_num);
@@ -178,7 +179,8 @@ void pci_epc_unmap_addr(struct pci_epc *epc, u8 func_no,
 			phys_addr_t phys_addr);
 int pci_epc_set_msi(struct pci_epc *epc, u8 func_no, u8 interrupts);
 int pci_epc_get_msi(struct pci_epc *epc, u8 func_no);
-int pci_epc_set_msix(struct pci_epc *epc, u8 func_no, u16 interrupts);
+int pci_epc_set_msix(struct pci_epc *epc, u8 func_no, u16 interrupts,
+		     enum pci_barno, u32 offset);
 int pci_epc_get_msix(struct pci_epc *epc, u8 func_no);
 int pci_epc_raise_irq(struct pci_epc *epc, u8 func_no,
 		      enum pci_epc_irq_type type, u16 interrupt_num);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
