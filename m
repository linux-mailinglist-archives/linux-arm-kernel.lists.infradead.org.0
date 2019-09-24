Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D26BC031
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 04:31:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MQqaCw601b9agoQBDH97J8coGbG9+qFzeA+E6rKXUFI=; b=tajoBcf/dq0XzGrVJKFnXTz52s
	VgHFBez9/jyYkDuvduD5/g3Zuf4jit+454FpditzrEE/HlLvHmYf5hxsKP4R1SRoXJ5eWSXB6DOaQ
	5Q5LlgpWDr/+j5wJ9XtDLUN+R56XXptOP8nLLFujuOjlrZAf3cDbBc6hElqx1yFNSZ1aMbIquEsFV
	e4Ei8qgIE1oLvetzPHfqxMr9lYxonYo9G0jxH2j0XwHx5Pv62/hAz4BPLn62DUL8v841rCsDMuTTr
	Qb2YzX73oAeBxquIVoZG7BuXkH6jvzB3AYHrvUSfgAbycwj1hGPEjY4Ncfhj9KW0janR6z3aBpL5u
	jCV9TIXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCacO-0006Ra-9b; Tue, 24 Sep 2019 02:31:56 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCaaL-0002zJ-RO
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 02:29:51 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 71717200952;
 Tue, 24 Sep 2019 04:29:48 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 73147200399;
 Tue, 24 Sep 2019 04:29:40 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 84CD140324;
 Tue, 24 Sep 2019 10:29:27 +0800 (SGT)
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 leoyang.li@nxp.com, kishon@ti.com, lorenzo.pieralisi@arm.com,
 minghuan.Lian@nxp.com, mingkai.hu@nxp.com, roy.zang@nxp.com,
 jingoohan1@gmail.com, gustavo.pimentel@synopsys.com, andrew.murray@arm.com,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Subject: [PATCH v4 09/11] PCI: layerscape: Add EP mode support for ls1088a and
 ls2088a
Date: Tue, 24 Sep 2019 10:18:47 +0800
Message-Id: <20190924021849.3185-10-xiaowei.bao@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190924021849.3185-1-xiaowei.bao@nxp.com>
References: <20190924021849.3185-1-xiaowei.bao@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_192950_233005_EFBFE24E 
X-CRM114-Status: GOOD (  11.08  )
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

Add PCIe EP mode support for ls1088a and ls2088a, there are some
difference between LS1 and LS2 platform, so refactor the code of
the EP driver.

Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
---
v2: 
 - This is a new patch for supporting the ls1088a and ls2088a platform.
v3:
 - Adjust the some struct assignment order in probe function.
v4:
 - No change.

 drivers/pci/controller/dwc/pci-layerscape-ep.c | 72 +++++++++++++++++++-------
 1 file changed, 53 insertions(+), 19 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-layerscape-ep.c b/drivers/pci/controller/dwc/pci-layerscape-ep.c
index 5f0cb99..723bbe5 100644
--- a/drivers/pci/controller/dwc/pci-layerscape-ep.c
+++ b/drivers/pci/controller/dwc/pci-layerscape-ep.c
@@ -20,27 +20,29 @@
 
 #define PCIE_DBI2_OFFSET		0x1000	/* DBI2 base address*/
 
-struct ls_pcie_ep {
-	struct dw_pcie		*pci;
-	struct pci_epc_features	*ls_epc;
+#define to_ls_pcie_ep(x)	dev_get_drvdata((x)->dev)
+
+struct ls_pcie_ep_drvdata {
+	u32				func_offset;
+	const struct dw_pcie_ep_ops	*ops;
+	const struct dw_pcie_ops	*dw_pcie_ops;
 };
 
-#define to_ls_pcie_ep(x)	dev_get_drvdata((x)->dev)
+struct ls_pcie_ep {
+	struct dw_pcie			*pci;
+	struct pci_epc_features		*ls_epc;
+	const struct ls_pcie_ep_drvdata *drvdata;
+};
 
 static int ls_pcie_establish_link(struct dw_pcie *pci)
 {
 	return 0;
 }
 
-static const struct dw_pcie_ops ls_pcie_ep_ops = {
+static const struct dw_pcie_ops dw_ls_pcie_ep_ops = {
 	.start_link = ls_pcie_establish_link,
 };
 
-static const struct of_device_id ls_pcie_ep_of_match[] = {
-	{ .compatible = "fsl,ls-pcie-ep",},
-	{ },
-};
-
 static const struct pci_epc_features*
 ls_pcie_ep_get_features(struct dw_pcie_ep *ep)
 {
@@ -87,10 +89,39 @@ static int ls_pcie_ep_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
 	}
 }
 
-static const struct dw_pcie_ep_ops pcie_ep_ops = {
+static unsigned int ls_pcie_ep_func_conf_select(struct dw_pcie_ep *ep,
+						u8 func_no)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+	struct ls_pcie_ep *pcie = to_ls_pcie_ep(pci);
+
+	WARN_ON(func_no && !pcie->drvdata->func_offset);
+	return pcie->drvdata->func_offset * func_no;
+}
+
+static const struct dw_pcie_ep_ops ls_pcie_ep_ops = {
 	.ep_init = ls_pcie_ep_init,
 	.raise_irq = ls_pcie_ep_raise_irq,
 	.get_features = ls_pcie_ep_get_features,
+	.func_conf_select = ls_pcie_ep_func_conf_select,
+};
+
+static const struct ls_pcie_ep_drvdata ls1_ep_drvdata = {
+	.ops = &ls_pcie_ep_ops,
+	.dw_pcie_ops = &dw_ls_pcie_ep_ops,
+};
+
+static const struct ls_pcie_ep_drvdata ls2_ep_drvdata = {
+	.func_offset = 0x20000,
+	.ops = &ls_pcie_ep_ops,
+	.dw_pcie_ops = &dw_ls_pcie_ep_ops,
+};
+
+static const struct of_device_id ls_pcie_ep_of_match[] = {
+	{ .compatible = "fsl,ls1046a-pcie-ep", .data = &ls1_ep_drvdata },
+	{ .compatible = "fsl,ls1088a-pcie-ep", .data = &ls2_ep_drvdata },
+	{ .compatible = "fsl,ls2088a-pcie-ep", .data = &ls2_ep_drvdata },
+	{ },
 };
 
 static int __init ls_add_pcie_ep(struct ls_pcie_ep *pcie,
@@ -103,7 +134,7 @@ static int __init ls_add_pcie_ep(struct ls_pcie_ep *pcie,
 	int ret;
 
 	ep = &pci->ep;
-	ep->ops = &pcie_ep_ops;
+	ep->ops = pcie->drvdata->ops;
 
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "addr_space");
 	if (!res)
@@ -142,20 +173,23 @@ static int __init ls_pcie_ep_probe(struct platform_device *pdev)
 	if (!ls_epc)
 		return -ENOMEM;
 
-	dbi_base = platform_get_resource_byname(pdev, IORESOURCE_MEM, "regs");
-	pci->dbi_base = devm_pci_remap_cfg_resource(dev, dbi_base);
-	if (IS_ERR(pci->dbi_base))
-		return PTR_ERR(pci->dbi_base);
+	pcie->drvdata = of_device_get_match_data(dev);
 
-	pci->dbi_base2 = pci->dbi_base + PCIE_DBI2_OFFSET;
 	pci->dev = dev;
-	pci->ops = &ls_pcie_ep_ops;
-	pcie->pci = pci;
+	pci->ops = pcie->drvdata->dw_pcie_ops;
 
 	ls_epc->bar_fixed_64bit = (1 << BAR_2) | (1 << BAR_4),
 
+	pcie->pci = pci;
 	pcie->ls_epc = ls_epc;
 
+	dbi_base = platform_get_resource_byname(pdev, IORESOURCE_MEM, "regs");
+	pci->dbi_base = devm_pci_remap_cfg_resource(dev, dbi_base);
+	if (IS_ERR(pci->dbi_base))
+		return PTR_ERR(pci->dbi_base);
+
+	pci->dbi_base2 = pci->dbi_base + PCIE_DBI2_OFFSET;
+
 	platform_set_drvdata(pdev, pcie);
 
 	ret = ls_add_pcie_ep(pcie, pdev);
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
