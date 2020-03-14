Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EB1185486
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 04:47:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PCgJ4e/5C2izU9CIBAIj/Zv+xOoDALOsMk7W1fcDBbU=; b=n9tVPkfDR2JC4fNPiByIcZLb6g
	Avr/ruXL6G6dklK27WMlZULURNWScpdLZMiGpiQuhJAQbgTC0hYu/XtQkSpUF0bvdMnXAOph11xMH
	bF5/SzolB4EQ1MrMlx9HIy3+enUp7VFcWMKO7HFy3Six/pAS9w3VMfCGdEQAX8bmW1i47xtPBUe4/
	588IqAlGQjmHAkrCSgrOvT/+Kq1AakMXVXUUvXlFtD8EN/WOfbEcRYJjUY78TlkhoZ+LvEJUQI3fs
	zFGZWnh6gNOQaTs561JPq1p7dhttTp6mphMqpPh1Qs92CXexSXEXMXid8dhItgwODIf/AkydT7Xa4
	Prvp/CfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCxm8-0007Gt-By; Sat, 14 Mar 2020 03:47:48 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCxjK-0003kW-Si
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 03:44:56 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9040C1A194B;
 Sat, 14 Mar 2020 04:44:53 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 913EE1A197C;
 Sat, 14 Mar 2020 04:44:43 +0100 (CET)
Received: from titan.ap.freescale.net (titan.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 5F52A402FF;
 Sat, 14 Mar 2020 11:44:31 +0800 (SGT)
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Zhiqiang.Hou@nxp.com, Minghuan.Lian@nxp.com, mingkai.hu@nxp.com,
 bhelgaas@google.com, robh+dt@kernel.org, shawnguo@kernel.org,
 leoyang.li@nxp.com, kishon@ti.com, lorenzo.pieralisi@arm.com,
 roy.zang@nxp.com, amurray@thegoodpenguin.co.uk, jingoohan1@gmail.com,
 gustavo.pimentel@synopsys.com, andrew.murray@arm.com,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org
Subject: [PATCH v6 09/11] PCI: layerscape: Add EP mode support for ls1088a and
 ls2088a
Date: Sat, 14 Mar 2020 11:30:36 +0800
Message-Id: <20200314033038.24844-10-xiaowei.bao@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20200314033038.24844-1-xiaowei.bao@nxp.com>
References: <20200314033038.24844-1-xiaowei.bao@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_204455_211488_1C5A67D6 
X-CRM114-Status: GOOD (  10.79  )
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
v5:
 - No change.
v6:
 - No change.

 drivers/pci/controller/dwc/pci-layerscape-ep.c | 72 +++++++++++++++++++-------
 1 file changed, 53 insertions(+), 19 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-layerscape-ep.c b/drivers/pci/controller/dwc/pci-layerscape-ep.c
index bfab1c6..84206f2 100644
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
