Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24ECA1FC07A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 22:57:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FTp9Bs/pQPzzMTBYQviTSHWhWhJa+bcLhFPNKpVnNLs=; b=nKBzclEv1S5I22eQ8ZLMc9DeEo
	6pLSOXXWudWdMvjGENN+zFvpPu1wZQvPsMsR+j97QVm05pcnYiuxGBN1gcZk/xRZGGIFHqkmgYRkb
	N5GIQgWdqkOWbwoJa8mhUBbdN2A9W4MeUzY4EVDkgIzEVkfYOy8vDO9gr5OqlhfODi3NOB3qS9RYz
	nniEzEs+KPdWKHXS8nA0/09ON1skcsbM/PWNq0lf4h1GaXRtTBG9c24TDV8+QGth0urEOUYf9bLFV
	gRyBLFBK6wIK4cVozjXOw9tOWV7Ti4X7LQjMNiZpFqxlcGURrnWNqG1es9+4IQcS6LZKGErIpXwbJ
	QruiXQqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlIeG-0003Wx-2y; Tue, 16 Jun 2020 20:57:36 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlIcg-0002Jd-Tj; Tue, 16 Jun 2020 20:56:00 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id CB2C230D868;
 Tue, 16 Jun 2020 13:55:57 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com CB2C230D868
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1592340957;
 bh=XO3fnOBUaoyj4qswktAwMGKNugsU6MmFpIrrYdhnNVk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BHL1zLSF1RDH65WDGNLr/lc4d0o9XLJvnu6gq6DCR+p3rTVIQO4b9XpXFHTqEVIMv
 pTnpTMQdTlxg8jrMWmMwhBKTL0Ll6PpGD8yeHLb8ZfFFG/EkVtsJ0iKejsWJeQ5sm+
 JY1V9+uTe1KPm75UNKuDCQhcjCYXWtE5pHpphRH8=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id 2A269140069;
 Tue, 16 Jun 2020 13:55:56 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, james.quinlan@broadcom.com
Subject: [PATCH v5 07/12] PCI: brcmstb: Add control of rescal reset
Date: Tue, 16 Jun 2020 16:55:14 -0400
Message-Id: <20200616205533.3513-8-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200616205533.3513-1-james.quinlan@broadcom.com>
References: <20200616205533.3513-1-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_135559_016628_B15B7690 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jim Quinlan <james.quinlan@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jim Quinlan <jquinlan@broadcom.com>

Some STB chips have a special purpose reset controller named RESCAL (reset
calibration).  The PCIe HW can now control RESCAL to start and stop its
operation.

Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
Acked-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/pci/controller/pcie-brcmstb.c | 81 ++++++++++++++++++++++++++-
 1 file changed, 80 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index d0e256d8578a..9189406fd35c 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -23,6 +23,7 @@
 #include <linux/of_platform.h>
 #include <linux/pci.h>
 #include <linux/printk.h>
+#include <linux/reset.h>
 #include <linux/sizes.h>
 #include <linux/slab.h>
 #include <linux/string.h>
@@ -158,6 +159,16 @@
 #define DATA_ADDR(pcie)			(pcie->reg_offsets[EXT_CFG_DATA])
 #define PCIE_RGR1_SW_INIT_1(pcie)	(pcie->reg_offsets[RGR1_SW_INIT_1])
 
+/* Rescal registers */
+#define PCIE_DVT_PMU_PCIE_PHY_CTRL				0xc700
+#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_NFLDS			0x3
+#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_DIG_RESET_MASK		0x4
+#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_DIG_RESET_SHIFT	0x2
+#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_RESET_MASK		0x2
+#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_RESET_SHIFT		0x1
+#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_PWRDN_MASK		0x1
+#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_PWRDN_SHIFT		0x0
+
 enum {
 	RGR1_SW_INIT_1,
 	EXT_CFG_INDEX,
@@ -248,6 +259,7 @@ struct brcm_pcie {
 	const int		*reg_offsets;
 	const int		*reg_field_info;
 	enum pcie_type		type;
+	struct reset_control	*rescal;
 };
 
 /*
@@ -963,6 +975,47 @@ static void brcm_pcie_enter_l23(struct brcm_pcie *pcie)
 		dev_err(pcie->dev, "failed to enter low-power link state\n");
 }
 
+static int brcm_phy_cntl(struct brcm_pcie *pcie, const int start)
+{
+	static const u32 shifts[PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_NFLDS] = {
+		PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_PWRDN_SHIFT,
+		PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_RESET_SHIFT,
+		PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_DIG_RESET_SHIFT,};
+	static const u32 masks[PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_NFLDS] = {
+		PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_PWRDN_MASK,
+		PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_RESET_MASK,
+		PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_DIG_RESET_MASK,};
+	const int beg = start ? 0 : PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_NFLDS - 1;
+	const int end = start ? PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_NFLDS : -1;
+	u32 tmp, combined_mask = 0;
+	u32 val = !!start;
+	void __iomem *base = pcie->base;
+	int i;
+
+	for (i = beg; i != end; start ? i++ : i--) {
+		tmp = readl(base + PCIE_DVT_PMU_PCIE_PHY_CTRL);
+		tmp = (tmp & ~masks[i]) | ((val << shifts[i]) & masks[i]);
+		writel(tmp, base + PCIE_DVT_PMU_PCIE_PHY_CTRL);
+		usleep_range(50, 200);
+		combined_mask |= masks[i];
+	}
+
+	tmp = readl(base + PCIE_DVT_PMU_PCIE_PHY_CTRL);
+	val = start ? combined_mask : 0;
+
+	return (tmp & combined_mask) == val ? 0 : -EIO;
+}
+
+static inline int brcm_phy_start(struct brcm_pcie *pcie)
+{
+	return pcie->rescal ? brcm_phy_cntl(pcie, 1) : 0;
+}
+
+static inline int brcm_phy_stop(struct brcm_pcie *pcie)
+{
+	return pcie->rescal ? brcm_phy_cntl(pcie, 0) : 0;
+}
+
 static void brcm_pcie_turn_off(struct brcm_pcie *pcie)
 {
 	void __iomem *base = pcie->base;
@@ -990,11 +1043,15 @@ static void brcm_pcie_turn_off(struct brcm_pcie *pcie)
 static int brcm_pcie_suspend(struct device *dev)
 {
 	struct brcm_pcie *pcie = dev_get_drvdata(dev);
+	int ret;
 
 	brcm_pcie_turn_off(pcie);
+	ret = brcm_phy_stop(pcie);
+	if (ret)
+		dev_err(pcie->dev, "failed to stop phy\n");
 	clk_disable_unprepare(pcie->clk);
 
-	return 0;
+	return ret;
 }
 
 static int brcm_pcie_resume(struct device *dev)
@@ -1007,6 +1064,12 @@ static int brcm_pcie_resume(struct device *dev)
 	base = pcie->base;
 	clk_prepare_enable(pcie->clk);
 
+	ret = brcm_phy_start(pcie);
+	if (ret) {
+		dev_err(pcie->dev, "failed to start phy\n");
+		return ret;
+	}
+
 	/* Take bridge out of reset so we can access the SERDES reg */
 	brcm_pcie_bridge_sw_init_set(pcie, 0);
 
@@ -1032,6 +1095,9 @@ static void __brcm_pcie_remove(struct brcm_pcie *pcie)
 {
 	brcm_msi_remove(pcie);
 	brcm_pcie_turn_off(pcie);
+	if (brcm_phy_stop(pcie))
+		dev_err(pcie->dev, "failed to stop phy\n");
+	reset_control_assert(pcie->rescal);
 	clk_disable_unprepare(pcie->clk);
 }
 
@@ -1117,6 +1183,19 @@ static int brcm_pcie_probe(struct platform_device *pdev)
 		dev_err(&pdev->dev, "could not enable clock\n");
 		return ret;
 	}
+	pcie->rescal = devm_reset_control_get_optional_shared(&pdev->dev, "rescal");
+	if (IS_ERR(pcie->rescal))
+		return PTR_ERR(pcie->rescal);
+
+	ret = reset_control_deassert(pcie->rescal);
+	if (ret)
+		dev_err(&pdev->dev, "failed to deassert 'rescal'\n");
+
+	ret = brcm_phy_start(pcie);
+	if (ret) {
+		dev_err(pcie->dev, "failed to start phy\n");
+		return ret;
+	}
 
 	ret = brcm_pcie_setup(pcie);
 	if (ret)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
