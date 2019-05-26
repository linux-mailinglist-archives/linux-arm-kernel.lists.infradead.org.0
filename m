Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBBC2A84D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 06:41:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=689dxEmA3/uya0sNt9zpGWKfS3Iw92u3NpymESFU2LU=; b=QLeIkylP6NMMfr
	QgBogIj4yNBacUKP4a7ENkedvN7bu01PnZ5BEQHQAVqECZrO7esVXpgEDwD1Hw9iQBXZZfAoZGjQu
	H/i6fVGaYLK3hK0vHguUPa0ZLrWWDRldMzGO4MYt+gh6jLO6VLFxP7ytDGyATbJJ81vzJnI8dKUW5
	2rOikCF+O0LJ0IbLwdRw1pYORwKNM5npmE0o9lxrv4hSJPJulvUhphi6pp8xFjgzOdjk7hwGHVbM7
	P19CEa3c3H39JZEl54h8Bf71OBO2pqOQLpOzFGiHYrAxyxwd7TCMxoolb9PSYSyu//+UbPh8Ft4/z
	62ezM66A+Pg9ofQIfGHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUkxz-0003IX-QH; Sun, 26 May 2019 04:41:03 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUkwm-000145-V9
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 04:40:03 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cea18940000>; Sat, 25 May 2019 21:39:48 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Sat, 25 May 2019 21:39:48 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Sat, 25 May 2019 21:39:48 -0700
Received: from HQMAIL106.nvidia.com (172.18.146.12) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Sun, 26 May
 2019 04:39:48 +0000
Received: from hqnvemgw01.nvidia.com (172.20.150.20) by HQMAIL106.nvidia.com
 (172.18.146.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Sun, 26 May 2019 04:39:47 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5cea188f0000>; Sat, 25 May 2019 21:39:47 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <mark.rutland@arm.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <kishon@ti.com>, <catalin.marinas@arm.com>, <will.deacon@arm.com>,
 <jingoohan1@gmail.com>, <gustavo.pimentel@synopsys.com>
Subject: [PATCH V8 13/15] phy: tegra: Add PCIe PIPE2UPHY support
Date: Sun, 26 May 2019 10:07:49 +0530
Message-ID: <20190526043751.12729-14-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190526043751.12729-1-vidyas@nvidia.com>
References: <20190526043751.12729-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1558845588; bh=qgra4eJBRGON/VmsMvZdgp1ng9XQPAkeDZN+EktlL4U=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=lwdscFJPJcmD6ZmONz2LX1LOYc4H4T7fegnI1ppTPW6zONPTrV4Lmus+0AzC9z0kB
 sLkJIzwGc1LKPVM3hZ/Cew5uXgKnVCdEey4ZA9TbRhXJ6gcNZhPub7OorcrkN59N22
 8Mq5N2MlM8QnWUgC8JS37j0Zwtm+YWfedEGPkIrwVdilBQUWK5nPTVBvHHQr27ol+0
 xw9BlIZSYrsNbIT1aNwq7YyTRkUIdyvfzh4sWafcJn7ncUkNKBVf9YZhudP/xcroTX
 LuaHBxM8ajWhOpg4KLjUdVgexyo9+PmL8pURjgw3iRQH7SL9vc8GrMTj4HfAEHv1am
 MSizbNBBEw0rA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_213949_542563_D2979118 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, mperttunen@nvidia.com,
 linux-tegra@vger.kernel.org, vidyas@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Synopsys DesignWare core based PCIe controllers in Tegra 194 SoC interface
with Universal PHY (UPHY) module through a PIPE2UPHY (P2U) module.
For each PCIe lane of a controller, there is a P2U unit instantiated at
hardware level. This driver provides support for the programming required
for each P2U that is going to be used for a PCIe controller.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
Changes since [v7]:
* Changed P2U driver file name from pcie-p2u-tegra194.c to phy-tegra194-p2u.c

Changes since [v6]:
* None

Changes since [v5]:
* Addressed review comments from Thierry

Changes since [v4]:
* None

Changes since [v3]:
* Rebased on top of linux-next top of the tree

Changes since [v2]:
* Replaced spaces with tabs in Kconfig file
* Sorted header file inclusion alphabetically

Changes since [v1]:
* Added COMPILE_TEST in Kconfig
* Removed empty phy_ops implementations
* Modified code according to DT documentation file modifications

 drivers/phy/tegra/Kconfig            |   7 ++
 drivers/phy/tegra/Makefile           |   1 +
 drivers/phy/tegra/phy-tegra194-p2u.c | 109 +++++++++++++++++++++++++++
 3 files changed, 117 insertions(+)
 create mode 100644 drivers/phy/tegra/phy-tegra194-p2u.c

diff --git a/drivers/phy/tegra/Kconfig b/drivers/phy/tegra/Kconfig
index a3b1de953fb7..c56fc8452e03 100644
--- a/drivers/phy/tegra/Kconfig
+++ b/drivers/phy/tegra/Kconfig
@@ -6,3 +6,10 @@ config PHY_TEGRA_XUSB
 
 	  To compile this driver as a module, choose M here: the module will
 	  be called phy-tegra-xusb.
+
+config PHY_TEGRA194_P2U
+	tristate "NVIDIA Tegra194 PIPE2UPHY PHY driver"
+	depends on ARCH_TEGRA || COMPILE_TEST
+	select GENERIC_PHY
+	help
+	  Enable this to support the P2U (PIPE to UPHY) that is part of Tegra 19x SOCs.
diff --git a/drivers/phy/tegra/Makefile b/drivers/phy/tegra/Makefile
index a93cd9a499b2..ac43000dc4ce 100644
--- a/drivers/phy/tegra/Makefile
+++ b/drivers/phy/tegra/Makefile
@@ -5,3 +5,4 @@ phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_124_SOC) += xusb-tegra124.o
 phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_132_SOC) += xusb-tegra124.o
 phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_210_SOC) += xusb-tegra210.o
 phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_186_SOC) += xusb-tegra186.o
+obj-$(CONFIG_PHY_TEGRA194_P2U) += phy-tegra194-p2u.o
diff --git a/drivers/phy/tegra/phy-tegra194-p2u.c b/drivers/phy/tegra/phy-tegra194-p2u.c
new file mode 100644
index 000000000000..7b84b4c55e43
--- /dev/null
+++ b/drivers/phy/tegra/phy-tegra194-p2u.c
@@ -0,0 +1,109 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * P2U (PIPE to UPHY) driver for Tegra T194 SoC
+ *
+ * Copyright (C) 2019 NVIDIA Corporation.
+ *
+ * Author: Vidya Sagar <vidyas@nvidia.com>
+ */
+
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_platform.h>
+#include <linux/phy/phy.h>
+
+#define P2U_PERIODIC_EQ_CTRL_GEN3	0xc0
+#define P2U_PERIODIC_EQ_CTRL_GEN3_PERIODIC_EQ_EN		BIT(0)
+#define P2U_PERIODIC_EQ_CTRL_GEN3_INIT_PRESET_EQ_TRAIN_EN	BIT(1)
+#define P2U_PERIODIC_EQ_CTRL_GEN4	0xc4
+#define P2U_PERIODIC_EQ_CTRL_GEN4_INIT_PRESET_EQ_TRAIN_EN	BIT(1)
+
+#define P2U_RX_DEBOUNCE_TIME				0xa4
+#define P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_MASK	0xffff
+#define P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_VAL		160
+
+struct tegra_p2u {
+	void __iomem *base;
+};
+
+static int tegra_p2u_power_on(struct phy *x)
+{
+	struct tegra_p2u *phy = phy_get_drvdata(x);
+	u32 val;
+
+	val = readl(phy->base + P2U_PERIODIC_EQ_CTRL_GEN3);
+	val &= ~P2U_PERIODIC_EQ_CTRL_GEN3_PERIODIC_EQ_EN;
+	val |= P2U_PERIODIC_EQ_CTRL_GEN3_INIT_PRESET_EQ_TRAIN_EN;
+	writel(val, phy->base + P2U_PERIODIC_EQ_CTRL_GEN3);
+
+	val = readl(phy->base + P2U_PERIODIC_EQ_CTRL_GEN4);
+	val |= P2U_PERIODIC_EQ_CTRL_GEN4_INIT_PRESET_EQ_TRAIN_EN;
+	writel(val, phy->base + P2U_PERIODIC_EQ_CTRL_GEN4);
+
+	val = readl(phy->base + P2U_RX_DEBOUNCE_TIME);
+	val &= ~P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_MASK;
+	val |= P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_VAL;
+	writel(val, phy->base + P2U_RX_DEBOUNCE_TIME);
+
+	return 0;
+}
+
+static const struct phy_ops ops = {
+	.power_on = tegra_p2u_power_on,
+	.owner = THIS_MODULE,
+};
+
+static int tegra_p2u_probe(struct platform_device *pdev)
+{
+	struct phy_provider *phy_provider;
+	struct device *dev = &pdev->dev;
+	struct phy *generic_phy;
+	struct tegra_p2u *phy;
+	struct resource *res;
+
+	phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
+	if (!phy)
+		return -ENOMEM;
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "ctl");
+	phy->base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(phy->base))
+		return PTR_ERR_OR_ZERO(phy->base);
+
+	platform_set_drvdata(pdev, phy);
+
+	generic_phy = devm_phy_create(dev, NULL, &ops);
+	if (IS_ERR(generic_phy))
+		return PTR_ERR_OR_ZERO(generic_phy);
+
+	phy_set_drvdata(generic_phy, phy);
+
+	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	if (IS_ERR(phy_provider))
+		return PTR_ERR_OR_ZERO(phy_provider);
+
+	return 0;
+}
+
+static const struct of_device_id tegra_p2u_id_table[] = {
+	{
+		.compatible = "nvidia,tegra194-p2u",
+	},
+	{}
+};
+MODULE_DEVICE_TABLE(of, tegra_p2u_id_table);
+
+static struct platform_driver tegra_p2u_driver = {
+	.probe = tegra_p2u_probe,
+	.driver = {
+		.name = "tegra194-p2u",
+		.of_match_table = tegra_p2u_id_table,
+	},
+};
+module_platform_driver(tegra_p2u_driver);
+
+MODULE_AUTHOR("Vidya Sagar <vidyas@nvidia.com>");
+MODULE_DESCRIPTION("NVIDIA Tegra194 PIPE2UPHY PHY driver");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
