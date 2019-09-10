Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DD9ADAF4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 16:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N/uIvr0YOyyzc7+Mu1vxJgvG4AO+8t1o2CgUiZ5ycm4=; b=hVy+Go1EPmCPg7hJ9uf/EvxgTZ
	wNsikDA9RsXgDcNj/witbIEzc/g0x9rBncYQeEWJePYeIWCd+lisXd1Zv5clZ59ifK6TWsOBy3dgn
	Rnps4E2ibuWiFaQx6MTWgrxHbIVRJzmHF/TbsVkCXWVBvjdba4U1vcuf++N8VdCf1CHvGNcisTX2Z
	2L08ja6qr5WW+4ExWWXrQ2t9xWkIgnACd2zRCh1MqVn7Xu0jEehdUiTC/dY9+aMMlTjxPeXZUOG1N
	a7yUKwoLLD2Nu0UBbEhoXUURqzSiiuDdliD7M4o2s0W+5uyMafvZ11jutisK6kPNaPIyUwN9y20M+
	Z3OEnkhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7KRP-0001FI-Q4; Mon, 09 Sep 2019 14:14:51 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7KOH-0006vj-VA
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 14:11:39 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9ECC4200B03;
 Mon,  9 Sep 2019 16:11:36 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 72977200858;
 Mon,  9 Sep 2019 16:11:32 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 5F14840323;
 Mon,  9 Sep 2019 22:11:26 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH V5 11/11] clk: imx: lpcg: add suspend/resume support
Date: Mon,  9 Sep 2019 22:10:08 -0400
Message-Id: <1568081408-26800-12-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568081408-26800-1-git-send-email-aisheng.dong@nxp.com>
References: <1568081408-26800-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_071138_236421_78469849 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
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
 drivers/clk/imx/clk-lpcg-scu.c     | 37 +++++++++++++++++++++++++++++++++++++
 drivers/clk/imx/clk-scu.h          |  1 +
 3 files changed, 39 insertions(+)

diff --git a/drivers/clk/imx/clk-imx8qxp-lpcg.c b/drivers/clk/imx/clk-imx8qxp-lpcg.c
index f395eb5..99a5f55 100644
--- a/drivers/clk/imx/clk-imx8qxp-lpcg.c
+++ b/drivers/clk/imx/clk-imx8qxp-lpcg.c
@@ -338,6 +338,7 @@ static struct platform_driver imx8qxp_lpcg_clk_driver = {
 	.driver = {
 		.name = "imx8qxp-lpcg-clk",
 		.of_match_table = imx8qxp_lpcg_match,
+		.pm = &imx_clk_lpcg_scu_pm_ops,
 		.suppress_bind_attrs = true,
 	},
 	.probe = imx8qxp_lpcg_clk_probe,
diff --git a/drivers/clk/imx/clk-lpcg-scu.c b/drivers/clk/imx/clk-lpcg-scu.c
index 3c092a0..1dd928a 100644
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
@@ -112,5 +115,39 @@ struct clk_hw *__imx_clk_lpcg_scu(struct device *dev, const char *name,
 		hw = ERR_PTR(ret);
 	}
 
+	if (dev)
+		dev_set_drvdata(dev, clk);
+
 	return hw;
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
index 84efda3..6d4b6e2 100644
--- a/drivers/clk/imx/clk-scu.h
+++ b/drivers/clk/imx/clk-scu.h
@@ -12,6 +12,7 @@
 
 extern u32 clock_cells;
 extern struct list_head imx_scu_clks[];
+extern const struct dev_pm_ops imx_clk_lpcg_scu_pm_ops;
 
 int imx_clk_scu_init(struct device_node *np);
 struct clk_hw *imx_scu_of_clk_src_get(struct of_phandle_args *clkspec,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
