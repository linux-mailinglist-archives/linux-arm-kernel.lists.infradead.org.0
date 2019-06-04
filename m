Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC4434AE4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 16:48:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFg/+CsFhAeedTCw1am7w1uI3X4piaujqw7IAXotg4U=; b=gQFtNe9DaB83W8
	PQqHUafz31KG239FHUNJr5seYc/8wp+QQpzPbhaOhDHfx7IHWDd/WhFBADNTd2FTY50K0Jcjrn1tp
	EXLxftVt79I0silUgVpR8EQK2Ai0PQ9tehzZJx/2FQ8Y3yBiuDr8iGep5egYKNm62V7yTL/hNvNXe
	RPUJsO+4d86sDmPmTbASYDPOYpQ1p/jiuloLHQQH/e+JwI2vbKP1U5EJ6rkvQ42auTfLiSG7gD5k1
	RoPQ1lOhWz3c+4sogToZpq/h9cFGn5JZLiCsVVzCnUu4UbUxe0z9lhIk1w3HYLIFjBfA3L5OlFEVC
	/wbXhMOsQATmmsqf/d3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAjg-0000vM-MD; Tue, 04 Jun 2019 14:48:24 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAiy-0008BV-S0; Tue, 04 Jun 2019 14:47:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lbZN64a/9tqoweyvK9hrm8rB5go5BK2+LZrXyh4Pjro=; b=x+TnJ8gFJfQGaWvZN6Yh+jLei
 NtTQ6k6umSbOur0NHm8K1V1U+nRSXeij/+anzE1wZcdXo5LPAxQFjzSNYXOh7XdSdpXV6wr0llMgA
 CmG2KYZDPj9P3CwD3142RiJLpq+xgmqtYkXoQpkiLRwKhwzp+NNIW6S+wooBff/heaXum6ctxWAHx
 mgf2zdNGFhlpSyv+zzOLxRDUZ/iTslDqYUYfWDG77HRYe7SX0gZZp0Pd3tgKw1WYi7orTxXMlnatq
 Pr7+99ni/uPa1P+9V0zOABxNBo02+27v+Uk+CBLUHEhuIsdvWD1iRtKkWuwmSm9uqNCEyTEAeBJsW
 JfFFu7PkA==;
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9LN-0005Zx-4A; Tue, 04 Jun 2019 13:19:14 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54DJ4cN092255;
 Tue, 4 Jun 2019 08:19:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559654344;
 bh=lbZN64a/9tqoweyvK9hrm8rB5go5BK2+LZrXyh4Pjro=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ZF58jGpQeMMKe5XC8XHueSfh/d5XfgdN9rZAUJVDoCiXKhFffVMZ/MI1tsM6gsgcf
 LArH2+g7M7cNNTHPWtBmKwMqvKwoojt4AAp4k+0cF3aB6L8Apdqj5Xz/KhgnEWoKA3
 0beJetxBWfUxX1EBm2cQDn+kdeNN4I/IbgGStBuI=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54DJ4dn003582
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 08:19:04 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 08:19:03 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 08:19:03 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54DGdGf098972;
 Tue, 4 Jun 2019 08:18:59 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Subject: [RFC PATCH 25/30] PCI: j721e: Add TI J721E PCIe driver
Date: Tue, 4 Jun 2019 18:45:11 +0530
Message-ID: <20190604131516.13596-26-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604131516.13596-1-kishon@ti.com>
References: <20190604131516.13596-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_091913_346548_77932201 
X-CRM114-Status: GOOD (  27.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Add support for PCIe controller in J721E SoC. The controller uses the
Cadence PCIe core programmed by pcie-cadence*.c. The PCIe controller
will work in both host mode and device mode.
Some of the features of the controller are:
  *) Supports both RC mode and EP mode
  *) Supports Legacy, MSI and MSI-X support
  *) Supports upto GEN4 speed mode
  *) Supports SR-IOV
  *) Ability to route all transactions via SMMU

The J721E PCIe wrapper has VMAP block which should be configured
for routing all transactions via SMMU. Add j721e_pcie_quirk() which
gets invoked whenever a new PCIe device is registered and configures
the VMAP block.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/controller/Kconfig     |   9 +
 drivers/pci/controller/Makefile    |   1 +
 drivers/pci/controller/pci-j721e.c | 431 +++++++++++++++++++++++++++++
 3 files changed, 441 insertions(+)
 create mode 100644 drivers/pci/controller/pci-j721e.c

diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
index 011c57cae4b0..f706aa940f18 100644
--- a/drivers/pci/controller/Kconfig
+++ b/drivers/pci/controller/Kconfig
@@ -50,6 +50,15 @@ config PCIE_CADENCE_EP
 
 endmenu
 
+config PCI_J721E
+	bool "J721E PCIe host controller using Cadence PCIe core"
+	depends on PCIE_CADENCE
+	help
+	  Say Y here if you want to support the J721E PCIe controller in host
+	  mode or device mode. This PCIe controller uses the Cadence PCIe core.
+	  This driver also handles legacy interrupts when operating in host
+	  mode.
+
 config PCIE_XILINX_NWL
 	bool "NWL PCIe Core"
 	depends on ARCH_ZYNQMP || COMPILE_TEST
diff --git a/drivers/pci/controller/Makefile b/drivers/pci/controller/Makefile
index d56a507495c5..9fdefff5283c 100644
--- a/drivers/pci/controller/Makefile
+++ b/drivers/pci/controller/Makefile
@@ -2,6 +2,7 @@
 obj-$(CONFIG_PCIE_CADENCE) += pcie-cadence.o
 obj-$(CONFIG_PCIE_CADENCE_HOST) += pcie-cadence-host.o
 obj-$(CONFIG_PCIE_CADENCE_EP) += pcie-cadence-ep.o
+obj-$(CONFIG_PCI_J721E) += pci-j721e.o
 obj-$(CONFIG_PCI_FTPCI100) += pci-ftpci100.o
 obj-$(CONFIG_PCI_HYPERV) += pci-hyperv.o
 obj-$(CONFIG_PCI_MVEBU) += pci-mvebu.o
diff --git a/drivers/pci/controller/pci-j721e.c b/drivers/pci/controller/pci-j721e.c
new file mode 100644
index 000000000000..712cc6a2dd41
--- /dev/null
+++ b/drivers/pci/controller/pci-j721e.c
@@ -0,0 +1,431 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * pci-j721e - PCIe controller driver for TI's J721E SoCs
+ *
+ * Copyright (C) 2018-2019 Texas Instruments Incorporated - http://www.ti.com
+ *
+ * Author: Kishon Vijay Abraham I <kishon@ti.com>
+ */
+
+#include <dt-bindings/pci/pci.h>
+#include <linux/io.h>
+#include <linux/irqchip/chained_irq.h>
+#include <linux/irqdomain.h>
+#include <linux/mfd/syscon.h>
+#include <linux/of_device.h>
+#include <linux/of_irq.h>
+#include <linux/pci.h>
+#include <linux/pm_runtime.h>
+#include <linux/regmap.h>
+
+#include "../pci.h"
+#include "pcie-cadence.h"
+
+#define J721E_PCIE_USER_CMD_STATUS	0x4
+#define LINK_TRAINING_ENABLE		BIT(0)
+
+#define J721E_PCIE_USER_LINKSTATUS	0x14
+#define LINK_STATUS			GENMASK(1, 0)
+enum link_status {
+	NO_RECIEVERS_DETECTED,
+	LINK_TRAINING_IN_PROGRESS,
+	LINK_UP_DL_IN_PROGRESS,
+	LINK_UP_DL_COMPLETED,
+};
+
+#define J721E_TRANS_CTRL(a)		((a) * 0xc)
+#define J721E_TRANS_REQ_ID(a)		(((a) * 0xc) + 0x4)
+#define J721E_TRANS_VIRT_ID(a)		(((a) * 0xc) + 0x8)
+
+#define J721E_REQID_MASK		0xffff
+#define J721E_REQID_SHIFT		16
+
+#define J721E_EN			BIT(0)
+#define J721E_ATYPE_SHIFT		16
+
+#define J721E_MODE_RC			BIT(7)
+#define LANE_COUNT_MASK			BIT(8)
+#define LANE_COUNT(n)			((n) << 8)
+
+#define GENERATION_SEL_MASK		GENMASK(1, 0)
+
+#define MAX_LANES			2
+
+enum j721e_atype {
+	PHYS_ADDR,
+	INT_ADDR,
+	VIRT_ADDR,
+	TRANS_ADDR,
+};
+
+#define to_j721e_pcie(x) container_of((x), struct j721e_pcie, plat_data)
+
+struct j721e_pcie {
+	struct device		*dev;
+	struct device_node	*node;
+	u32			mode;
+	u32			num_lanes;
+	struct cdns_pcie_plat_data plat_data;
+	void __iomem		*intd_cfg_base;
+	void __iomem		*user_cfg_base;
+	void __iomem		*vmap_lp_base;
+	u8			vmap_lp_index;
+	bool			enable_smmu;
+};
+
+static inline u32 j721e_pcie_vmap_readl(struct j721e_pcie *pcie, u32 offset)
+{
+	return readl(pcie->vmap_lp_base + offset);
+}
+
+static inline void j721e_pcie_vmap_writel(struct j721e_pcie *pcie, u32 offset,
+					  u32 value)
+{
+	writel(value, pcie->vmap_lp_base + offset);
+}
+
+static inline u32 j721e_pcie_intd_readl(struct j721e_pcie *pcie, u32 offset)
+{
+	return readl(pcie->intd_cfg_base + offset);
+}
+
+static inline void j721e_pcie_intd_writel(struct j721e_pcie *pcie, u32 offset,
+					  u32 value)
+{
+	writel(value, pcie->intd_cfg_base + offset);
+}
+
+static inline u32 j721e_pcie_user_readl(struct j721e_pcie *pcie, u32 offset)
+{
+	return readl(pcie->user_cfg_base + offset);
+}
+
+static inline void j721e_pcie_user_writel(struct j721e_pcie *pcie, u32 offset,
+					  u32 value)
+{
+	writel(value, pcie->user_cfg_base + offset);
+}
+
+static void j721e_pcie_quirk(struct pci_dev *pci_dev)
+{
+	struct pci_bus *root_bus;
+	struct pci_dev *bridge;
+	struct j721e_pcie *pcie;
+	struct pci_bus *bus;
+	struct device *dev;
+	int index;
+	u32 val;
+
+	static const struct pci_device_id rc_pci_devids[] = {
+		{ PCI_DEVICE(0x104c, 0xb00d),
+		.class = PCI_CLASS_BRIDGE_PCI << 8, .class_mask = ~0, },
+		{ 0, },
+	};
+
+	dev = pci_get_host_bridge_device(pci_dev);
+	pcie = dev_get_drvdata(dev->parent->parent);
+	bus = pci_dev->bus;
+	index = pcie->vmap_lp_index;
+
+	if (!pcie->enable_smmu)
+		return;
+
+	if (index >= 32)
+		return;
+
+	if (pci_is_root_bus(bus))
+		return;
+
+	root_bus = bus;
+	while (!pci_is_root_bus(root_bus)) {
+		bridge = root_bus->self;
+		root_bus = root_bus->parent;
+	}
+
+	if (pci_match_id(rc_pci_devids, bridge)) {
+		val = J721E_REQID_MASK << J721E_REQID_SHIFT |
+			(bus->number << 8 | pci_dev->devfn);
+		j721e_pcie_vmap_writel(pcie, J721E_TRANS_REQ_ID(index), val);
+		val = VIRT_ADDR << J721E_ATYPE_SHIFT;
+		j721e_pcie_vmap_writel(pcie, J721E_TRANS_VIRT_ID(index), val);
+		j721e_pcie_vmap_writel(pcie, J721E_TRANS_CTRL(index), J721E_EN);
+	}
+
+	pcie->vmap_lp_index++;
+}
+DECLARE_PCI_FIXUP_ENABLE(PCI_ANY_ID, PCI_ANY_ID, j721e_pcie_quirk);
+
+static int j721e_pcie_start_link(struct cdns_pcie_plat_data *data, bool start)
+{
+	struct j721e_pcie *pcie = to_j721e_pcie(data);
+	u32 reg;
+
+	reg = j721e_pcie_user_readl(pcie, J721E_PCIE_USER_CMD_STATUS);
+	if (start)
+		reg |= LINK_TRAINING_ENABLE;
+	else
+		reg &= ~LINK_TRAINING_ENABLE;
+	j721e_pcie_user_writel(pcie, J721E_PCIE_USER_CMD_STATUS, reg);
+
+	return 0;
+}
+
+static bool j721e_pcie_is_link_up(struct cdns_pcie_plat_data *data)
+{
+	struct j721e_pcie *pcie = to_j721e_pcie(data);
+	u32 reg;
+
+	reg = j721e_pcie_user_readl(pcie, J721E_PCIE_USER_LINKSTATUS);
+	reg &= LINK_STATUS;
+	if (reg == LINK_UP_DL_COMPLETED)
+		return true;
+
+	return false;
+}
+
+static int j721e_pcie_set_mode(struct j721e_pcie *pcie, struct regmap *syscon)
+{
+	struct device *dev = pcie->dev;
+	u32 mask = J721E_MODE_RC;
+	u32 mode = pcie->mode;
+	u32 val = 0;
+	int ret = 0;
+
+	if (mode == PCI_MODE_RC)
+		val = J721E_MODE_RC;
+
+	ret = regmap_update_bits(syscon, 0, mask, val);
+	if (ret)
+		dev_err(dev, "failed to set pcie mode\n");
+
+	return ret;
+}
+
+static int j721e_pcie_set_link_speed(struct j721e_pcie *pcie,
+				     struct regmap *syscon)
+{
+	struct device *dev = pcie->dev;
+	struct device_node *np = dev->of_node;
+	int link_speed;
+	u32 val = 0;
+	int ret;
+
+	link_speed = of_pci_get_max_link_speed(np);
+	if (link_speed < 2)
+		link_speed = 2;
+
+	val = link_speed - 1;
+	ret = regmap_update_bits(syscon, 0, GENERATION_SEL_MASK, val);
+	if (ret)
+		dev_err(dev, "failed to set link speed\n");
+
+	return ret;
+}
+
+static int j721e_pcie_set_lane_count(struct j721e_pcie *pcie,
+				     struct regmap *syscon)
+{
+	struct device *dev = pcie->dev;
+	u32 lanes = pcie->num_lanes;
+	u32 val = 0;
+	int ret;
+
+	val = LANE_COUNT(lanes - 1);
+	ret = regmap_update_bits(syscon, 0, LANE_COUNT_MASK, val);
+	if (ret)
+		dev_err(dev, "failed to set link count\n");
+
+	return ret;
+}
+
+static int j721e_pcie_ctrl_init(struct j721e_pcie *pcie)
+{
+	struct device *dev = pcie->dev;
+	struct device_node *node = dev->of_node;
+	struct regmap *syscon;
+	int ret;
+
+	syscon = syscon_regmap_lookup_by_phandle(node, "ti,syscon-pcie-ctrl");
+	if (IS_ERR(syscon)) {
+		dev_err(dev, "Unable to get ti,syscon-pcie-ctrl regmap\n");
+		return PTR_ERR(syscon);
+	}
+
+	ret = j721e_pcie_set_mode(pcie, syscon);
+	if (ret < 0) {
+		dev_err(dev, "Failed to set pci mode\n");
+		return ret;
+	}
+
+	ret = j721e_pcie_set_link_speed(pcie, syscon);
+	if (ret < 0) {
+		dev_err(dev, "Failed to set link speed\n");
+		return ret;
+	}
+
+	ret = j721e_pcie_set_lane_count(pcie, syscon);
+	if (ret < 0) {
+		dev_err(dev, "Failed to set num-lanes\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static const struct of_device_id of_j721e_pcie_match[] = {
+	{
+		.compatible = "ti,j721e-pcie",
+	},
+	{},
+};
+
+static int j721e_pcie_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *node = dev->of_node;
+	struct cdns_pcie_plat_data *plat_data;
+	struct platform_device *platform_dev;
+	struct device_node *child_node;
+	struct j721e_pcie *pcie;
+	struct resource *res;
+	void __iomem *base;
+	u32 num_lanes;
+	u32 mode;
+	int ret;
+
+	pcie = devm_kzalloc(dev, sizeof(*pcie), GFP_KERNEL);
+	if (!pcie)
+		return -ENOMEM;
+
+	pcie->dev = dev;
+	pcie->node = node;
+	plat_data = &pcie->plat_data;
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "intd_cfg");
+	base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+	pcie->intd_cfg_base = base;
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "user_cfg");
+	base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+	pcie->user_cfg_base = base;
+
+	plat_data->start_link = j721e_pcie_start_link;
+	plat_data->is_link_up = j721e_pcie_is_link_up;
+
+	ret = of_property_read_u32(node, "pci-mode", &mode);
+	if (ret < 0) {
+		dev_err(dev, "Failed to get pci-mode binding\n");
+		return ret;
+	}
+	pcie->mode = mode;
+
+	ret = of_property_read_u32(node, "num-lanes", &num_lanes);
+	if (ret || num_lanes > MAX_LANES)
+		num_lanes = 1;
+	pcie->num_lanes = num_lanes;
+
+	dev_set_drvdata(dev, pcie);
+	pm_runtime_enable(dev);
+	ret = pm_runtime_get_sync(dev);
+	if (ret < 0) {
+		dev_err(dev, "pm_runtime_get_sync failed\n");
+		goto err_get_sync;
+	}
+
+	ret = j721e_pcie_ctrl_init(pcie);
+	if (ret < 0) {
+		dev_err(dev, "pm_runtime_get_sync failed\n");
+		goto err_get_sync;
+	}
+
+	switch (mode) {
+	case PCI_MODE_RC:
+		if (!IS_ENABLED(CONFIG_PCIE_CADENCE_HOST)) {
+			ret = -ENODEV;
+			goto err_get_sync;
+		}
+
+		res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
+						   "vmap");
+		base = devm_ioremap_resource(dev, res);
+		if (IS_ERR(base))
+			goto err_get_sync;
+		pcie->vmap_lp_base = base;
+
+		child_node = of_get_child_by_name(node, "pcie");
+		if (!child_node) {
+			dev_WARN(dev, "pcie-rc node is absent\n");
+			goto err_get_sync;
+		}
+
+		if (of_property_read_bool(child_node, "iommu-map"))
+			pcie->enable_smmu = true;
+
+		platform_dev = of_platform_device_create_pdata(child_node, NULL,
+							       plat_data, dev);
+		if (!platform_dev) {
+			ret = -ENODEV;
+			dev_err(dev, "Failed to create Cadence RC device\n");
+			goto err_get_sync;
+		}
+
+		break;
+	case PCI_MODE_EP:
+		if (!IS_ENABLED(CONFIG_PCIE_CADENCE_EP)) {
+			ret = -ENODEV;
+			goto err_get_sync;
+		}
+
+		child_node = of_get_child_by_name(node, "pcie-ep");
+		if (!child_node) {
+			dev_WARN(dev, "pcie-ep node is absent\n");
+			goto err_get_sync;
+		}
+
+		platform_dev = of_platform_device_create_pdata(child_node, NULL,
+							       plat_data, dev);
+		if (!platform_dev) {
+			ret = -ENODEV;
+			dev_err(dev, "Failed to create Cadence EP device\n");
+			goto err_get_sync;
+		}
+
+		break;
+	default:
+		dev_err(dev, "INVALID device type %d\n", mode);
+	}
+
+	return 0;
+
+err_get_sync:
+	pm_runtime_put(dev);
+	pm_runtime_disable(dev);
+
+	return ret;
+}
+
+static int j721e_pcie_remove(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+
+	pm_runtime_put(dev);
+	pm_runtime_disable(dev);
+	of_platform_depopulate(dev);
+
+	return 0;
+}
+
+static struct platform_driver j721e_pcie_driver = {
+	.probe  = j721e_pcie_probe,
+	.remove = j721e_pcie_remove,
+	.driver = {
+		.name	= "j721e-pcie",
+		.of_match_table = of_j721e_pcie_match,
+		.suppress_bind_attrs = true,
+	},
+};
+builtin_platform_driver(j721e_pcie_driver);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
