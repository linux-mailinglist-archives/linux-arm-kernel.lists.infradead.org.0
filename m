Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDF1A02FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 15:16:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3yoBitbT4LgJmlAcp1Uak6FpAHnTO5Y54nL2fMZUaU=; b=BuOgkR+JrXLFIT
	iiAWAW4iOFd8z1xlHk7u7SljGw5Ik4HongGeeBmLI8a3OTXElMpOyGd9fTA8EO+/3tcxKiyAJ5uqc
	CSL9HeVxbrirKTjnXNqRiVEoWrt51T6f9eHVOfRY5keGBos2MsjRRTSnH1VUcTsjc2BIcPvI9XGCb
	H5coRvHsO08rMVBPMNmLZc02pAxmVwFtnXYjfd7N1sjtjOA3X4mjT7mDZea+vNMnclRZ+GdmxzJhY
	ZARfCJiJOqt0wO2Cuv68NneEhc3tRMtLA0OxonwvcN7C7TGDAod2KQX0E2YSrqz9hegYVMXvpJuDL
	ds0K4oISv3P4jd9aXvLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2xoT-0003bW-R1; Wed, 28 Aug 2019 13:16:37 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2xng-00034u-15
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 13:15:49 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d667e840000>; Wed, 28 Aug 2019 06:15:48 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 28 Aug 2019 06:15:47 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 28 Aug 2019 06:15:47 -0700
Received: from HQMAIL110.nvidia.com (172.18.146.15) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 28 Aug
 2019 13:15:47 +0000
Received: from HQMAIL105.nvidia.com (172.20.187.12) by hqmail110.nvidia.com
 (172.18.146.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 28 Aug
 2019 13:15:47 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Wed, 28 Aug 2019 13:15:47 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d667e7e0000>; Wed, 28 Aug 2019 06:15:46 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <andrew.murray@arm.com>
Subject: [PATCH V2 4/6] PCI: tegra: Add support to enable slot regulators
Date: Wed, 28 Aug 2019 18:45:03 +0530
Message-ID: <20190828131505.28475-5-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828131505.28475-1-vidyas@nvidia.com>
References: <20190828131505.28475-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1566998148; bh=d5gn4lsVkZC/j3+ttZyQdtxWKvd3aTBDeJAebrNCxtc=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=G2VVp0FEcc25WRQ5u5zNmk2+BHU0DkzWxCIv8sabY1WEQ6tmN8U0QVUl4PUCG9/F7
 2e8Urw7hC22UqOAyL2zNaUVRedwaO+JkXclPXqA/uGZP5JFsJF1izyR+9sVwqF4aM3
 /09GfVwA0jP9D4KF9cei3gcv7rpw6lfPvNA/yrRwdZ5LbRT0oOvovbJnm19nOzV35A
 iaviN6N3kFG542p/HhAXlX+68FFQF/QkrVJo0Cxhl9E8tQYP+oYxH6KPlsjcj18iIa
 qgEKIYVDbmNy3gj8N5aYxRvVcrY9lmmeF6hqU2xzydXVpSd3KhqRzSz4eYKfK6EuRt
 pU0CjyNduCkYg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_061548_461200_3DD3EA17 
X-CRM114-Status: GOOD (  13.06  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 gustavo.pimentel@synopsys.com, vidyas@nvidia.com, linux-kernel@vger.kernel.org,
 mperttunen@nvidia.com, linux-pci@vger.kernel.org, linux-tegra@vger.kernel.org,
 digetx@gmail.com, kishon@ti.com, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support to get regulator information of 3.3V and 12V supplies of a PCIe
slot from the respective controller's device-tree node and enable those
supplies. This is required in platforms like p2972-0000 where the supplies
to x16 slot owned by C5 controller need to be enabled before attempting to
enumerate the devices.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
V2:
* Addressed review comments from Thierry Reding and Andrew Murray
* Handled failure case of devm_regulator_get_optional() for -ENODEV cleanly

 drivers/pci/controller/dwc/pcie-tegra194.c | 80 ++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index 057ba4f9fbcd..6a66101ec83d 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -278,6 +278,8 @@ struct tegra_pcie_dw {
 	u32 aspm_l0s_enter_lat;
 
 	struct regulator *pex_ctl_supply;
+	struct regulator *slot_ctl_3v3;
+	struct regulator *slot_ctl_12v;
 
 	unsigned int phy_count;
 	struct phy **phys;
@@ -1047,6 +1049,72 @@ static void tegra_pcie_downstream_dev_to_D0(struct tegra_pcie_dw *pcie)
 	}
 }
 
+static int tegra_pcie_get_slot_regulators(struct tegra_pcie_dw *pcie)
+{
+	pcie->slot_ctl_3v3 = devm_regulator_get_optional(pcie->dev, "vpcie3v3");
+	if (IS_ERR(pcie->slot_ctl_3v3)) {
+		if (PTR_ERR(pcie->slot_ctl_3v3) != -ENODEV)
+			return PTR_ERR(pcie->slot_ctl_3v3);
+
+		pcie->slot_ctl_3v3 = NULL;
+	}
+
+	pcie->slot_ctl_12v = devm_regulator_get_optional(pcie->dev, "vpcie12v");
+	if (IS_ERR(pcie->slot_ctl_12v)) {
+		if (PTR_ERR(pcie->slot_ctl_12v) != -ENODEV)
+			return PTR_ERR(pcie->slot_ctl_12v);
+
+		pcie->slot_ctl_12v = NULL;
+	}
+
+	return 0;
+}
+
+static int tegra_pcie_enable_slot_regulators(struct tegra_pcie_dw *pcie)
+{
+	int ret;
+
+	if (pcie->slot_ctl_3v3) {
+		ret = regulator_enable(pcie->slot_ctl_3v3);
+		if (ret < 0) {
+			dev_err(pcie->dev,
+				"Failed to enable 3V3 slot supply: %d\n", ret);
+			return ret;
+		}
+	}
+
+	if (pcie->slot_ctl_12v) {
+		ret = regulator_enable(pcie->slot_ctl_12v);
+		if (ret < 0) {
+			dev_err(pcie->dev,
+				"Failed to enable 12V slot supply: %d\n", ret);
+			goto fail_12v_enable;
+		}
+	}
+
+	/*
+	 * According to PCI Express Card Electromechanical Specification
+	 * Revision 1.1, Table-2.4, T_PVPERL (Power stable to PERST# inactive)
+	 * should be a minimum of 100ms.
+	 */
+	msleep(100);
+
+	return 0;
+
+fail_12v_enable:
+	if (pcie->slot_ctl_3v3)
+		regulator_disable(pcie->slot_ctl_3v3);
+	return ret;
+}
+
+static void tegra_pcie_disable_slot_regulators(struct tegra_pcie_dw *pcie)
+{
+	if (pcie->slot_ctl_12v)
+		regulator_disable(pcie->slot_ctl_12v);
+	if (pcie->slot_ctl_3v3)
+		regulator_disable(pcie->slot_ctl_3v3);
+}
+
 static int tegra_pcie_config_controller(struct tegra_pcie_dw *pcie,
 					bool en_hw_hot_rst)
 {
@@ -1060,6 +1128,10 @@ static int tegra_pcie_config_controller(struct tegra_pcie_dw *pcie,
 		return ret;
 	}
 
+	ret = tegra_pcie_enable_slot_regulators(pcie);
+	if (ret < 0)
+		goto fail_slot_reg_en;
+
 	ret = regulator_enable(pcie->pex_ctl_supply);
 	if (ret < 0) {
 		dev_err(pcie->dev, "Failed to enable regulator: %d\n", ret);
@@ -1142,6 +1214,8 @@ static int tegra_pcie_config_controller(struct tegra_pcie_dw *pcie,
 fail_core_clk:
 	regulator_disable(pcie->pex_ctl_supply);
 fail_reg_en:
+	tegra_pcie_disable_slot_regulators(pcie);
+fail_slot_reg_en:
 	tegra_pcie_bpmp_set_ctrl_state(pcie, false);
 
 	return ret;
@@ -1174,6 +1248,8 @@ static int __deinit_controller(struct tegra_pcie_dw *pcie)
 		return ret;
 	}
 
+	tegra_pcie_disable_slot_regulators(pcie);
+
 	ret = tegra_pcie_bpmp_set_ctrl_state(pcie, false);
 	if (ret) {
 		dev_err(pcie->dev, "Failed to disable controller %d: %d\n",
@@ -1373,6 +1449,10 @@ static int tegra_pcie_dw_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	ret = tegra_pcie_get_slot_regulators(pcie);
+	if (ret < 0)
+		return ret;
+
 	pcie->pex_ctl_supply = devm_regulator_get(dev, "vddio-pex-ctl");
 	if (IS_ERR(pcie->pex_ctl_supply)) {
 		dev_err(dev, "Failed to get regulator: %ld\n",
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
