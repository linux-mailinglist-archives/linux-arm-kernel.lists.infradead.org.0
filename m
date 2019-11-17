Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8F2FF986
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 13:30:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BJV59IQfI2qSLXwCXIgopP/9yjQRGWQISYXEcQ+l7rk=; b=DSHKgOPLTXAWyOQJdlagX+ht45
	evdau+RR3P9x2B2EgEw794ZK5lyuyT/ya35ygWt7vBr88/sfAlWjwfrAzyxlTXAdV8on/JCDcN7kp
	Iqqj4EwXlww28Xk5SxcE8JGwgiyJLk5GVyTybAerbTbkpEE9cwb/YI7fzagn0s76TgWDU5dnZ7V6G
	Yw7WM8ZKGB4pPthiJ9bhI6xuf1TbRWHkE1hmlxcwEV3agmue4OlYxZlfuoC02j3h8k3kAQCpSeono
	jNVQfAPeiUNG2nipyD8cXEscEs/VPh6omEKu+d6wXpJLESQocPi+KoxzNPAurQ6oeUj3hhlryK6kg
	//fTNTMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWJhZ-0002SX-AV; Sun, 17 Nov 2019 12:30:49 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWJeY-0007Fm-Ed
 for linux-arm-kernel@lists.infradead.org; Sun, 17 Nov 2019 12:27:44 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 055501A06F2;
 Sun, 17 Nov 2019 13:27:41 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B30DB1A0123;
 Sun, 17 Nov 2019 13:27:36 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 26D274030E;
 Sun, 17 Nov 2019 20:27:27 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH RESEND v5 11/11] clk: imx: lpcg: add suspend/resume support
Date: Sun, 17 Nov 2019 20:25:19 +0800
Message-Id: <1573993519-14308-12-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573993519-14308-1-git-send-email-aisheng.dong@nxp.com>
References: <1573993519-14308-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_042742_771613_29F5CCE3 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
index e288ec6d446e..4f0bdf2b9411 100644
--- a/drivers/clk/imx/clk-imx8qxp-lpcg.c
+++ b/drivers/clk/imx/clk-imx8qxp-lpcg.c
@@ -353,6 +353,7 @@ static struct platform_driver imx8qxp_lpcg_clk_driver = {
 	.driver = {
 		.name = "imx8qxp-lpcg-clk",
 		.of_match_table = imx8qxp_lpcg_match,
+		.pm = &imx_clk_lpcg_scu_pm_ops,
 		.suppress_bind_attrs = true,
 	},
 	.probe = imx8qxp_lpcg_clk_probe,
diff --git a/drivers/clk/imx/clk-lpcg-scu.c b/drivers/clk/imx/clk-lpcg-scu.c
index 67b506319cc5..c35f9499c30a 100644
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
 
@@ -121,3 +127,34 @@ void imx_clk_lpcg_scu_unregister(struct clk_hw *hw)
 
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
