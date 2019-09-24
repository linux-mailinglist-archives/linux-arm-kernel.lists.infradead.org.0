Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D74DABC01F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 04:31:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=P19r7e5kFw5bGhgOqN49SBwQAaCjr7IPc4hExErrO7g=; b=m8w+7ja4xFPlY8SnkysKP+Fv3H
	faievMjPq8eaLsOs9DW1vl2wFjFU5jMo0ofDZpeD56Iz/2B+58OlogevrKL11k+31GVcuMsYx+lId
	tkZVrT/GVe0LYzzz2VflUwGx1bH4MSQVIPRHyutLduopqzv2OFpLNPGYoXM6Y/2aDy+pRs/Fxtyx0
	+31XhftYhbQ9PDYFMeAEeWOW5sKH33lj+Qf1zNOy5AyvVpvOUc3+qhxWRm2YdGilh+QRzWw01pVJj
	60pSUxukPChRAEt1n7kUcHTbGPPGsr/MvoCo4201utNci3lcgML1CovoF24zwwhNIrzyj9fTNTYEW
	zITjPaRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCac3-0005zt-Ca; Tue, 24 Sep 2019 02:31:35 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCaaJ-0002wB-KH
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 02:29:49 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 55678200386;
 Tue, 24 Sep 2019 04:29:46 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 544F520037D;
 Tue, 24 Sep 2019 04:29:38 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 36B9540323;
 Tue, 24 Sep 2019 10:29:24 +0800 (SGT)
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 leoyang.li@nxp.com, kishon@ti.com, lorenzo.pieralisi@arm.com,
 minghuan.Lian@nxp.com, mingkai.hu@nxp.com, roy.zang@nxp.com,
 jingoohan1@gmail.com, gustavo.pimentel@synopsys.com, andrew.murray@arm.com,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Subject: [PATCH v4 07/11] PCI: layerscape: Modify the way of getting
 capability with different PEX
Date: Tue, 24 Sep 2019 10:18:45 +0800
Message-Id: <20190924021849.3185-8-xiaowei.bao@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190924021849.3185-1-xiaowei.bao@nxp.com>
References: <20190924021849.3185-1-xiaowei.bao@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_192948_031259_59C82E03 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Xiaowei Bao <xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The different PCIe controller in one board may be have different
capability of MSI or MSIX, so change the way of getting the MSI
capability, make it more flexible.

Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
---
v2:
 - Remove the repeated assignment code.
v3:
 - Use ep_func msi_cap and msix_cap to decide the msi_capable and
   msix_capable of pci_epc_features struct.
v4:
 - No change.

 drivers/pci/controller/dwc/pci-layerscape-ep.c | 31 +++++++++++++++++++-------
 1 file changed, 23 insertions(+), 8 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-layerscape-ep.c b/drivers/pci/controller/dwc/pci-layerscape-ep.c
index a9c552e..1e07287 100644
--- a/drivers/pci/controller/dwc/pci-layerscape-ep.c
+++ b/drivers/pci/controller/dwc/pci-layerscape-ep.c
@@ -22,6 +22,7 @@
 
 struct ls_pcie_ep {
 	struct dw_pcie		*pci;
+	struct pci_epc_features	*ls_epc;
 };
 
 #define to_ls_pcie_ep(x)	dev_get_drvdata((x)->dev)
@@ -40,26 +41,31 @@ static const struct of_device_id ls_pcie_ep_of_match[] = {
 	{ },
 };
 
-static const struct pci_epc_features ls_pcie_epc_features = {
-	.linkup_notifier = false,
-	.msi_capable = true,
-	.msix_capable = false,
-	.bar_fixed_64bit = (1 << BAR_2) | (1 << BAR_4),
-};
-
 static const struct pci_epc_features*
 ls_pcie_ep_get_features(struct dw_pcie_ep *ep)
 {
-	return &ls_pcie_epc_features;
+	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+	struct ls_pcie_ep *pcie = to_ls_pcie_ep(pci);
+
+	return pcie->ls_epc;
 }
 
 static void ls_pcie_ep_init(struct dw_pcie_ep *ep)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+	struct ls_pcie_ep *pcie = to_ls_pcie_ep(pci);
+	struct dw_pcie_ep_func *ep_func;
 	enum pci_barno bar;
 
+	ep_func = dw_pcie_ep_get_func_from_ep(ep, 0);
+	if (!ep_func)
+		return;
+
 	for (bar = BAR_0; bar <= BAR_5; bar++)
 		dw_pcie_ep_reset_bar(pci, bar);
+
+	pcie->ls_epc->msi_capable = ep_func->msi_cap ? true : false;
+	pcie->ls_epc->msix_capable = ep_func->msix_cap ? true : false;
 }
 
 static int ls_pcie_ep_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
@@ -119,6 +125,7 @@ static int __init ls_pcie_ep_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct dw_pcie *pci;
 	struct ls_pcie_ep *pcie;
+	struct pci_epc_features *ls_epc;
 	struct resource *dbi_base;
 	int ret;
 
@@ -130,6 +137,10 @@ static int __init ls_pcie_ep_probe(struct platform_device *pdev)
 	if (!pci)
 		return -ENOMEM;
 
+	ls_epc = devm_kzalloc(dev, sizeof(*ls_epc), GFP_KERNEL);
+	if (!ls_epc)
+		return -ENOMEM;
+
 	dbi_base = platform_get_resource_byname(pdev, IORESOURCE_MEM, "regs");
 	pci->dbi_base = devm_pci_remap_cfg_resource(dev, dbi_base);
 	if (IS_ERR(pci->dbi_base))
@@ -140,6 +151,10 @@ static int __init ls_pcie_ep_probe(struct platform_device *pdev)
 	pci->ops = &ls_pcie_ep_ops;
 	pcie->pci = pci;
 
+	ls_epc->bar_fixed_64bit = (1 << BAR_2) | (1 << BAR_4),
+
+	pcie->ls_epc = ls_epc;
+
 	platform_set_drvdata(pdev, pcie);
 
 	ret = ls_add_pcie_ep(pcie, pdev);
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
