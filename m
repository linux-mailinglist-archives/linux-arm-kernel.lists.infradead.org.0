Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D00D26415A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 08:26:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PnOoPtaZaQCifYCb0zsMS17zFcU1yJWtC+4294U/pe4=; b=LTHEsMtERGa/HQ
	9hNPn4qzqi2NwybY+pJ4v6m8NhZ3axuozRUUgCM9AYmceGmUpp68RqnwhA/dEROzknZJ3JXEKU2NA
	scxtcVvbrvGS2zfXofAyCP4oXTNUVCTf7zX6d2EgLISPW8Wu1DKK2JK83Oq6rkc4GjrTyt19sufBP
	71UprFoKVUZxd26FMKm6IDsPr5cdZx0IOnu+KwL5MUE+xewUT0D/esiCalN58O4tkIu7NiPiE4Rgh
	o3xOKd+Ra0n9WvLAKu/mURd7KnTDKaQGZoxIK0oca1Lt4I9TVuW7Ee3xootJIAHxWfe5QDi/FnPa8
	wY4ZKxJgNv33Tx25EB2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl63w-0007EC-UU; Wed, 10 Jul 2019 06:26:45 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl61u-0004dr-90
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 06:24:42 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d2584a00000>; Tue, 09 Jul 2019 23:24:32 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 09 Jul 2019 23:24:37 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 09 Jul 2019 23:24:37 -0700
Received: from HQMAIL109.nvidia.com (172.20.187.15) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 10 Jul
 2019 06:24:37 +0000
Received: from HQMAIL101.nvidia.com (172.20.187.10) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 10 Jul
 2019 06:24:37 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Wed, 10 Jul 2019 06:24:36 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d25849e0000>; Tue, 09 Jul 2019 23:24:35 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <mark.rutland@arm.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <kishon@ti.com>, <catalin.marinas@arm.com>, <will.deacon@arm.com>,
 <jingoohan1@gmail.com>, <gustavo.pimentel@synopsys.com>
Subject: [PATCH V13 12/12] PCI: tegra: Add Tegra194 PCIe support
Date: Wed, 10 Jul 2019 11:52:12 +0530
Message-ID: <20190710062212.1745-13-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190710062212.1745-1-vidyas@nvidia.com>
References: <20190710062212.1745-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1562739873; bh=iCh8ohFZZvaBL6hC0anarsyjt5L+VUydq5a1cmu7dos=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=rlz+6r4aIzjXmPLcCSUN04Ye7QMvkdV9o+/7wR/YaMCiOPtSyIQ3iX8F+eofgCIv1
 fH3DTqLM3y+eVSdg64bs30H5FyW/REf1qvX3LYE0TGY3FYSUkBNegBOQHleiUZ8xno
 xey1vHZf+ohHfwM8swEtcjUGx8i1g0tStlx1jvu4tuDtcxgWTX0+1QPAjhN75Z6cg3
 /3OrNyFtLBtD1vNuoWM/RZZLX75nB/jpU6lchiF91YdxC/DKFlBgCIpE9F0fTwWxrI
 BtWttHw8V99+RybaKw1q3t9qPQnJjje499rgnSbXrm0nKVq3SsyQoRK7h0nqXVP+5i
 9a8Xc01R1UANQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_232438_398687_5CB76491 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, mperttunen@nvidia.com,
 linux-tegra@vger.kernel.org, digetx@gmail.com, vidyas@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for Synopsys DesignWare core IP based PCIe host controller
present in Tegra194 SoC.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
Acked-by: Thierry Reding <treding@nvidia.com>
---
V13:
* Modified according to modifications in PATCH V13 01/12

V12:
* None

V11:
* None

V10:
* Used _relaxed() versions of readl() & writel()

V9:
* Made it dependent on ARCH_TEGRA_194_SOC directly

V8:
* Addressed review comments from Thierry

V7:
* Removed code around "nvidia,disable-aspm-states" DT property
* Refactored code to remove code duplication

V6:
* Addressed review comments from Thierry

V5:
* None

V4:
* None

V3:
* Changed 'nvidia,init-speed' to 'nvidia,init-link-speed'
* Changed 'nvidia,pex-wake' to 'nvidia,wake-gpios'
* Removed .runtime_suspend() & .runtime_resume() implementations

V2:
* Made CONFIG_PCIE_TEGRA194 as 'm' by default from its previous 'y' state
* Modified code as per changes made to DT documentation
* Refactored code to address Bjorn & Thierry's review comments
* Added goto to avoid recursion in tegra_pcie_dw_host_init() API
* Merged .scan_bus() of dw_pcie_host_ops implementation to tegra_pcie_dw_host_init() API

 drivers/pci/controller/dwc/Kconfig         |   10 +
 drivers/pci/controller/dwc/Makefile        |    1 +
 drivers/pci/controller/dwc/pcie-tegra194.c | 1632 ++++++++++++++++++++
 3 files changed, 1643 insertions(+)
 create mode 100644 drivers/pci/controller/dwc/pcie-tegra194.c

diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
index 6ea778ae4877..49475f5c42c3 100644
--- a/drivers/pci/controller/dwc/Kconfig
+++ b/drivers/pci/controller/dwc/Kconfig
@@ -220,6 +220,16 @@ config PCI_MESON
 	  and therefore the driver re-uses the DesignWare core functions to
 	  implement the driver.
 
+config PCIE_TEGRA194
+	tristate "NVIDIA Tegra194 (and later) PCIe controller"
+	depends on ARCH_TEGRA_194_SOC || COMPILE_TEST
+	depends on PCI_MSI_IRQ_DOMAIN
+	select PCIE_DW_HOST
+	select PHY_TEGRA194_P2U
+	help
+	  Say Y here if you want support for DesignWare core based PCIe host
+	  controller found in NVIDIA Tegra194 SoC.
+
 config PCIE_UNIPHIER
 	bool "Socionext UniPhier PCIe controllers"
 	depends on ARCH_UNIPHIER || COMPILE_TEST
diff --git a/drivers/pci/controller/dwc/Makefile b/drivers/pci/controller/dwc/Makefile
index b085dfd4fab7..b30336181d46 100644
--- a/drivers/pci/controller/dwc/Makefile
+++ b/drivers/pci/controller/dwc/Makefile
@@ -15,6 +15,7 @@ obj-$(CONFIG_PCIE_ARTPEC6) += pcie-artpec6.o
 obj-$(CONFIG_PCIE_KIRIN) += pcie-kirin.o
 obj-$(CONFIG_PCIE_HISI_STB) += pcie-histb.o
 obj-$(CONFIG_PCI_MESON) += pci-meson.o
+obj-$(CONFIG_PCIE_TEGRA194) += pcie-tegra194.o
 obj-$(CONFIG_PCIE_UNIPHIER) += pcie-uniphier.o
 
 # The following drivers are for devices that use the generic ACPI
diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
new file mode 100644
index 000000000000..189779edd976
--- /dev/null
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -0,0 +1,1632 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * PCIe host controller driver for Tegra194 SoC
+ *
+ * Copyright (C) 2019 NVIDIA Corporation.
+ *
+ * Author: Vidya Sagar <vidyas@nvidia.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/debugfs.h>
+#include <linux/delay.h>
+#include <linux/gpio.h>
+#include <linux/interrupt.h>
+#include <linux/iopoll.h>
+#include <linux/kernel.h>
+#include <linux/kfifo.h>
+#include <linux/kthread.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/of_gpio.h>
+#include <linux/of_irq.h>
+#include <linux/of_pci.h>
+#include <linux/pci.h>
+#include <linux/pci-aspm.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/random.h>
+#include <linux/reset.h>
+#include <linux/resource.h>
+#include <linux/types.h>
+#include "pcie-designware.h"
+#include <soc/tegra/bpmp.h>
+#include <soc/tegra/bpmp-abi.h>
+#include "../../pci.h"
+
+#define APPL_PINMUX				0x0
+#define APPL_PINMUX_PEX_RST			BIT(0)
+#define APPL_PINMUX_CLKREQ_OVERRIDE_EN		BIT(2)
+#define APPL_PINMUX_CLKREQ_OVERRIDE		BIT(3)
+#define APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE_EN	BIT(4)
+#define APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE	BIT(5)
+#define APPL_PINMUX_CLKREQ_OUT_OVRD_EN		BIT(9)
+#define APPL_PINMUX_CLKREQ_OUT_OVRD		BIT(10)
+
+#define APPL_CTRL				0x4
+#define APPL_CTRL_SYS_PRE_DET_STATE		BIT(6)
+#define APPL_CTRL_LTSSM_EN			BIT(7)
+#define APPL_CTRL_HW_HOT_RST_EN			BIT(20)
+#define APPL_CTRL_HW_HOT_RST_MODE_MASK		GENMASK(1, 0)
+#define APPL_CTRL_HW_HOT_RST_MODE_SHIFT		22
+#define APPL_CTRL_HW_HOT_RST_MODE_IMDT_RST	0x1
+
+#define APPL_INTR_EN_L0_0			0x8
+#define APPL_INTR_EN_L0_0_LINK_STATE_INT_EN	BIT(0)
+#define APPL_INTR_EN_L0_0_MSI_RCV_INT_EN	BIT(4)
+#define APPL_INTR_EN_L0_0_INT_INT_EN		BIT(8)
+#define APPL_INTR_EN_L0_0_CDM_REG_CHK_INT_EN	BIT(19)
+#define APPL_INTR_EN_L0_0_SYS_INTR_EN		BIT(30)
+#define APPL_INTR_EN_L0_0_SYS_MSI_INTR_EN	BIT(31)
+
+#define APPL_INTR_STATUS_L0			0xC
+#define APPL_INTR_STATUS_L0_LINK_STATE_INT	BIT(0)
+#define APPL_INTR_STATUS_L0_INT_INT		BIT(8)
+#define APPL_INTR_STATUS_L0_CDM_REG_CHK_INT	BIT(18)
+
+#define APPL_INTR_EN_L1_0_0				0x1C
+#define APPL_INTR_EN_L1_0_0_LINK_REQ_RST_NOT_INT_EN	BIT(1)
+
+#define APPL_INTR_STATUS_L1_0_0				0x20
+#define APPL_INTR_STATUS_L1_0_0_LINK_REQ_RST_NOT_CHGED	BIT(1)
+
+#define APPL_INTR_STATUS_L1_1			0x2C
+#define APPL_INTR_STATUS_L1_2			0x30
+#define APPL_INTR_STATUS_L1_3			0x34
+#define APPL_INTR_STATUS_L1_6			0x3C
+#define APPL_INTR_STATUS_L1_7			0x40
+
+#define APPL_INTR_EN_L1_8_0			0x44
+#define APPL_INTR_EN_L1_8_BW_MGT_INT_EN		BIT(2)
+#define APPL_INTR_EN_L1_8_AUTO_BW_INT_EN	BIT(3)
+#define APPL_INTR_EN_L1_8_INTX_EN		BIT(11)
+#define APPL_INTR_EN_L1_8_AER_INT_EN		BIT(15)
+
+#define APPL_INTR_STATUS_L1_8_0			0x4C
+#define APPL_INTR_STATUS_L1_8_0_EDMA_INT_MASK	GENMASK(11, 6)
+#define APPL_INTR_STATUS_L1_8_0_BW_MGT_INT_STS	BIT(2)
+#define APPL_INTR_STATUS_L1_8_0_AUTO_BW_INT_STS	BIT(3)
+
+#define APPL_INTR_STATUS_L1_9			0x54
+#define APPL_INTR_STATUS_L1_10			0x58
+#define APPL_INTR_STATUS_L1_11			0x64
+#define APPL_INTR_STATUS_L1_13			0x74
+#define APPL_INTR_STATUS_L1_14			0x78
+#define APPL_INTR_STATUS_L1_15			0x7C
+#define APPL_INTR_STATUS_L1_17			0x88
+
+#define APPL_INTR_EN_L1_18				0x90
+#define APPL_INTR_EN_L1_18_CDM_REG_CHK_CMPLT		BIT(2)
+#define APPL_INTR_EN_L1_18_CDM_REG_CHK_CMP_ERR		BIT(1)
+#define APPL_INTR_EN_L1_18_CDM_REG_CHK_LOGIC_ERR	BIT(0)
+
+#define APPL_INTR_STATUS_L1_18				0x94
+#define APPL_INTR_STATUS_L1_18_CDM_REG_CHK_CMPLT	BIT(2)
+#define APPL_INTR_STATUS_L1_18_CDM_REG_CHK_CMP_ERR	BIT(1)
+#define APPL_INTR_STATUS_L1_18_CDM_REG_CHK_LOGIC_ERR	BIT(0)
+
+#define APPL_MSI_CTRL_2				0xB0
+
+#define APPL_LTR_MSG_1				0xC4
+#define LTR_MSG_REQ				BIT(15)
+#define LTR_MST_NO_SNOOP_SHIFT			16
+
+#define APPL_LTR_MSG_2				0xC8
+#define APPL_LTR_MSG_2_LTR_MSG_REQ_STATE	BIT(3)
+
+#define APPL_LINK_STATUS			0xCC
+#define APPL_LINK_STATUS_RDLH_LINK_UP		BIT(0)
+
+#define APPL_DEBUG				0xD0
+#define APPL_DEBUG_PM_LINKST_IN_L2_LAT		BIT(21)
+#define APPL_DEBUG_PM_LINKST_IN_L0		0x11
+#define APPL_DEBUG_LTSSM_STATE_MASK		GENMASK(8, 3)
+#define APPL_DEBUG_LTSSM_STATE_SHIFT		3
+#define LTSSM_STATE_PRE_DETECT			5
+
+#define APPL_RADM_STATUS			0xE4
+#define APPL_PM_XMT_TURNOFF_STATE		BIT(0)
+
+#define APPL_DM_TYPE				0x100
+#define APPL_DM_TYPE_MASK			GENMASK(3, 0)
+#define APPL_DM_TYPE_RP				0x4
+#define APPL_DM_TYPE_EP				0x0
+
+#define APPL_CFG_BASE_ADDR			0x104
+#define APPL_CFG_BASE_ADDR_MASK			GENMASK(31, 12)
+
+#define APPL_CFG_IATU_DMA_BASE_ADDR		0x108
+#define APPL_CFG_IATU_DMA_BASE_ADDR_MASK	GENMASK(31, 18)
+
+#define APPL_CFG_MISC				0x110
+#define APPL_CFG_MISC_SLV_EP_MODE		BIT(14)
+#define APPL_CFG_MISC_ARCACHE_MASK		GENMASK(13, 10)
+#define APPL_CFG_MISC_ARCACHE_SHIFT		10
+#define APPL_CFG_MISC_ARCACHE_VAL		3
+
+#define APPL_CFG_SLCG_OVERRIDE			0x114
+#define APPL_CFG_SLCG_OVERRIDE_SLCG_EN_MASTER	BIT(0)
+
+#define APPL_CAR_RESET_OVRD				0x12C
+#define APPL_CAR_RESET_OVRD_CYA_OVERRIDE_CORE_RST_N	BIT(0)
+
+#define IO_BASE_IO_DECODE				BIT(0)
+#define IO_BASE_IO_DECODE_BIT8				BIT(8)
+
+#define CFG_PREF_MEM_LIMIT_BASE_MEM_DECODE		BIT(0)
+#define CFG_PREF_MEM_LIMIT_BASE_MEM_LIMIT_DECODE	BIT(16)
+
+#define CFG_TIMER_CTRL_MAX_FUNC_NUM_OFF	0x718
+#define CFG_TIMER_CTRL_ACK_NAK_SHIFT	(19)
+
+#define EVENT_COUNTER_ALL_CLEAR		0x3
+#define EVENT_COUNTER_ENABLE_ALL	0x7
+#define EVENT_COUNTER_ENABLE_SHIFT	2
+#define EVENT_COUNTER_EVENT_SEL_MASK	GENMASK(7, 0)
+#define EVENT_COUNTER_EVENT_SEL_SHIFT	16
+#define EVENT_COUNTER_EVENT_Tx_L0S	0x2
+#define EVENT_COUNTER_EVENT_Rx_L0S	0x3
+#define EVENT_COUNTER_EVENT_L1		0x5
+#define EVENT_COUNTER_EVENT_L1_1	0x7
+#define EVENT_COUNTER_EVENT_L1_2	0x8
+#define EVENT_COUNTER_GROUP_SEL_SHIFT	24
+#define EVENT_COUNTER_GROUP_5		0x5
+
+#define PORT_LOGIC_ACK_F_ASPM_CTRL			0x70C
+#define ENTER_ASPM					BIT(30)
+#define L0S_ENTRANCE_LAT_SHIFT				24
+#define L0S_ENTRANCE_LAT_MASK				GENMASK(26, 24)
+#define L1_ENTRANCE_LAT_SHIFT				27
+#define L1_ENTRANCE_LAT_MASK				GENMASK(29, 27)
+#define N_FTS_SHIFT					8
+#define N_FTS_MASK					GENMASK(7, 0)
+#define N_FTS_VAL					52
+
+#define PORT_LOGIC_GEN2_CTRL				0x80C
+#define PORT_LOGIC_GEN2_CTRL_DIRECT_SPEED_CHANGE	BIT(17)
+#define FTS_MASK					GENMASK(7, 0)
+#define FTS_VAL						52
+
+#define PORT_LOGIC_MSI_CTRL_INT_0_EN		0x828
+
+#define GEN3_EQ_CONTROL_OFF			0x8a8
+#define GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC_SHIFT	8
+#define GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC_MASK	GENMASK(23, 8)
+#define GEN3_EQ_CONTROL_OFF_FB_MODE_MASK	GENMASK(3, 0)
+
+#define GEN3_RELATED_OFF			0x890
+#define GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL	BIT(0)
+#define GEN3_RELATED_OFF_GEN3_EQ_DISABLE	BIT(16)
+#define GEN3_RELATED_OFF_RATE_SHADOW_SEL_SHIFT	24
+#define GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK	GENMASK(25, 24)
+
+#define PORT_LOGIC_AMBA_ERROR_RESPONSE_DEFAULT	0x8D0
+#define AMBA_ERROR_RESPONSE_CRS_SHIFT		3
+#define AMBA_ERROR_RESPONSE_CRS_MASK		GENMASK(1, 0)
+#define AMBA_ERROR_RESPONSE_CRS_OKAY		0
+#define AMBA_ERROR_RESPONSE_CRS_OKAY_FFFFFFFF	1
+#define AMBA_ERROR_RESPONSE_CRS_OKAY_FFFF0001	2
+
+#define PORT_LOGIC_MSIX_DOORBELL			0x948
+
+#define CAP_SPCIE_CAP_OFF			0x154
+#define CAP_SPCIE_CAP_OFF_DSP_TX_PRESET0_MASK	GENMASK(3, 0)
+#define CAP_SPCIE_CAP_OFF_USP_TX_PRESET0_MASK	GENMASK(11, 8)
+#define CAP_SPCIE_CAP_OFF_USP_TX_PRESET0_SHIFT	8
+
+#define PME_ACK_TIMEOUT 10000
+
+#define LTSSM_TIMEOUT 50000	/* 50ms */
+
+#define GEN3_GEN4_EQ_PRESET_INIT	5
+
+#define GEN1_CORE_CLK_FREQ	62500000
+#define GEN2_CORE_CLK_FREQ	125000000
+#define GEN3_CORE_CLK_FREQ	250000000
+#define GEN4_CORE_CLK_FREQ	500000000
+
+static const unsigned int pcie_gen_freq[] = {
+	GEN1_CORE_CLK_FREQ,
+	GEN2_CORE_CLK_FREQ,
+	GEN3_CORE_CLK_FREQ,
+	GEN4_CORE_CLK_FREQ
+};
+
+static const u32 event_cntr_ctrl_offset[] = {
+	0x1d8,
+	0x1a8,
+	0x1a8,
+	0x1a8,
+	0x1c4,
+	0x1d8
+};
+
+static const u32 event_cntr_data_offset[] = {
+	0x1dc,
+	0x1ac,
+	0x1ac,
+	0x1ac,
+	0x1c8,
+	0x1dc
+};
+
+struct tegra_pcie_dw {
+	struct device *dev;
+	struct resource *appl_res;
+	struct resource *dbi_res;
+	struct resource *atu_dma_res;
+	void __iomem *appl_base;
+	struct clk *core_clk;
+	struct reset_control *core_apb_rst;
+	struct reset_control *core_rst;
+	struct dw_pcie pci;
+	enum dw_pcie_device_mode mode;
+	struct tegra_bpmp *bpmp;
+
+	bool supports_clkreq;
+	bool enable_cdm_check;
+	u8 init_link_width;
+	bool link_state;
+	u32 msi_ctrl_int;
+	u32 num_lanes;
+	u32 max_speed;
+	u32 cid;
+	bool update_fc_fixup;
+	u32 cfg_link_cap_l1sub;
+	u32 pcie_cap_base;
+	u32 aspm_cmrt;
+	u32 aspm_pwr_on_t;
+	u32 aspm_l0s_enter_lat;
+
+	struct regulator *pex_ctl_supply;
+
+	unsigned int phy_count;
+	struct phy **phys;
+
+	struct dentry *debugfs;
+};
+
+static inline struct tegra_pcie_dw *to_tegra_pcie(struct dw_pcie *pci)
+{
+	return container_of(pci, struct tegra_pcie_dw, pci);
+}
+
+static inline void appl_writel(struct tegra_pcie_dw *pcie, const u32 value,
+			       const u32 reg)
+{
+	writel_relaxed(value, pcie->appl_base + reg);
+}
+
+static inline u32 appl_readl(struct tegra_pcie_dw *pcie, const u32 reg)
+{
+	return readl_relaxed(pcie->appl_base + reg);
+}
+
+struct tegra_pcie_soc {
+	enum dw_pcie_device_mode mode;
+};
+
+static void apply_bad_link_workaround(struct pcie_port *pp)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct tegra_pcie_dw *pcie = to_tegra_pcie(pci);
+	u32 current_link_width;
+	u16 val;
+
+	/*
+	 * NOTE:- Since this scenario is uncommon and link as such is not
+	 * stable anyway, not waiting to confirm if link is really
+	 * transitioning to Gen-2 speed
+	 */
+	val = dw_pcie_readw_dbi(pci, pcie->pcie_cap_base + PCI_EXP_LNKSTA);
+	if (val & PCI_EXP_LNKSTA_LBMS) {
+		current_link_width = (val & PCI_EXP_LNKSTA_NLW) >>
+				     PCI_EXP_LNKSTA_NLW_SHIFT;
+		if (pcie->init_link_width > current_link_width) {
+			dev_warn(pci->dev, "PCIe link is bad, width reduced\n");
+			val = dw_pcie_readw_dbi(pci, pcie->pcie_cap_base +
+						PCI_EXP_LNKCTL2);
+			val &= ~PCI_EXP_LNKCTL2_TLS;
+			val |= PCI_EXP_LNKCTL2_TLS_2_5GT;
+			dw_pcie_writew_dbi(pci, pcie->pcie_cap_base +
+					   PCI_EXP_LNKCTL2, val);
+
+			val = dw_pcie_readw_dbi(pci, pcie->pcie_cap_base +
+						PCI_EXP_LNKCTL);
+			val |= PCI_EXP_LNKCTL_RL;
+			dw_pcie_writew_dbi(pci, pcie->pcie_cap_base +
+					   PCI_EXP_LNKCTL, val);
+		}
+	}
+}
+
+static irqreturn_t tegra_pcie_rp_irq_handler(struct tegra_pcie_dw *pcie)
+{
+	struct dw_pcie *pci = &pcie->pci;
+	struct pcie_port *pp = &pci->pp;
+	u32 val, tmp;
+	u16 val_w;
+
+	val = appl_readl(pcie, APPL_INTR_STATUS_L0);
+	if (val & APPL_INTR_STATUS_L0_LINK_STATE_INT) {
+		val = appl_readl(pcie, APPL_INTR_STATUS_L1_0_0);
+		if (val & APPL_INTR_STATUS_L1_0_0_LINK_REQ_RST_NOT_CHGED) {
+			appl_writel(pcie, val, APPL_INTR_STATUS_L1_0_0);
+
+			/* SBR & Surprise Link Down WAR */
+			val = appl_readl(pcie, APPL_CAR_RESET_OVRD);
+			val &= ~APPL_CAR_RESET_OVRD_CYA_OVERRIDE_CORE_RST_N;
+			appl_writel(pcie, val, APPL_CAR_RESET_OVRD);
+			udelay(1);
+			val = appl_readl(pcie, APPL_CAR_RESET_OVRD);
+			val |= APPL_CAR_RESET_OVRD_CYA_OVERRIDE_CORE_RST_N;
+			appl_writel(pcie, val, APPL_CAR_RESET_OVRD);
+
+			val = dw_pcie_readl_dbi(pci, PORT_LOGIC_GEN2_CTRL);
+			val |= PORT_LOGIC_GEN2_CTRL_DIRECT_SPEED_CHANGE;
+			dw_pcie_writel_dbi(pci, PORT_LOGIC_GEN2_CTRL, val);
+		}
+	}
+
+	if (val & APPL_INTR_STATUS_L0_INT_INT) {
+		val = appl_readl(pcie, APPL_INTR_STATUS_L1_8_0);
+		if (val & APPL_INTR_STATUS_L1_8_0_AUTO_BW_INT_STS) {
+			appl_writel(pcie,
+				    APPL_INTR_STATUS_L1_8_0_AUTO_BW_INT_STS,
+				    APPL_INTR_STATUS_L1_8_0);
+			apply_bad_link_workaround(pp);
+		}
+		if (val & APPL_INTR_STATUS_L1_8_0_BW_MGT_INT_STS) {
+			appl_writel(pcie,
+				    APPL_INTR_STATUS_L1_8_0_BW_MGT_INT_STS,
+				    APPL_INTR_STATUS_L1_8_0);
+
+			val_w = dw_pcie_readw_dbi(pci, pcie->pcie_cap_base +
+						  PCI_EXP_LNKSTA);
+			dev_dbg(pci->dev, "Link Speed : Gen-%u\n", val_w &
+				PCI_EXP_LNKSTA_CLS);
+		}
+	}
+
+	val = appl_readl(pcie, APPL_INTR_STATUS_L0);
+	if (val & APPL_INTR_STATUS_L0_CDM_REG_CHK_INT) {
+		val = appl_readl(pcie, APPL_INTR_STATUS_L1_18);
+		tmp = dw_pcie_readl_dbi(pci, PCIE_PL_CHK_REG_CONTROL_STATUS);
+		if (val & APPL_INTR_STATUS_L1_18_CDM_REG_CHK_CMPLT) {
+			dev_info(pci->dev, "CDM check complete\n");
+			tmp |= PCIE_PL_CHK_REG_CHK_REG_COMPLETE;
+		}
+		if (val & APPL_INTR_STATUS_L1_18_CDM_REG_CHK_CMP_ERR) {
+			dev_err(pci->dev, "CDM comparison mismatch\n");
+			tmp |= PCIE_PL_CHK_REG_CHK_REG_COMPARISON_ERROR;
+		}
+		if (val & APPL_INTR_STATUS_L1_18_CDM_REG_CHK_LOGIC_ERR) {
+			dev_err(pci->dev, "CDM Logic error\n");
+			tmp |= PCIE_PL_CHK_REG_CHK_REG_LOGIC_ERROR;
+		}
+		dw_pcie_writel_dbi(pci, PCIE_PL_CHK_REG_CONTROL_STATUS, tmp);
+		tmp = dw_pcie_readl_dbi(pci, PCIE_PL_CHK_REG_ERR_ADDR);
+		dev_err(pci->dev, "CDM Error Address Offset = 0x%08X\n", tmp);
+	}
+
+	return IRQ_HANDLED;
+}
+
+static irqreturn_t tegra_pcie_irq_handler(int irq, void *arg)
+{
+	struct tegra_pcie_dw *pcie = arg;
+
+	if (pcie->mode == DW_PCIE_RC_TYPE)
+		return tegra_pcie_rp_irq_handler(pcie);
+
+	return IRQ_NONE;
+}
+
+static int tegra_pcie_dw_rd_own_conf(struct pcie_port *pp, int where, int size,
+				     u32 *val)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+
+	/*
+	 * This is an endpoint mode specific register happen to appear even
+	 * when controller is operating in root port mode and system hangs
+	 * when it is accessed with link being in ASPM-L1 state.
+	 * So skip accessing it altogether
+	 */
+	if (where == PORT_LOGIC_MSIX_DOORBELL) {
+		*val = 0x00000000;
+		return PCIBIOS_SUCCESSFUL;
+	}
+
+	return dw_pcie_read(pci->dbi_base + where, size, val);
+}
+
+static int tegra_pcie_dw_wr_own_conf(struct pcie_port *pp, int where, int size,
+				     u32 val)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+
+	/*
+	 * This is an endpoint mode specific register happen to appear even
+	 * when controller is operating in root port mode and system hangs
+	 * when it is accessed with link being in ASPM-L1 state.
+	 * So skip accessing it altogether
+	 */
+	if (where == PORT_LOGIC_MSIX_DOORBELL)
+		return PCIBIOS_SUCCESSFUL;
+
+	return dw_pcie_write(pci->dbi_base + where, size, val);
+}
+
+#if defined(CONFIG_PCIEASPM)
+static void disable_aspm_l11(struct tegra_pcie_dw *pcie)
+{
+	u32 val;
+
+	val = dw_pcie_readl_dbi(&pcie->pci, pcie->cfg_link_cap_l1sub);
+	val &= ~PCI_L1SS_CAP_ASPM_L1_1;
+	dw_pcie_writel_dbi(&pcie->pci, pcie->cfg_link_cap_l1sub, val);
+}
+
+static void disable_aspm_l12(struct tegra_pcie_dw *pcie)
+{
+	u32 val;
+
+	val = dw_pcie_readl_dbi(&pcie->pci, pcie->cfg_link_cap_l1sub);
+	val &= ~PCI_L1SS_CAP_ASPM_L1_2;
+	dw_pcie_writel_dbi(&pcie->pci, pcie->cfg_link_cap_l1sub, val);
+}
+
+static inline u32 event_counter_prog(struct tegra_pcie_dw *pcie, u32 event)
+{
+	u32 val;
+
+	val = dw_pcie_readl_dbi(&pcie->pci, event_cntr_ctrl_offset[pcie->cid]);
+	val &= ~(EVENT_COUNTER_EVENT_SEL_MASK << EVENT_COUNTER_EVENT_SEL_SHIFT);
+	val |= EVENT_COUNTER_GROUP_5 << EVENT_COUNTER_GROUP_SEL_SHIFT;
+	val |= event << EVENT_COUNTER_EVENT_SEL_SHIFT;
+	val |= EVENT_COUNTER_ENABLE_ALL << EVENT_COUNTER_ENABLE_SHIFT;
+	dw_pcie_writel_dbi(&pcie->pci, event_cntr_ctrl_offset[pcie->cid], val);
+	val = dw_pcie_readl_dbi(&pcie->pci, event_cntr_data_offset[pcie->cid]);
+	return val;
+}
+
+static int aspm_state_cnt(struct seq_file *s, void *data)
+{
+	struct tegra_pcie_dw *pcie = (struct tegra_pcie_dw *)
+				     dev_get_drvdata(s->private);
+	u32 val;
+
+	seq_printf(s, "Tx L0s entry count : %u\n",
+		   event_counter_prog(pcie, EVENT_COUNTER_EVENT_Tx_L0S));
+
+	seq_printf(s, "Rx L0s entry count : %u\n",
+		   event_counter_prog(pcie, EVENT_COUNTER_EVENT_Rx_L0S));
+
+	seq_printf(s, "Link L1 entry count : %u\n",
+		   event_counter_prog(pcie, EVENT_COUNTER_EVENT_L1));
+
+	seq_printf(s, "Link L1.1 entry count : %u\n",
+		   event_counter_prog(pcie, EVENT_COUNTER_EVENT_L1_1));
+
+	seq_printf(s, "Link L1.2 entry count : %u\n",
+		   event_counter_prog(pcie, EVENT_COUNTER_EVENT_L1_2));
+
+	/* Clear all counters */
+	dw_pcie_writel_dbi(&pcie->pci, event_cntr_ctrl_offset[pcie->cid],
+			   EVENT_COUNTER_ALL_CLEAR);
+
+	/* Re-enable counting */
+	val = EVENT_COUNTER_ENABLE_ALL << EVENT_COUNTER_ENABLE_SHIFT;
+	val |= EVENT_COUNTER_GROUP_5 << EVENT_COUNTER_GROUP_SEL_SHIFT;
+	dw_pcie_writel_dbi(&pcie->pci, event_cntr_ctrl_offset[pcie->cid], val);
+
+	return 0;
+}
+#endif
+
+static int init_debugfs(struct tegra_pcie_dw *pcie)
+{
+#if defined(CONFIG_PCIEASPM)
+	struct dentry *d;
+
+	d = debugfs_create_devm_seqfile(pcie->dev, "aspm_state_cnt",
+					pcie->debugfs, aspm_state_cnt);
+	if (IS_ERR_OR_NULL(d))
+		dev_err(pcie->dev,
+			"Failed to create debugfs file \"aspm_state_cnt\"\n");
+#endif
+	return 0;
+}
+
+static void tegra_pcie_enable_system_interrupts(struct pcie_port *pp)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct tegra_pcie_dw *pcie = to_tegra_pcie(pci);
+	u32 val;
+	u16 val_w;
+
+	val = appl_readl(pcie, APPL_INTR_EN_L0_0);
+	val |= APPL_INTR_EN_L0_0_LINK_STATE_INT_EN;
+	appl_writel(pcie, val, APPL_INTR_EN_L0_0);
+
+	val = appl_readl(pcie, APPL_INTR_EN_L1_0_0);
+	val |= APPL_INTR_EN_L1_0_0_LINK_REQ_RST_NOT_INT_EN;
+	appl_writel(pcie, val, APPL_INTR_EN_L1_0_0);
+
+	if (pcie->enable_cdm_check) {
+		val = appl_readl(pcie, APPL_INTR_EN_L0_0);
+		val |= APPL_INTR_EN_L0_0_CDM_REG_CHK_INT_EN;
+		appl_writel(pcie, val, APPL_INTR_EN_L0_0);
+
+		val = appl_readl(pcie, APPL_INTR_EN_L1_18);
+		val |= APPL_INTR_EN_L1_18_CDM_REG_CHK_CMP_ERR;
+		val |= APPL_INTR_EN_L1_18_CDM_REG_CHK_LOGIC_ERR;
+		appl_writel(pcie, val, APPL_INTR_EN_L1_18);
+	}
+
+	val_w = dw_pcie_readw_dbi(&pcie->pci, pcie->pcie_cap_base +
+				  PCI_EXP_LNKSTA);
+	pcie->init_link_width = (val_w & PCI_EXP_LNKSTA_NLW) >>
+				PCI_EXP_LNKSTA_NLW_SHIFT;
+
+	val_w = dw_pcie_readw_dbi(&pcie->pci, pcie->pcie_cap_base +
+				  PCI_EXP_LNKCTL);
+	val_w |= PCI_EXP_LNKCTL_LBMIE;
+	dw_pcie_writew_dbi(&pcie->pci, pcie->pcie_cap_base + PCI_EXP_LNKCTL,
+			   val_w);
+}
+
+static void tegra_pcie_enable_legacy_interrupts(struct pcie_port *pp)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct tegra_pcie_dw *pcie = to_tegra_pcie(pci);
+	u32 val;
+
+	/* Enable legacy interrupt generation */
+	val = appl_readl(pcie, APPL_INTR_EN_L0_0);
+	val |= APPL_INTR_EN_L0_0_SYS_INTR_EN;
+	val |= APPL_INTR_EN_L0_0_INT_INT_EN;
+	appl_writel(pcie, val, APPL_INTR_EN_L0_0);
+
+	val = appl_readl(pcie, APPL_INTR_EN_L1_8_0);
+	val |= APPL_INTR_EN_L1_8_INTX_EN;
+	val |= APPL_INTR_EN_L1_8_AUTO_BW_INT_EN;
+	val |= APPL_INTR_EN_L1_8_BW_MGT_INT_EN;
+	if (IS_ENABLED(CONFIG_PCIEAER))
+		val |= APPL_INTR_EN_L1_8_AER_INT_EN;
+	appl_writel(pcie, val, APPL_INTR_EN_L1_8_0);
+}
+
+static void tegra_pcie_enable_msi_interrupts(struct pcie_port *pp)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct tegra_pcie_dw *pcie = to_tegra_pcie(pci);
+	u32 val;
+
+	dw_pcie_msi_init(pp);
+
+	/* Enable MSI interrupt generation */
+	val = appl_readl(pcie, APPL_INTR_EN_L0_0);
+	val |= APPL_INTR_EN_L0_0_SYS_MSI_INTR_EN;
+	val |= APPL_INTR_EN_L0_0_MSI_RCV_INT_EN;
+	appl_writel(pcie, val, APPL_INTR_EN_L0_0);
+}
+
+static void tegra_pcie_enable_interrupts(struct pcie_port *pp)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct tegra_pcie_dw *pcie = to_tegra_pcie(pci);
+
+	/* Clear interrupt statuses before enabling interrupts */
+	appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L0);
+	appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_0_0);
+	appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_1);
+	appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_2);
+	appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_3);
+	appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_6);
+	appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_7);
+	appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_8_0);
+	appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_9);
+	appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_10);
+	appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_11);
+	appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_13);
+	appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_14);
+	appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_15);
+	appl_writel(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_17);
+
+	tegra_pcie_enable_system_interrupts(pp);
+	tegra_pcie_enable_legacy_interrupts(pp);
+	if (IS_ENABLED(CONFIG_PCI_MSI))
+		tegra_pcie_enable_msi_interrupts(pp);
+}
+
+static void config_gen3_gen4_eq_presets(struct tegra_pcie_dw *pcie)
+{
+	struct dw_pcie *pci = &pcie->pci;
+	u32 val, offset, i;
+
+	/* Program init preset */
+	for (i = 0; i < pcie->num_lanes; i++) {
+		dw_pcie_read(pci->dbi_base + CAP_SPCIE_CAP_OFF
+				 + (i * 2), 2, &val);
+		val &= ~CAP_SPCIE_CAP_OFF_DSP_TX_PRESET0_MASK;
+		val |= GEN3_GEN4_EQ_PRESET_INIT;
+		val &= ~CAP_SPCIE_CAP_OFF_USP_TX_PRESET0_MASK;
+		val |= (GEN3_GEN4_EQ_PRESET_INIT <<
+			   CAP_SPCIE_CAP_OFF_USP_TX_PRESET0_SHIFT);
+		dw_pcie_write(pci->dbi_base + CAP_SPCIE_CAP_OFF
+				 + (i * 2), 2, val);
+
+		offset = dw_pcie_find_ext_capability(pci,
+						     PCI_EXT_CAP_ID_PL_16GT) +
+				PCI_PL_16GT_LE_CTRL;
+		dw_pcie_read(pci->dbi_base + offset + i, 1, &val);
+		val &= ~PCI_PL_16GT_LE_CTRL_DSP_TX_PRESET_MASK;
+		val |= GEN3_GEN4_EQ_PRESET_INIT;
+		val &= ~PCI_PL_16GT_LE_CTRL_USP_TX_PRESET_MASK;
+		val |= (GEN3_GEN4_EQ_PRESET_INIT <<
+			PCI_PL_16GT_LE_CTRL_USP_TX_PRESET_SHIFT);
+		dw_pcie_write(pci->dbi_base + offset + i, 1, val);
+	}
+
+	val = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
+	val &= ~GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK;
+	dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, val);
+
+	val = dw_pcie_readl_dbi(pci, GEN3_EQ_CONTROL_OFF);
+	val &= ~GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC_MASK;
+	val |= (0x3ff << GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC_SHIFT);
+	val &= ~GEN3_EQ_CONTROL_OFF_FB_MODE_MASK;
+	dw_pcie_writel_dbi(pci, GEN3_EQ_CONTROL_OFF, val);
+
+	val = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
+	val &= ~GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK;
+	val |= (0x1 << GEN3_RELATED_OFF_RATE_SHADOW_SEL_SHIFT);
+	dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, val);
+
+	val = dw_pcie_readl_dbi(pci, GEN3_EQ_CONTROL_OFF);
+	val &= ~GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC_MASK;
+	val |= (0x360 << GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC_SHIFT);
+	val &= ~GEN3_EQ_CONTROL_OFF_FB_MODE_MASK;
+	dw_pcie_writel_dbi(pci, GEN3_EQ_CONTROL_OFF, val);
+
+	val = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
+	val &= ~GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK;
+	dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, val);
+}
+
+static int tegra_pcie_dw_host_init(struct pcie_port *pp)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct tegra_pcie_dw *pcie = to_tegra_pcie(pci);
+	u32 val, tmp, offset, speed;
+	unsigned int count;
+	u16 val_w;
+
+core_init:
+	count = 200;
+#if defined(CONFIG_PCIEASPM)
+	offset = dw_pcie_find_ext_capability(pci, PCI_EXT_CAP_ID_L1SS);
+	pcie->cfg_link_cap_l1sub = offset + PCI_L1SS_CAP;
+#endif
+	val = dw_pcie_readl_dbi(pci, PCI_IO_BASE);
+	val &= ~(IO_BASE_IO_DECODE | IO_BASE_IO_DECODE_BIT8);
+	dw_pcie_writel_dbi(pci, PCI_IO_BASE, val);
+
+	val = dw_pcie_readl_dbi(pci, PCI_PREF_MEMORY_BASE);
+	val |= CFG_PREF_MEM_LIMIT_BASE_MEM_DECODE;
+	val |= CFG_PREF_MEM_LIMIT_BASE_MEM_LIMIT_DECODE;
+	dw_pcie_writel_dbi(pci, PCI_PREF_MEMORY_BASE, val);
+
+	dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_0, 0);
+
+	/* Configure FTS */
+	val = dw_pcie_readl_dbi(pci, PORT_LOGIC_ACK_F_ASPM_CTRL);
+	val &= ~(N_FTS_MASK << N_FTS_SHIFT);
+	val |= N_FTS_VAL << N_FTS_SHIFT;
+	dw_pcie_writel_dbi(pci, PORT_LOGIC_ACK_F_ASPM_CTRL, val);
+
+	val = dw_pcie_readl_dbi(pci, PORT_LOGIC_GEN2_CTRL);
+	val &= ~FTS_MASK;
+	val |= FTS_VAL;
+	dw_pcie_writel_dbi(pci, PORT_LOGIC_GEN2_CTRL, val);
+
+	/* Enable as 0xFFFF0001 response for CRS */
+	val = dw_pcie_readl_dbi(pci, PORT_LOGIC_AMBA_ERROR_RESPONSE_DEFAULT);
+	val &= ~(AMBA_ERROR_RESPONSE_CRS_MASK << AMBA_ERROR_RESPONSE_CRS_SHIFT);
+	val |= (AMBA_ERROR_RESPONSE_CRS_OKAY_FFFF0001 <<
+		AMBA_ERROR_RESPONSE_CRS_SHIFT);
+	dw_pcie_writel_dbi(pci, PORT_LOGIC_AMBA_ERROR_RESPONSE_DEFAULT, val);
+
+	/* Configure Max Speed from DT */
+	if (pcie->max_speed && pcie->max_speed != -EINVAL) {
+		val = dw_pcie_readl_dbi(pci, pcie->pcie_cap_base +
+					PCI_EXP_LNKCAP);
+		val &= ~PCI_EXP_LNKCAP_SLS;
+		val |= pcie->max_speed;
+		dw_pcie_writel_dbi(pci, pcie->pcie_cap_base + PCI_EXP_LNKCAP,
+				   val);
+	}
+
+	/* Configure Max lane width from DT */
+	val = dw_pcie_readl_dbi(pci, pcie->pcie_cap_base + PCI_EXP_LNKCAP);
+	val &= ~PCI_EXP_LNKCAP_MLW;
+	val |= (pcie->num_lanes << PCI_EXP_LNKSTA_NLW_SHIFT);
+	dw_pcie_writel_dbi(pci, pcie->pcie_cap_base + PCI_EXP_LNKCAP, val);
+
+	config_gen3_gen4_eq_presets(pcie);
+
+#if defined(CONFIG_PCIEASPM)
+	/* Enable ASPM counters */
+	val = EVENT_COUNTER_ENABLE_ALL << EVENT_COUNTER_ENABLE_SHIFT;
+	val |= EVENT_COUNTER_GROUP_5 << EVENT_COUNTER_GROUP_SEL_SHIFT;
+	dw_pcie_writel_dbi(pci, event_cntr_ctrl_offset[pcie->cid], val);
+
+	/* Program T_cmrt and T_pwr_on values */
+	val = dw_pcie_readl_dbi(pci, pcie->cfg_link_cap_l1sub);
+	val &= ~(PCI_L1SS_CAP_CM_RESTORE_TIME | PCI_L1SS_CAP_P_PWR_ON_VALUE);
+	val |= (pcie->aspm_cmrt << 8);
+	val |= (pcie->aspm_pwr_on_t << 19);
+	dw_pcie_writel_dbi(pci, pcie->cfg_link_cap_l1sub, val);
+
+	/* Program L0s and L1 entrance latencies */
+	val = dw_pcie_readl_dbi(pci, PORT_LOGIC_ACK_F_ASPM_CTRL);
+	val &= ~L0S_ENTRANCE_LAT_MASK;
+	val |= (pcie->aspm_l0s_enter_lat << L0S_ENTRANCE_LAT_SHIFT);
+	val |= ENTER_ASPM;
+	dw_pcie_writel_dbi(pci, PORT_LOGIC_ACK_F_ASPM_CTRL, val);
+#endif
+	val = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
+	val &= ~GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL;
+	dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, val);
+
+	if (pcie->update_fc_fixup) {
+		val = dw_pcie_readl_dbi(pci, CFG_TIMER_CTRL_MAX_FUNC_NUM_OFF);
+		val |= 0x1 << CFG_TIMER_CTRL_ACK_NAK_SHIFT;
+		dw_pcie_writel_dbi(pci, CFG_TIMER_CTRL_MAX_FUNC_NUM_OFF, val);
+	}
+
+	dw_pcie_setup_rc(pp);
+
+	clk_set_rate(pcie->core_clk, GEN4_CORE_CLK_FREQ);
+
+	/* Assert RST */
+	val = appl_readl(pcie, APPL_PINMUX);
+	val &= ~APPL_PINMUX_PEX_RST;
+	appl_writel(pcie, val, APPL_PINMUX);
+
+	usleep_range(100, 200);
+
+	/* Enable LTSSM */
+	val = appl_readl(pcie, APPL_CTRL);
+	val |= APPL_CTRL_LTSSM_EN;
+	appl_writel(pcie, val, APPL_CTRL);
+
+	/* De-assert RST */
+	val = appl_readl(pcie, APPL_PINMUX);
+	val |= APPL_PINMUX_PEX_RST;
+	appl_writel(pcie, val, APPL_PINMUX);
+
+	msleep(100);
+
+	val_w = dw_pcie_readw_dbi(pci, pcie->pcie_cap_base + PCI_EXP_LNKSTA);
+	while (!(val_w & PCI_EXP_LNKSTA_DLLLA)) {
+		if (count) {
+			dev_dbg(pci->dev, "Waiting for link up\n");
+			usleep_range(1000, 2000);
+			val_w = dw_pcie_readw_dbi(pci, pcie->pcie_cap_base +
+						  PCI_EXP_LNKSTA);
+			count--;
+			continue;
+		}
+
+		val = appl_readl(pcie, APPL_DEBUG);
+		val &= APPL_DEBUG_LTSSM_STATE_MASK;
+		val >>= APPL_DEBUG_LTSSM_STATE_SHIFT;
+		tmp = appl_readl(pcie, APPL_LINK_STATUS);
+		tmp &= APPL_LINK_STATUS_RDLH_LINK_UP;
+		if (!(val == 0x11 && !tmp)) {
+			dev_info(pci->dev, "Link is down\n");
+			return 0;
+		}
+
+		dev_info(pci->dev, "Link is down in DLL");
+		dev_info(pci->dev, "Trying again with DLFE disabled\n");
+		/* Disable LTSSM */
+		val = appl_readl(pcie, APPL_CTRL);
+		val &= ~APPL_CTRL_LTSSM_EN;
+		appl_writel(pcie, val, APPL_CTRL);
+
+		reset_control_assert(pcie->core_rst);
+		reset_control_deassert(pcie->core_rst);
+
+		offset = dw_pcie_find_ext_capability(pci, PCI_EXT_CAP_ID_DLF);
+		val = dw_pcie_readl_dbi(pci, offset + PCI_DLF_CAP);
+		val &= ~PCI_DLF_EXCHANGE_ENABLE;
+		dw_pcie_writel_dbi(pci, offset, val);
+
+		/* Retry now with DLF Exchange disabled */
+		goto core_init;
+	}
+	dev_dbg(pci->dev, "Link is up\n");
+
+	speed = dw_pcie_readw_dbi(pci, pcie->pcie_cap_base + PCI_EXP_LNKSTA) &
+		PCI_EXP_LNKSTA_CLS;
+	clk_set_rate(pcie->core_clk, pcie_gen_freq[speed - 1]);
+
+	tegra_pcie_enable_interrupts(pp);
+
+	return 0;
+}
+
+static int tegra_pcie_dw_link_up(struct dw_pcie *pci)
+{
+	struct tegra_pcie_dw *pcie = to_tegra_pcie(pci);
+	u32 val = dw_pcie_readw_dbi(pci, pcie->pcie_cap_base + PCI_EXP_LNKSTA);
+
+	return !!(val & PCI_EXP_LNKSTA_DLLLA);
+}
+
+static void tegra_pcie_set_msi_vec_num(struct pcie_port *pp)
+{
+	pp->num_vectors = MAX_MSI_IRQS;
+}
+
+static const struct dw_pcie_ops tegra_dw_pcie_ops = {
+	.link_up = tegra_pcie_dw_link_up,
+};
+
+static struct dw_pcie_host_ops tegra_pcie_dw_host_ops = {
+	.rd_own_conf = tegra_pcie_dw_rd_own_conf,
+	.wr_own_conf = tegra_pcie_dw_wr_own_conf,
+	.host_init = tegra_pcie_dw_host_init,
+	.set_num_vectors = tegra_pcie_set_msi_vec_num,
+};
+
+static void tegra_pcie_disable_phy(struct tegra_pcie_dw *pcie)
+{
+	unsigned int phy_count = pcie->phy_count;
+
+	while (phy_count--) {
+		phy_power_off(pcie->phys[phy_count]);
+		phy_exit(pcie->phys[phy_count]);
+	}
+}
+
+static int tegra_pcie_enable_phy(struct tegra_pcie_dw *pcie)
+{
+	unsigned int i;
+	int ret;
+
+	for (i = 0; i < pcie->phy_count; i++) {
+		ret = phy_init(pcie->phys[i]);
+		if (ret < 0)
+			goto phy_power_off;
+
+		ret = phy_power_on(pcie->phys[i]);
+		if (ret < 0)
+			goto phy_exit;
+	}
+
+	return 0;
+
+phy_power_off:
+	while (i--) {
+		phy_power_off(pcie->phys[i]);
+phy_exit:
+		phy_exit(pcie->phys[i]);
+	}
+
+	return ret;
+}
+
+static int tegra_pcie_dw_parse_dt(struct tegra_pcie_dw *pcie)
+{
+	struct device_node *np = pcie->dev->of_node;
+	int ret;
+
+	ret = of_property_read_u32(np, "nvidia,aspm-cmrt-us", &pcie->aspm_cmrt);
+	if (ret < 0) {
+		dev_info(pcie->dev, "Failed to read ASPM T_cmrt: %d\n", ret);
+		return ret;
+	}
+
+	ret = of_property_read_u32(np, "nvidia,aspm-pwr-on-t-us",
+				   &pcie->aspm_pwr_on_t);
+	if (ret < 0)
+		dev_info(pcie->dev, "Failed to read ASPM Power On time: %d\n",
+			 ret);
+
+	ret = of_property_read_u32(np, "nvidia,aspm-l0s-entrance-latency-us",
+				   &pcie->aspm_l0s_enter_lat);
+	if (ret < 0)
+		dev_info(pcie->dev,
+			 "Failed to read ASPM L0s Entrance latency: %d\n", ret);
+
+	ret = of_property_read_u32(np, "num-lanes", &pcie->num_lanes);
+	if (ret < 0) {
+		dev_err(pcie->dev, "Failed to read num-lanes: %d\n", ret);
+		return ret;
+	}
+
+	pcie->max_speed = of_pci_get_max_link_speed(np);
+
+	ret = of_property_read_u32_index(np, "nvidia,bpmp", 1, &pcie->cid);
+	if (ret) {
+		dev_err(pcie->dev, "Failed to read Controller-ID: %d\n", ret);
+		return ret;
+	}
+
+	pcie->phy_count = of_property_count_strings(np, "phy-names");
+	if (pcie->phy_count < 0) {
+		dev_err(pcie->dev, "Failed to find PHY entries: %d\n",
+			pcie->phy_count);
+		return pcie->phy_count;
+	}
+
+	if (of_property_read_bool(np, "nvidia,update-fc-fixup"))
+		pcie->update_fc_fixup = true;
+
+	pcie->supports_clkreq =
+		of_property_read_bool(pcie->dev->of_node, "supports-clkreq");
+
+	pcie->enable_cdm_check =
+		of_property_read_bool(np, "snps,enable-cdm-check");
+
+	return 0;
+}
+
+static int tegra_pcie_bpmp_set_ctrl_state(struct tegra_pcie_dw *pcie,
+					  bool enable)
+{
+	struct mrq_uphy_response resp;
+	struct tegra_bpmp_message msg;
+	struct mrq_uphy_request req;
+	int err;
+
+	if (pcie->cid == 5)
+		return 0;
+
+	memset(&req, 0, sizeof(req));
+	memset(&resp, 0, sizeof(resp));
+
+	req.cmd = CMD_UPHY_PCIE_CONTROLLER_STATE;
+	req.controller_state.pcie_controller = pcie->cid;
+	req.controller_state.enable = enable;
+
+	memset(&msg, 0, sizeof(msg));
+	msg.mrq = MRQ_UPHY;
+	msg.tx.data = &req;
+	msg.tx.size = sizeof(req);
+	msg.rx.data = &resp;
+	msg.rx.size = sizeof(resp);
+
+	if (irqs_disabled())
+		err = tegra_bpmp_transfer_atomic(pcie->bpmp, &msg);
+	else
+		err = tegra_bpmp_transfer(pcie->bpmp, &msg);
+
+	return err;
+}
+
+static void tegra_pcie_downstream_dev_to_D0(struct tegra_pcie_dw *pcie)
+{
+	struct pcie_port *pp = &pcie->pci.pp;
+	struct pci_dev *pdev;
+	struct pci_bus *child;
+
+	list_for_each_entry(child, &pp->root_bus->children, node) {
+		/* Bring downstream devices to D0 if they are not already in */
+		if (child->parent == pp->root_bus)
+			break;
+	}
+	list_for_each_entry(pdev, &child->devices, bus_list) {
+		if (PCI_SLOT(pdev->devfn) == 0) {
+			if (pci_set_power_state(pdev, PCI_D0))
+				dev_err(pcie->dev,
+					"Failed to transition %s to D0 state\n",
+					dev_name(&pdev->dev));
+		}
+	}
+}
+
+static int tegra_pcie_config_controller(struct tegra_pcie_dw *pcie,
+					bool en_hw_hot_rst)
+{
+	int ret;
+	u32 val;
+
+	ret = tegra_pcie_bpmp_set_ctrl_state(pcie, true);
+	if (ret) {
+		dev_err(pcie->dev,
+			"Failed to enable controller %u: %d\n", pcie->cid, ret);
+		return ret;
+	}
+
+	ret = regulator_enable(pcie->pex_ctl_supply);
+	if (ret < 0) {
+		dev_err(pcie->dev, "Failed to enable regulator: %d\n", ret);
+		goto fail_reg_en;
+	}
+
+	ret = clk_prepare_enable(pcie->core_clk);
+	if (ret) {
+		dev_err(pcie->dev, "Failed to enable core clock: %d\n", ret);
+		goto fail_core_clk;
+	}
+
+	ret = reset_control_deassert(pcie->core_apb_rst);
+	if (ret) {
+		dev_err(pcie->dev, "Failed to deassert core APB reset: %d\n",
+			ret);
+		goto fail_core_apb_rst;
+	}
+
+	if (en_hw_hot_rst) {
+		/* Enable HW_HOT_RST mode */
+		val = appl_readl(pcie, APPL_CTRL);
+		val &= ~(APPL_CTRL_HW_HOT_RST_MODE_MASK <<
+			 APPL_CTRL_HW_HOT_RST_MODE_SHIFT);
+		val |= APPL_CTRL_HW_HOT_RST_EN;
+		appl_writel(pcie, val, APPL_CTRL);
+	}
+
+	ret = tegra_pcie_enable_phy(pcie);
+	if (ret) {
+		dev_err(pcie->dev, "Failed to enable PHY: %d\n", ret);
+		goto fail_phy;
+	}
+
+	/* Update CFG base address */
+	appl_writel(pcie, pcie->dbi_res->start & APPL_CFG_BASE_ADDR_MASK,
+		    APPL_CFG_BASE_ADDR);
+
+	/* Configure this core for RP mode operation */
+	appl_writel(pcie, APPL_DM_TYPE_RP, APPL_DM_TYPE);
+
+	appl_writel(pcie, 0x0, APPL_CFG_SLCG_OVERRIDE);
+
+	val = appl_readl(pcie, APPL_CTRL);
+	appl_writel(pcie, val | APPL_CTRL_SYS_PRE_DET_STATE, APPL_CTRL);
+
+	val = appl_readl(pcie, APPL_CFG_MISC);
+	val |= (APPL_CFG_MISC_ARCACHE_VAL << APPL_CFG_MISC_ARCACHE_SHIFT);
+	appl_writel(pcie, val, APPL_CFG_MISC);
+
+	if (!pcie->supports_clkreq) {
+		val = appl_readl(pcie, APPL_PINMUX);
+		val |= APPL_PINMUX_CLKREQ_OUT_OVRD_EN;
+		val |= APPL_PINMUX_CLKREQ_OUT_OVRD;
+		appl_writel(pcie, val, APPL_PINMUX);
+	}
+
+	/* Update iATU_DMA base address */
+	appl_writel(pcie,
+		    pcie->atu_dma_res->start & APPL_CFG_IATU_DMA_BASE_ADDR_MASK,
+		    APPL_CFG_IATU_DMA_BASE_ADDR);
+
+	reset_control_deassert(pcie->core_rst);
+
+	pcie->pcie_cap_base = dw_pcie_find_capability(&pcie->pci,
+						      PCI_CAP_ID_EXP);
+
+#if defined(CONFIG_PCIEASPM)
+	/* Disable ASPM-L1SS advertisement as there is no CLKREQ routing */
+	if (!pcie->supports_clkreq) {
+		disable_aspm_l11(pcie);
+		disable_aspm_l12(pcie);
+	}
+#endif
+	return ret;
+
+fail_phy:
+	reset_control_assert(pcie->core_apb_rst);
+fail_core_apb_rst:
+	clk_disable_unprepare(pcie->core_clk);
+fail_core_clk:
+	regulator_disable(pcie->pex_ctl_supply);
+fail_reg_en:
+	tegra_pcie_bpmp_set_ctrl_state(pcie, false);
+
+	return ret;
+}
+
+static int __deinit_controller(struct tegra_pcie_dw *pcie)
+{
+	int ret;
+
+	ret = reset_control_assert(pcie->core_rst);
+	if (ret) {
+		dev_err(pcie->dev, "Failed to assert \"core\" reset: %d\n",
+			ret);
+		return ret;
+	}
+	tegra_pcie_disable_phy(pcie);
+	ret = reset_control_assert(pcie->core_apb_rst);
+	if (ret) {
+		dev_err(pcie->dev, "Failed to assert APB reset: %d\n", ret);
+		return ret;
+	}
+	clk_disable_unprepare(pcie->core_clk);
+	ret = regulator_disable(pcie->pex_ctl_supply);
+	if (ret) {
+		dev_err(pcie->dev, "Failed to disable regulator: %d\n", ret);
+		return ret;
+	}
+	ret = tegra_pcie_bpmp_set_ctrl_state(pcie, false);
+	if (ret) {
+		dev_err(pcie->dev, "Failed to disable controller %d: %d\n",
+			pcie->cid, ret);
+		return ret;
+	}
+	return ret;
+}
+
+static int tegra_pcie_init_controller(struct tegra_pcie_dw *pcie)
+{
+	struct dw_pcie *pci = &pcie->pci;
+	struct pcie_port *pp = &pci->pp;
+	int ret;
+
+	ret = tegra_pcie_config_controller(pcie, false);
+	if (ret < 0)
+		return ret;
+
+	pp->root_bus_nr = -1;
+	pp->ops = &tegra_pcie_dw_host_ops;
+
+	ret = dw_pcie_host_init(pp);
+	if (ret < 0) {
+		dev_err(pcie->dev, "Failed to add PCIe port: %d\n", ret);
+		goto fail_host_init;
+	}
+
+	return 0;
+
+fail_host_init:
+	return __deinit_controller(pcie);
+}
+
+static int tegra_pcie_try_link_l2(struct tegra_pcie_dw *pcie)
+{
+	u32 val;
+
+	if (!tegra_pcie_dw_link_up(&pcie->pci))
+		return 0;
+
+	val = appl_readl(pcie, APPL_RADM_STATUS);
+	val |= APPL_PM_XMT_TURNOFF_STATE;
+	appl_writel(pcie, val, APPL_RADM_STATUS);
+
+	return readl_poll_timeout_atomic(pcie->appl_base + APPL_DEBUG, val,
+				 val & APPL_DEBUG_PM_LINKST_IN_L2_LAT,
+				 1, PME_ACK_TIMEOUT);
+}
+
+static void tegra_pcie_dw_pme_turnoff(struct tegra_pcie_dw *pcie)
+{
+	u32 data;
+	int err;
+
+	if (!tegra_pcie_dw_link_up(&pcie->pci)) {
+		dev_dbg(pcie->dev, "PCIe link is not up...!\n");
+		return;
+	}
+
+	if (tegra_pcie_try_link_l2(pcie)) {
+		dev_info(pcie->dev, "Link didn't transition to L2 state\n");
+		/*
+		 * TX lane clock freq will reset to Gen1 only if link is in L2
+		 * or detect state.
+		 * So apply pex_rst to end point to force RP to go into detect
+		 * state
+		 */
+		data = appl_readl(pcie, APPL_PINMUX);
+		data &= ~APPL_PINMUX_PEX_RST;
+		appl_writel(pcie, data, APPL_PINMUX);
+
+		err = readl_poll_timeout_atomic(pcie->appl_base + APPL_DEBUG,
+						data,
+						((data &
+						APPL_DEBUG_LTSSM_STATE_MASK) >>
+						APPL_DEBUG_LTSSM_STATE_SHIFT) ==
+						LTSSM_STATE_PRE_DETECT,
+						1, LTSSM_TIMEOUT);
+		if (err) {
+			dev_info(pcie->dev, "Link didn't go to detect state\n");
+		} else {
+			/* Disable LTSSM after link is in detect state */
+			data = appl_readl(pcie, APPL_CTRL);
+			data &= ~APPL_CTRL_LTSSM_EN;
+			appl_writel(pcie, data, APPL_CTRL);
+		}
+	}
+	/*
+	 * DBI registers may not be accessible after this as PLL-E would be
+	 * down depending on how CLKREQ is pulled by end point
+	 */
+	data = appl_readl(pcie, APPL_PINMUX);
+	data |= (APPL_PINMUX_CLKREQ_OVERRIDE_EN | APPL_PINMUX_CLKREQ_OVERRIDE);
+	/* Cut REFCLK to slot */
+	data |= APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE_EN;
+	data &= ~APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE;
+	appl_writel(pcie, data, APPL_PINMUX);
+}
+
+static int tegra_pcie_deinit_controller(struct tegra_pcie_dw *pcie)
+{
+	/*
+	 * link doesn't go into L2 state with some of the endpoints with Tegra
+	 * if they are not in D0 state. So, need to make sure that immediate
+	 * downstream devices are in D0 state before sending PME_TurnOff to put
+	 * link into L2 state
+	 */
+	tegra_pcie_downstream_dev_to_D0(pcie);
+	dw_pcie_host_deinit(&pcie->pci.pp);
+	tegra_pcie_dw_pme_turnoff(pcie);
+	return __deinit_controller(pcie);
+}
+
+static int tegra_pcie_config_rp(struct tegra_pcie_dw *pcie)
+{
+	struct pcie_port *pp = &pcie->pci.pp;
+	struct device *dev = pcie->dev;
+	char *name;
+	int ret;
+
+	if (IS_ENABLED(CONFIG_PCI_MSI)) {
+		pp->msi_irq = of_irq_get_byname(dev->of_node, "msi");
+		if (!pp->msi_irq) {
+			dev_err(dev, "Failed to get MSI interrupt\n");
+			return -ENODEV;
+		}
+	}
+
+	pm_runtime_enable(dev);
+	ret = pm_runtime_get_sync(dev);
+	if (ret < 0) {
+		dev_err(dev, "Failed to get runtime sync for PCIe dev: %d\n",
+			ret);
+		pm_runtime_disable(dev);
+		return ret;
+	}
+
+	tegra_pcie_init_controller(pcie);
+
+	pcie->link_state = tegra_pcie_dw_link_up(&pcie->pci);
+
+	if (!pcie->link_state) {
+		ret = -ENOMEDIUM;
+		goto fail_host_init;
+	}
+
+	name = devm_kasprintf(dev, GFP_KERNEL, "%pOFP", dev->of_node);
+	if (!name) {
+		ret = -ENOMEM;
+		goto fail_host_init;
+	}
+
+	pcie->debugfs = debugfs_create_dir(name, NULL);
+	if (!pcie->debugfs)
+		dev_err(dev, "Failed to create debugfs\n");
+	else
+		init_debugfs(pcie);
+
+	return ret;
+
+fail_host_init:
+	tegra_pcie_deinit_controller(pcie);
+	pm_runtime_put_sync(dev);
+	pm_runtime_disable(dev);
+	return ret;
+}
+
+static const struct tegra_pcie_soc tegra_pcie_rc_of_data = {
+	.mode = DW_PCIE_RC_TYPE,
+};
+
+static const struct of_device_id tegra_pcie_dw_of_match[] = {
+	{
+		.compatible = "nvidia,tegra194-pcie",
+		.data = &tegra_pcie_rc_of_data,
+	},
+	{},
+};
+MODULE_DEVICE_TABLE(of, tegra_pcie_dw_of_match);
+
+static int tegra_pcie_dw_probe(struct platform_device *pdev)
+{
+	const struct tegra_pcie_soc *data;
+	struct device *dev = &pdev->dev;
+	struct resource *atu_dma_res;
+	struct tegra_pcie_dw *pcie;
+	struct resource *dbi_res;
+	struct pcie_port *pp;
+	struct dw_pcie *pci;
+	struct phy **phys;
+	char *name;
+	int ret;
+	u32 i;
+
+	pcie = devm_kzalloc(dev, sizeof(*pcie), GFP_KERNEL);
+	if (!pcie)
+		return -ENOMEM;
+
+	pci = &pcie->pci;
+	pci->dev = &pdev->dev;
+	pci->ops = &tegra_dw_pcie_ops;
+	pp = &pci->pp;
+	pcie->dev = &pdev->dev;
+
+	data = (struct tegra_pcie_soc *)of_device_get_match_data(dev);
+	if (!data)
+		return -EINVAL;
+	pcie->mode = (enum dw_pcie_device_mode)data->mode;
+
+	ret = tegra_pcie_dw_parse_dt(pcie);
+	if (ret < 0) {
+		dev_err(dev, "Failed to parse device tree: %d\n", ret);
+		return ret;
+	}
+
+	pcie->pex_ctl_supply = devm_regulator_get(dev, "vddio-pex-ctl");
+	if (IS_ERR(pcie->pex_ctl_supply)) {
+		dev_err(dev, "Failed to get regulator: %ld\n",
+			PTR_ERR(pcie->pex_ctl_supply));
+		return PTR_ERR(pcie->pex_ctl_supply);
+	}
+
+	pcie->core_clk = devm_clk_get(dev, "core");
+	if (IS_ERR(pcie->core_clk)) {
+		dev_err(dev, "Failed to get core clock: %ld\n",
+			PTR_ERR(pcie->core_clk));
+		return PTR_ERR(pcie->core_clk);
+	}
+
+	pcie->appl_res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
+						      "appl");
+	if (!pcie->appl_res) {
+		dev_err(dev, "Failed to find \"appl\" region\n");
+		return PTR_ERR(pcie->appl_res);
+	}
+	pcie->appl_base = devm_ioremap_resource(dev, pcie->appl_res);
+	if (IS_ERR(pcie->appl_base))
+		return PTR_ERR(pcie->appl_base);
+
+	pcie->core_apb_rst = devm_reset_control_get(dev, "apb");
+	if (IS_ERR(pcie->core_apb_rst)) {
+		dev_err(dev, "Failed to get APB reset: %ld\n",
+			PTR_ERR(pcie->core_apb_rst));
+		return PTR_ERR(pcie->core_apb_rst);
+	}
+
+	phys = devm_kcalloc(dev, pcie->phy_count, sizeof(*phys), GFP_KERNEL);
+	if (!phys)
+		return PTR_ERR(phys);
+
+	for (i = 0; i < pcie->phy_count; i++) {
+		name = kasprintf(GFP_KERNEL, "p2u-%u", i);
+		if (!name) {
+			dev_err(dev, "Failed to create P2U string\n");
+			return -ENOMEM;
+		}
+		phys[i] = devm_phy_get(dev, name);
+		kfree(name);
+		if (IS_ERR(phys[i])) {
+			ret = PTR_ERR(phys[i]);
+			dev_err(dev, "Failed to get PHY: %d\n", ret);
+			return ret;
+		}
+	}
+
+	pcie->phys = phys;
+
+	dbi_res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dbi");
+	if (!dbi_res) {
+		dev_err(dev, "Failed to find \"dbi\" region\n");
+		return PTR_ERR(dbi_res);
+	}
+	pcie->dbi_res = dbi_res;
+
+	pci->dbi_base = devm_ioremap_resource(dev, dbi_res);
+	if (IS_ERR(pci->dbi_base))
+		return PTR_ERR(pci->dbi_base);
+
+	/* Tegra HW locates DBI2 at a fixed offset from DBI */
+	pci->dbi_base2 = pci->dbi_base + 0x1000;
+
+	atu_dma_res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
+						   "atu_dma");
+	if (!atu_dma_res) {
+		dev_err(dev, "Failed to find \"atu_dma\" region\n");
+		return PTR_ERR(atu_dma_res);
+	}
+	pcie->atu_dma_res = atu_dma_res;
+	pci->atu_base = devm_ioremap_resource(dev, atu_dma_res);
+	if (IS_ERR(pci->atu_base))
+		return PTR_ERR(pci->atu_base);
+
+	pcie->core_rst = devm_reset_control_get(dev, "core");
+	if (IS_ERR(pcie->core_rst)) {
+		dev_err(dev, "Failed to get core reset: %ld\n",
+			PTR_ERR(pcie->core_rst));
+		return PTR_ERR(pcie->core_rst);
+	}
+
+	pp->irq = platform_get_irq_byname(pdev, "intr");
+	if (!pp->irq) {
+		dev_err(dev, "Failed to get \"intr\" interrupt\n");
+		return -ENODEV;
+	}
+
+	ret = devm_request_irq(dev, pp->irq, tegra_pcie_irq_handler,
+			       IRQF_SHARED, "tegra-pcie-intr", pcie);
+	if (ret) {
+		dev_err(dev, "Failed to request IRQ %d: %d\n", pp->irq, ret);
+		return ret;
+	}
+
+	pcie->bpmp = tegra_bpmp_get(dev);
+	if (IS_ERR(pcie->bpmp))
+		return PTR_ERR(pcie->bpmp);
+
+	platform_set_drvdata(pdev, pcie);
+
+	if (pcie->mode == DW_PCIE_RC_TYPE) {
+		ret = tegra_pcie_config_rp(pcie);
+		if (ret && ret != -ENOMEDIUM)
+			goto fail;
+		else
+			return 0;
+	}
+
+fail:
+	tegra_bpmp_put(pcie->bpmp);
+	return ret;
+}
+
+static int tegra_pcie_dw_remove(struct platform_device *pdev)
+{
+	struct tegra_pcie_dw *pcie = platform_get_drvdata(pdev);
+
+	if (pcie->mode != DW_PCIE_RC_TYPE)
+		return 0;
+
+	if (!pcie->link_state)
+		return 0;
+
+	debugfs_remove_recursive(pcie->debugfs);
+	tegra_pcie_deinit_controller(pcie);
+	pm_runtime_put_sync(pcie->dev);
+	pm_runtime_disable(pcie->dev);
+	tegra_bpmp_put(pcie->bpmp);
+
+	return 0;
+}
+
+static int tegra_pcie_dw_suspend_late(struct device *dev)
+{
+	struct tegra_pcie_dw *pcie = dev_get_drvdata(dev);
+	u32 val;
+
+	if (!pcie->link_state)
+		return 0;
+
+	/* Enable HW_HOT_RST mode */
+	val = appl_readl(pcie, APPL_CTRL);
+	val &= ~(APPL_CTRL_HW_HOT_RST_MODE_MASK <<
+		 APPL_CTRL_HW_HOT_RST_MODE_SHIFT);
+	val |= APPL_CTRL_HW_HOT_RST_EN;
+	appl_writel(pcie, val, APPL_CTRL);
+
+	return 0;
+}
+
+static int tegra_pcie_dw_suspend_noirq(struct device *dev)
+{
+	struct tegra_pcie_dw *pcie = dev_get_drvdata(dev);
+
+	if (!pcie->link_state)
+		return 0;
+
+	/* Save MSI interrupt vector */
+	pcie->msi_ctrl_int = dw_pcie_readl_dbi(&pcie->pci,
+					       PORT_LOGIC_MSI_CTRL_INT_0_EN);
+	tegra_pcie_downstream_dev_to_D0(pcie);
+	tegra_pcie_dw_pme_turnoff(pcie);
+	return __deinit_controller(pcie);
+}
+
+static int tegra_pcie_dw_resume_noirq(struct device *dev)
+{
+	struct tegra_pcie_dw *pcie = dev_get_drvdata(dev);
+	int ret;
+
+	if (!pcie->link_state)
+		return 0;
+
+	ret = tegra_pcie_config_controller(pcie, true);
+	if (ret < 0)
+		return ret;
+
+	ret = tegra_pcie_dw_host_init(&pcie->pci.pp);
+	if (ret < 0) {
+		dev_err(dev, "Failed to init host: %d\n", ret);
+		goto fail_host_init;
+	}
+
+	/* Restore MSI interrupt vector */
+	dw_pcie_writel_dbi(&pcie->pci, PORT_LOGIC_MSI_CTRL_INT_0_EN,
+			   pcie->msi_ctrl_int);
+
+	return 0;
+fail_host_init:
+	return __deinit_controller(pcie);
+}
+
+static int tegra_pcie_dw_resume_early(struct device *dev)
+{
+	struct tegra_pcie_dw *pcie = dev_get_drvdata(dev);
+	u32 val;
+
+	if (!pcie->link_state)
+		return 0;
+
+	/* Disable HW_HOT_RST mode */
+	val = appl_readl(pcie, APPL_CTRL);
+	val &= ~(APPL_CTRL_HW_HOT_RST_MODE_MASK <<
+		 APPL_CTRL_HW_HOT_RST_MODE_SHIFT);
+	val |= APPL_CTRL_HW_HOT_RST_MODE_IMDT_RST <<
+	       APPL_CTRL_HW_HOT_RST_MODE_SHIFT;
+	val &= ~APPL_CTRL_HW_HOT_RST_EN;
+	appl_writel(pcie, val, APPL_CTRL);
+
+	return 0;
+}
+
+static void tegra_pcie_dw_shutdown(struct platform_device *pdev)
+{
+	struct tegra_pcie_dw *pcie = platform_get_drvdata(pdev);
+
+	if (pcie->mode != DW_PCIE_RC_TYPE)
+		return;
+
+	if (!pcie->link_state)
+		return;
+
+	debugfs_remove_recursive(pcie->debugfs);
+	tegra_pcie_downstream_dev_to_D0(pcie);
+
+	disable_irq(pcie->pci.pp.irq);
+	if (IS_ENABLED(CONFIG_PCI_MSI))
+		disable_irq(pcie->pci.pp.msi_irq);
+
+	tegra_pcie_dw_pme_turnoff(pcie);
+	__deinit_controller(pcie);
+}
+
+static const struct dev_pm_ops tegra_pcie_dw_pm_ops = {
+	.suspend_late = tegra_pcie_dw_suspend_late,
+	.suspend_noirq = tegra_pcie_dw_suspend_noirq,
+	.resume_noirq = tegra_pcie_dw_resume_noirq,
+	.resume_early = tegra_pcie_dw_resume_early,
+};
+
+static struct platform_driver tegra_pcie_dw_driver = {
+	.probe = tegra_pcie_dw_probe,
+	.remove = tegra_pcie_dw_remove,
+	.shutdown = tegra_pcie_dw_shutdown,
+	.driver = {
+		.name	= "tegra194-pcie",
+		.pm = &tegra_pcie_dw_pm_ops,
+		.of_match_table = tegra_pcie_dw_of_match,
+	},
+};
+module_platform_driver(tegra_pcie_dw_driver);
+
+MODULE_AUTHOR("Vidya Sagar <vidyas@nvidia.com>");
+MODULE_DESCRIPTION("NVIDIA PCIe host controller driver");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
