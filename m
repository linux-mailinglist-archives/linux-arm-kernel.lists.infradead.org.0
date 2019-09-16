Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 046A2B3354
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 04:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nzH2AaXek5Ulih0/qckkP6lkdMen41CSeDk+6J2O2W4=; b=lfgk59YooOv3dhbuY0kGSN+I1T
	sARw9P/QU0F54vvM1Ajv/DcHw3LdmmVdk4vc8bdNbYVUuGox3rnIM/sk8aLJ3Gcm4T/D30sBpXL3+
	4e0q4zUUJtY4QvttvlB5P+Js1goW6aH3qytZWT7N2UfFDjxdfQY8UHDsjlKgP6t45Kor6PZd5ikIx
	uOa5QyqruqbYZZ2Y+8nPhHBZhVmVYeaApJuhJCWEQjnyyKUv4Sr/qh3ipfX6Hld11cpJLLdWK/shm
	83YyQQEHDK71J25GkSadKj1H7WK2FLD44mc4VUnQX0ZdoeYQhNMjJbgSfkPr/vqQFSfBlZFLFIfNZ
	O23jTP/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9glq-00047n-DO; Mon, 16 Sep 2019 02:29:42 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9gkg-0003AU-V2
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 02:28:32 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 587EA1A092D;
 Mon, 16 Sep 2019 04:28:27 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 100A11A02F7;
 Mon, 16 Sep 2019 04:28:20 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 30763402F6;
 Mon, 16 Sep 2019 10:28:11 +0800 (SGT)
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Zhiqiang.Hou@nxp.com, bhelgaas@google.com, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, leoyang.li@nxp.com,
 kishon@ti.com, lorenzo.pieralisi@arm.com, Minghuan.Lian@nxp.com,
 andrew.murray@arm.com, mingkai.hu@nxp.com, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/6] PCI: mobiveil: Add PCIe Gen4 EP driver for NXP Layerscape
 SoCs
Date: Mon, 16 Sep 2019 10:17:39 +0800
Message-Id: <20190916021742.22844-4-xiaowei.bao@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190916021742.22844-1-xiaowei.bao@nxp.com>
References: <20190916021742.22844-1-xiaowei.bao@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_192831_287269_A6FDECA8 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
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
Cc: Xiaowei Bao <xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This PCIe controller is based on the Mobiveil GPEX IP, it work in EP
mode if select this config opteration.

Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
---
 MAINTAINERS                                        |   2 +
 drivers/pci/controller/mobiveil/Kconfig            |  17 ++-
 drivers/pci/controller/mobiveil/Makefile           |   1 +
 .../controller/mobiveil/pcie-layerscape-gen4-ep.c  | 156 +++++++++++++++++++++
 4 files changed, 173 insertions(+), 3 deletions(-)
 create mode 100644 drivers/pci/controller/mobiveil/pcie-layerscape-gen4-ep.c

diff --git a/MAINTAINERS b/MAINTAINERS
index b997056..0858b54 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12363,11 +12363,13 @@ F:	drivers/pci/controller/dwc/*layerscape*
 
 PCI DRIVER FOR NXP LAYERSCAPE GEN4 CONTROLLER
 M:	Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
+M:	Xiaowei Bao <xiaowei.bao@nxp.com>
 L:	linux-pci@vger.kernel.org
 L:	linux-arm-kernel@lists.infradead.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
 F:	drivers/pci/controller/mobibeil/pcie-layerscape-gen4.c
+F:	drivers/pci/controller/mobiveil/pcie-layerscape-gen4-ep.c
 
 PCI DRIVER FOR GENERIC OF HOSTS
 M:	Will Deacon <will@kernel.org>
diff --git a/drivers/pci/controller/mobiveil/Kconfig b/drivers/pci/controller/mobiveil/Kconfig
index 2054950..0696b6e 100644
--- a/drivers/pci/controller/mobiveil/Kconfig
+++ b/drivers/pci/controller/mobiveil/Kconfig
@@ -27,13 +27,24 @@ config PCIE_MOBIVEIL_PLAT
 	  for address translation and it is a PCIe Gen4 IP.
 
 config PCIE_LAYERSCAPE_GEN4
-	bool "Freescale Layerscape PCIe Gen4 controller"
+	bool "Freescale Layerscpe PCIe Gen4 controller in RC mode"
 	depends on PCI
 	depends on OF && (ARM64 || ARCH_LAYERSCAPE)
 	depends on PCI_MSI_IRQ_DOMAIN
 	select PCIE_MOBIVEIL_HOST
 	help
 	  Say Y here if you want PCIe Gen4 controller support on
-	  Layerscape SoCs. The PCIe controller can work in RC or
-	  EP mode according to RCW[HOST_AGT_PEX] setting.
+	  Layerscape SoCs. And the PCIe controller work in RC mode
+	  by setting the RCW[HOST_AGT_PEX] to 0.
+
+config PCIE_LAYERSCAPE_GEN4_EP
+	bool "Freescale Layerscpe PCIe Gen4 controller in EP mode"
+	depends on PCI
+	depends on OF && (ARM64 || ARCH_LAYERSCAPE)
+	depends on PCI_ENDPOINT
+	select PCIE_MOBIVEIL_EP
+	help
+	  Say Y here if you want PCIe Gen4 controller support on
+	  Layerscape SoCs. And the PCIe controller work in EP mode
+	  by setting the RCW[HOST_AGT_PEX] to 1.
 endmenu
diff --git a/drivers/pci/controller/mobiveil/Makefile b/drivers/pci/controller/mobiveil/Makefile
index 686d41f..6f54856 100644
--- a/drivers/pci/controller/mobiveil/Makefile
+++ b/drivers/pci/controller/mobiveil/Makefile
@@ -4,3 +4,4 @@ obj-$(CONFIG_PCIE_MOBIVEIL_HOST) += pcie-mobiveil-host.o
 obj-$(CONFIG_PCIE_MOBIVEIL_EP) += pcie-mobiveil-ep.o
 obj-$(CONFIG_PCIE_MOBIVEIL_PLAT) += pcie-mobiveil-plat.o
 obj-$(CONFIG_PCIE_LAYERSCAPE_GEN4) += pcie-layerscape-gen4.o
+obj-$(CONFIG_PCIE_LAYERSCAPE_GEN4_EP) += pcie-layerscape-gen4-ep.o
diff --git a/drivers/pci/controller/mobiveil/pcie-layerscape-gen4-ep.c b/drivers/pci/controller/mobiveil/pcie-layerscape-gen4-ep.c
new file mode 100644
index 0000000..7bfec51
--- /dev/null
+++ b/drivers/pci/controller/mobiveil/pcie-layerscape-gen4-ep.c
@@ -0,0 +1,156 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * PCIe controller EP driver for Freescale Layerscape SoCs
+ *
+ * Copyright (C) 2019 NXP Semiconductor.
+ *
+ * Author: Xiaowei Bao <xiaowei.bao@nxp.com>
+ */
+
+#include <linux/kernel.h>
+#include <linux/init.h>
+#include <linux/of_pci.h>
+#include <linux/of_platform.h>
+#include <linux/of_address.h>
+#include <linux/pci.h>
+#include <linux/platform_device.h>
+#include <linux/resource.h>
+
+#include "pcie-mobiveil.h"
+
+#define PCIE_LX2_BAR_NUM	4
+
+#define to_ls_pcie_g4_ep(x)	dev_get_drvdata((x)->dev)
+
+struct ls_pcie_g4_ep {
+	struct mobiveil_pcie		*mv_pci;
+};
+
+static const struct of_device_id ls_pcie_g4_ep_of_match[] = {
+	{ .compatible = "fsl,lx2160a-pcie-ep",},
+	{ },
+};
+
+static const struct pci_epc_features ls_pcie_g4_epc_features = {
+	.linkup_notifier = false,
+	.msi_capable = true,
+	.msix_capable = true,
+	.reserved_bar = (1 << BAR_4) | (1 << BAR_5),
+};
+
+static const struct pci_epc_features*
+ls_pcie_g4_ep_get_features(struct mobiveil_pcie_ep *ep)
+{
+	return &ls_pcie_g4_epc_features;
+}
+
+static void ls_pcie_g4_ep_init(struct mobiveil_pcie_ep *ep)
+{
+	struct mobiveil_pcie *mv_pci = to_mobiveil_pcie_from_ep(ep);
+	int win_idx;
+	u8 bar;
+
+	ep->bar_num = PCIE_LX2_BAR_NUM;
+
+	for (bar = BAR_0; bar < ep->epc->max_functions * ep->bar_num; bar++)
+		mobiveil_pcie_ep_reset_bar(mv_pci, bar);
+
+	for (win_idx = 0; win_idx < ep->apio_wins; win_idx++)
+		mobiveil_pcie_disable_ob_win(mv_pci, win_idx);
+}
+
+static int ls_pcie_g4_ep_raise_irq(struct mobiveil_pcie_ep *ep, u8 func_no,
+				   enum pci_epc_irq_type type,
+				   u16 interrupt_num)
+{
+	struct mobiveil_pcie *mv_pci = to_mobiveil_pcie_from_ep(ep);
+
+	switch (type) {
+	case PCI_EPC_IRQ_LEGACY:
+		return mobiveil_pcie_ep_raise_legacy_irq(ep, func_no);
+	case PCI_EPC_IRQ_MSI:
+		return mobiveil_pcie_ep_raise_msi_irq(ep, func_no,
+						      interrupt_num);
+	case PCI_EPC_IRQ_MSIX:
+		return mobiveil_pcie_ep_raise_msix_irq(ep, func_no,
+						       interrupt_num);
+	default:
+		dev_err(&mv_pci->pdev->dev, "UNKNOWN IRQ type\n");
+	}
+
+	return 0;
+}
+
+static const struct mobiveil_pcie_ep_ops pcie_ep_ops = {
+	.ep_init = ls_pcie_g4_ep_init,
+	.raise_irq = ls_pcie_g4_ep_raise_irq,
+	.get_features = ls_pcie_g4_ep_get_features,
+};
+
+static int __init ls_pcie_gen4_add_pcie_ep(struct ls_pcie_g4_ep *ls_ep,
+					   struct platform_device *pdev)
+{
+	struct mobiveil_pcie *mv_pci = ls_ep->mv_pci;
+	struct device *dev = &pdev->dev;
+	struct mobiveil_pcie_ep *ep;
+	struct resource *res;
+	int ret;
+
+	ep = &mv_pci->ep;
+	ep->ops = &pcie_ep_ops;
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "addr_space");
+	if (!res)
+		return -EINVAL;
+
+	ep->phys_base = res->start;
+	ep->addr_size = resource_size(res);
+
+	ret = mobiveil_pcie_ep_init(ep);
+	if (ret) {
+		dev_err(dev, "failed to initialize layerscape endpoint\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int __init ls_pcie_g4_ep_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct mobiveil_pcie *mv_pci;
+	struct ls_pcie_g4_ep *ls_ep;
+	struct resource *res;
+	int ret;
+
+	ls_ep = devm_kzalloc(dev, sizeof(*ls_ep), GFP_KERNEL);
+	if (!ls_ep)
+		return -ENOMEM;
+
+	mv_pci = devm_kzalloc(dev, sizeof(*mv_pci), GFP_KERNEL);
+	if (!mv_pci)
+		return -ENOMEM;
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "regs");
+	mv_pci->csr_axi_slave_base = devm_pci_remap_cfg_resource(dev, res);
+	if (IS_ERR(mv_pci->csr_axi_slave_base))
+		return PTR_ERR(mv_pci->csr_axi_slave_base);
+
+	mv_pci->pdev = pdev;
+	ls_ep->mv_pci = mv_pci;
+
+	platform_set_drvdata(pdev, ls_ep);
+
+	ret = ls_pcie_gen4_add_pcie_ep(ls_ep, pdev);
+
+	return ret;
+}
+
+static struct platform_driver ls_pcie_g4_ep_driver = {
+	.driver = {
+		.name = "layerscape-pcie-gen4-ep",
+		.of_match_table = ls_pcie_g4_ep_of_match,
+		.suppress_bind_attrs = true,
+	},
+};
+builtin_platform_driver_probe(ls_pcie_g4_ep_driver, ls_pcie_g4_ep_probe);
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
