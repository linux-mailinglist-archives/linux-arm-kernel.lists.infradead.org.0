Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A420185D4B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 14:53:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LiJmxQqd2Xddun+7yawBnET5TQDLhMfi2/1xPRCdKnI=; b=GVCYmDDTntetmUbSEpWYOEiRRX
	Jhe6nH/F8fHaITUhQ+Sh1CRLqAOr++3uIf1cFxK+lYL/8N6vHyeJu0Rtmu28JEZvV6pCbXvYEVcKA
	UCFDY/a9Y5zavOXJzgMg57PZc11DF/1PNi2ZHzgUiDB5fS3zIi3FXskEe8DlNNRsEIldI60/QcvFX
	a6He4xICku79kI+q/Bqyqx4wMH/kYW3kZLeKlVWqevuWQpBdxrdicgzMrKdiLIVCCjz30v385Ce2f
	t/HCuiy55ABeVznaGZtRUt/5S69k/58B6/8PTX/p6jbpnwW/KE7SMgYm5aE0QNZ1VcPz9s+D+LWFk
	TuceJ4HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDThq-00061w-7j; Sun, 15 Mar 2020 13:53:30 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDTfI-0003wD-TK
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 13:50:55 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B3D20200257;
 Sun, 15 Mar 2020 14:50:51 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E50B120059B;
 Sun, 15 Mar 2020 14:50:46 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 33471402AE;
 Sun, 15 Mar 2020 21:50:40 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH V6 11/12] clk: imx: lpcg: add suspend/resume support
Date: Sun, 15 Mar 2020 21:43:55 +0800
Message-Id: <1584279836-29825-12-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584279836-29825-1-git-send-email-aisheng.dong@nxp.com>
References: <1584279836-29825-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_065053_246869_6A659B0C 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, sboyd@kernel.org,
 mturquette@baylibre.com, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LPCG clock state may be lost when it's power domain is completely
off during system suspend/resume and we need save and restore the
state properly.

Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v5:
 * make suspend/resume function static
 * improve code comments
v4: no changes
v3: new patch
---
 drivers/clk/imx/clk-imx8qxp-lpcg.c |  1 +
 drivers/clk/imx/clk-lpcg-scu.c     | 37 ++++++++++++++++++++++++++++++
 drivers/clk/imx/clk-scu.h          |  1 +
 3 files changed, 39 insertions(+)

diff --git a/drivers/clk/imx/clk-imx8qxp-lpcg.c b/drivers/clk/imx/clk-imx8qxp-lpcg.c
index 3385de76f6c7..4d4a3a65bcec 100644
--- a/drivers/clk/imx/clk-imx8qxp-lpcg.c
+++ b/drivers/clk/imx/clk-imx8qxp-lpcg.c
@@ -364,6 +364,7 @@ static struct platform_driver imx8qxp_lpcg_clk_driver = {
 	.driver = {
 		.name = "imx8qxp-lpcg-clk",
 		.of_match_table = imx8qxp_lpcg_match,
+		.pm = &imx_clk_lpcg_scu_pm_ops,
 		.suppress_bind_attrs = true,
 	},
 	.probe = imx8qxp_lpcg_clk_probe,
diff --git a/drivers/clk/imx/clk-lpcg-scu.c b/drivers/clk/imx/clk-lpcg-scu.c
index 2242e5047a0e..5bd8af371059 100644
--- a/drivers/clk/imx/clk-lpcg-scu.c
+++ b/drivers/clk/imx/clk-lpcg-scu.c
@@ -33,6 +33,9 @@ struct clk_lpcg_scu {
 	void __iomem *reg;
 	u8 bit_idx;
 	bool hw_gate;
+
+	/* for state save&restore */
+	u32 state;
 };
 
 #define to_clk_lpcg_scu(_hw) container_of(_hw, struct clk_lpcg_scu, hw)
@@ -112,6 +115,9 @@ struct clk_hw *__imx_clk_lpcg_scu(struct device *dev, const char *name,
 		hw = ERR_PTR(ret);
 	}
 
+	if (dev)
+		dev_set_drvdata(dev, clk);
+
 	return hw;
 }
 
@@ -122,3 +128,34 @@ void imx_clk_lpcg_scu_unregister(struct clk_hw *hw)
 	clk_hw_unregister(&clk->hw);
 	kfree(clk);
 }
+
+static int __maybe_unused imx_clk_lpcg_scu_suspend(struct device *dev)
+{
+	struct clk_lpcg_scu *clk = dev_get_drvdata(dev);
+
+	clk->state = readl_relaxed(clk->reg);
+	dev_dbg(dev, "save lpcg state 0x%x\n", clk->state);
+
+	return 0;
+}
+
+static int __maybe_unused imx_clk_lpcg_scu_resume(struct device *dev)
+{
+	struct clk_lpcg_scu *clk = dev_get_drvdata(dev);
+
+	/*
+	 * FIXME: Sometimes writes don't work unless the CPU issues
+	 * them twice
+	 */
+
+	writel(clk->state, clk->reg);
+	writel(clk->state, clk->reg);
+	dev_dbg(dev, "restore lpcg state 0x%x\n", clk->state);
+
+	return 0;
+}
+
+const struct dev_pm_ops imx_clk_lpcg_scu_pm_ops = {
+	SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(imx_clk_lpcg_scu_suspend,
+				      imx_clk_lpcg_scu_resume)
+};
diff --git a/drivers/clk/imx/clk-scu.h b/drivers/clk/imx/clk-scu.h
index 6b29713a71d2..b1dfdaf0734e 100644
--- a/drivers/clk/imx/clk-scu.h
+++ b/drivers/clk/imx/clk-scu.h
@@ -11,6 +11,7 @@
 #include <linux/of.h>
 
 extern struct list_head imx_scu_clks[];
+extern const struct dev_pm_ops imx_clk_lpcg_scu_pm_ops;
 
 int imx_clk_scu_init(struct device_node *np);
 struct clk_hw *imx_scu_of_clk_src_get(struct of_phandle_args *clkspec,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
