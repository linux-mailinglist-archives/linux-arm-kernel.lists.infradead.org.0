Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6E9AA053
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 12:47:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CqXWbHZTV8cenVearycSrd5veAWzZmsorxH43qzntM=; b=OizBsmUibrS8Rl
	+MPER4v0bEvT1064XU/OnhPxGvrEJn+PEx0s+pA51QPKArMlw4PKhsnoTfQSWDGaCixT3yGFn1X5m
	6j+6mB7IGjlyoomMuZbFIaMDuy5PWIS52FaOZcan+IuGVRAPg8P1sSmpRWxJwokpmH1KbTZrtvxFM
	rbkeNGhjuz/9rB1ADUODVnhcac7/WWFF8gtUw7rVDFz5SZJteZYK5UDFd3qyGHz3H6m2Srl6Jw6hW
	nUKOfrzU4JaF0mvnC0nmE/J6EgS6yAzDZ8t0XXtJ2nPLFP0cVGbuYzIjnHPt2ueFZOwFC5hMns1S5
	JGa8x1p/mHZkHXOjhbnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pID-0003AG-8F; Thu, 05 Sep 2019 10:47:09 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pHa-0002Uy-3u
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 10:46:31 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d70e7860000>; Thu, 05 Sep 2019 03:46:30 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Thu, 05 Sep 2019 03:46:29 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Thu, 05 Sep 2019 03:46:29 -0700
Received: from HQMAIL110.nvidia.com (172.18.146.15) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 5 Sep
 2019 10:46:30 +0000
Received: from HQMAIL101.nvidia.com (172.20.187.10) by hqmail110.nvidia.com
 (172.18.146.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 5 Sep
 2019 10:46:26 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Thu, 5 Sep 2019 10:46:26 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d70e77d0000>; Thu, 05 Sep 2019 03:46:26 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <andrew.murray@arm.com>
Subject: [PATCH V4 4/6] PCI: tegra: Add support to enable slot regulators
Date: Thu, 5 Sep 2019 16:15:51 +0530
Message-ID: <20190905104553.2884-5-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190905104553.2884-1-vidyas@nvidia.com>
References: <20190905104553.2884-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567680390; bh=6h4vxtT/L3ja3O6cNbhflb2Ay+kjN0ijgIebmvGFGkA=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=V2rTIuaTacrLMsWXG1DERwYRFLuuV1rJFpJiBNFUO5yFwxCpFJC6a5s4w8wMapkx3
 v23wQNkajMdjY3swqY8UptGmtMGG+1k/D5oqrFMI6HGNPb9k/CVhsx+llpksPZTr8J
 WggSvKxY9bLzOMK8y+s1NQ39BXtyixqql/yB7iu3jQSiK9TYnhITBlAe+bIcOeCHmz
 N6HxPqffW7tSY4lRDXV9CjBsr1tPzeTfkdPPovKgvxb4Fwb8A/I6ARu7lh4J5BC8bf
 g8GDgnYSqELjQmb30jL4GMb2Xq4XA7aqi8h4CCw0Xd97RUpFmXc5ypkNe5W70TcdRC
 9CNdWF+rVFeLw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_034630_183147_8786857E 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Acked-by: Thierry Reding <treding@nvidia.com>
---
V4:
* Rebased on top of Lorenzo's pci/tegra branch

V3:
* Added a dev_err() print for failure case of tegra_pcie_get_slot_regulators() API
* Modified to make 100ms sleep valid only if at least one of the regulator handles exist

V2:
* Addressed review comments from Thierry Reding and Andrew Murray
* Handled failure case of devm_regulator_get_optional() for -ENODEV cleanly

 drivers/pci/controller/dwc/pcie-tegra194.c | 83 ++++++++++++++++++++++
 1 file changed, 83 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index 2048ef6fad90..398ba55418ba 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -277,6 +277,8 @@ struct tegra_pcie_dw {
 	u32 aspm_l0s_enter_lat;
 
 	struct regulator *pex_ctl_supply;
+	struct regulator *slot_ctl_3v3;
+	struct regulator *slot_ctl_12v;
 
 	unsigned int phy_count;
 	struct phy **phys;
@@ -1047,6 +1049,73 @@ static void tegra_pcie_downstream_dev_to_D0(struct tegra_pcie_dw *pcie)
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
+				"Failed to enable 3.3V slot supply: %d\n", ret);
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
+	if (pcie->slot_ctl_3v3 || pcie->slot_ctl_12v)
+		msleep(100);
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
@@ -1060,6 +1129,10 @@ static int tegra_pcie_config_controller(struct tegra_pcie_dw *pcie,
 		return ret;
 	}
 
+	ret = tegra_pcie_enable_slot_regulators(pcie);
+	if (ret < 0)
+		goto fail_slot_reg_en;
+
 	ret = regulator_enable(pcie->pex_ctl_supply);
 	if (ret < 0) {
 		dev_err(pcie->dev, "Failed to enable regulator: %d\n", ret);
@@ -1142,6 +1215,8 @@ static int tegra_pcie_config_controller(struct tegra_pcie_dw *pcie,
 fail_core_clk:
 	regulator_disable(pcie->pex_ctl_supply);
 fail_reg_en:
+	tegra_pcie_disable_slot_regulators(pcie);
+fail_slot_reg_en:
 	tegra_pcie_bpmp_set_ctrl_state(pcie, false);
 
 	return ret;
@@ -1174,6 +1249,8 @@ static int __deinit_controller(struct tegra_pcie_dw *pcie)
 		return ret;
 	}
 
+	tegra_pcie_disable_slot_regulators(pcie);
+
 	ret = tegra_pcie_bpmp_set_ctrl_state(pcie, false);
 	if (ret) {
 		dev_err(pcie->dev, "Failed to disable controller %d: %d\n",
@@ -1373,6 +1450,12 @@ static int tegra_pcie_dw_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	ret = tegra_pcie_get_slot_regulators(pcie);
+	if (ret < 0) {
+		dev_err(dev, "Failed to get slot regulators: %d\n", ret);
+		return ret;
+	}
+
 	pcie->pex_ctl_supply = devm_regulator_get(dev, "vddio-pex-ctl");
 	if (IS_ERR(pcie->pex_ctl_supply)) {
 		ret = PTR_ERR(pcie->pex_ctl_supply);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
