Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 701EE1DA2CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 22:36:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MeSCFqUBTuMtyyOtcFmpaHE6tqFBJY09G8O/7BiSIDE=; b=JnMBhyZBE4wfNUz/JiWRqyf8Fe
	i+Dfo+h8PqI9ivP1b7fRfrzp+DwXPUEUqTdh+jCAkvao3vhdOx9Zq8qdXqY/6xswH8Lu+CItnHr3a
	9LbtM32ZlL1xK+u4WX4P7rL7trMDiwkZI+JuFDuP2oPZTKwlyyYc5n3uSM6P5UOsgfa+h56+3E4do
	uljABN0T5fovhvnt9fsIFkQoovqvudGSzfb+4RRoGihK2DlGeaXaIat13+i03UbRU9EWQ16t+3iMK
	rVTIShVw1R4QT+uvhyirrdQ0uJsvqfNHX4f5TPddHBrvm++CVS/IKgjFjSaK5lOU0kkQM9X+xsOx5
	Xn45XK2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb8ym-0003Bj-CT; Tue, 19 May 2020 20:36:48 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb8wy-0007y8-8V; Tue, 19 May 2020 20:34:57 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 45CD430D5E0;
 Tue, 19 May 2020 13:33:32 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 45CD430D5E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1589920412;
 bh=osF7FU2FsujfecioYjvnAE8Dp2/v7ElbxZ7dQ+Uuhsw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EW91zrW3EtwbGPnG5JRyqOn/e05wEKC3sO/A9SQ/3F9jOuLhMwdYJXfVoRrDeP8we
 Y6dp/kFsc7zp7SaRgnqbtxjXHy4//Ki1QtjzxnXO1XXl191JKZxb+Yaf97cSvLwBrc
 tYFHhMLmATSswdUXhTy4Oru0/v8WIcPtjJMbRhtE=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id 3C01A14008D;
 Tue, 19 May 2020 13:34:53 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: james.quinlan@broadcom.com, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH 07/15] PCI: brcmstb: Add control of rescal reset
Date: Tue, 19 May 2020 16:34:05 -0400
Message-Id: <20200519203419.12369-8-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200519203419.12369-1-james.quinlan@broadcom.com>
References: <20200519203419.12369-1-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_133456_335931_F46B007B 
X-CRM114-Status: GOOD (  13.38  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Philipp Zabel <p.zabel@pengutronix.de>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jim Quinlan <jquinlan@broadcom.com>

Some STB chips have a special purpose reset controller named
RESCAL (reset calibration).  This commit adds the control
of RESCAL as well as the ability to start and stop its
operation for PCIe HW.

Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
---
 drivers/pci/controller/pcie-brcmstb.c | 81 ++++++++++++++++++++++++++-
 1 file changed, 80 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 2c470104ba38..0787e8f6f7e5 100644
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
@@ -152,7 +153,17 @@
 #define SSC_STATUS_SSC_MASK		0x400
 #define SSC_STATUS_PLL_LOCK_MASK	0x800
 
-#define IDX_ADDR(pcie)	\
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
+#define IDX_ADDR(pcie) \
 	(pcie->reg_offsets[EXT_CFG_INDEX])
 #define DATA_ADDR(pcie)	\
 	(pcie->reg_offsets[EXT_CFG_DATA])
@@ -242,6 +253,7 @@ struct brcm_pcie {
 	const int		*reg_offsets;
 	const int		*reg_field_info;
 	enum pcie_type		type;
+	struct reset_control	*rescal;
 };
 
 /*
@@ -957,6 +969,47 @@ static void brcm_pcie_enter_l23(struct brcm_pcie *pcie)
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
@@ -987,6 +1040,9 @@ static int brcm_pcie_suspend(struct device *dev)
 	int ret = 0;
 
 	brcm_pcie_turn_off(pcie);
+	ret = brcm_phy_stop(pcie);
+	if (ret)
+		dev_err(pcie->dev, "failed to stop phy\n");
 	clk_disable_unprepare(pcie->clk);
 
 	return ret;
@@ -1002,6 +1058,12 @@ static int brcm_pcie_resume(struct device *dev)
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
 
@@ -1028,6 +1090,8 @@ static void __brcm_pcie_remove(struct brcm_pcie *pcie)
 {
 	brcm_msi_remove(pcie);
 	brcm_pcie_turn_off(pcie);
+	if (brcm_phy_stop(pcie))
+		dev_err(pcie->dev, "failed to stop phy\n");
 	clk_disable_unprepare(pcie->clk);
 }
 
@@ -1100,6 +1164,21 @@ static int brcm_pcie_probe(struct platform_device *pdev)
 		dev_err(&pdev->dev, "could not enable clock\n");
 		return ret;
 	}
+	pcie->rescal = devm_reset_control_get_shared(&pdev->dev, "rescal");
+	if (IS_ERR(pcie->rescal)) {
+		if (PTR_ERR(pcie->rescal) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
+		pcie->rescal = NULL;
+	} else {
+		ret = reset_control_deassert(pcie->rescal);
+		if (ret)
+			dev_err(&pdev->dev, "failed to deassert 'rescal'\n");
+	}
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
