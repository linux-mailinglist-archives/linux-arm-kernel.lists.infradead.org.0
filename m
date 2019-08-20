Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B6F95D78
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 13:34:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FAJtEU8D0cs8C7cg9otf/Ki2AIwSgMc+lxK1JDf6+wI=; b=knsAbKdPe1e8h9Z4iwb9vHlT5z
	8CyYGR324rQSWBG/KQk9NHT3eyyiqZJK3SULYx6UY/J4x/EX7lSMsMbDIFbUGwBawMOy8Q+FmGy8D
	LzrS7mmdA0HKeKLEwbCwv/Q68N7v+B7LS2WUYgmGvpJ0wxLuj17oh4KZpsdV0W4sAQuC2mQuIK4bh
	rXplRyrEJZPtOAlMZpCwMBGcDhvvUERNFMKfKnyEMZ6ZhV6cHSwOOJR7UIT9qtXdza8ZldW3xnRZR
	ZevkpbLcJYhEgzA4zYoVzeE9yTihDUm6tYGhf1Q9fpcIZacZo6Soj8ekQQfOzpCLR8c7B6qWUEiAV
	EUQXbIJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02PZ-0004AZ-Fx; Tue, 20 Aug 2019 11:34:49 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i02N4-0002Bj-Hg
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 11:32:16 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 594B01A0103;
 Tue, 20 Aug 2019 13:32:13 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0A3461A0040;
 Tue, 20 Aug 2019 13:32:09 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 3BBCB40326;
 Tue, 20 Aug 2019 19:32:01 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH V4 11/11] clk: imx: lpcg: add suspend/resume support
Date: Tue, 20 Aug 2019 07:13:25 -0400
Message-Id: <1566299605-15641-12-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_043214_820341_64A11CC4 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
v3: new patch
---
 drivers/clk/imx/clk-imx8qxp-lpcg.c |  1 +
 drivers/clk/imx/clk-lpcg-scu.c     | 33 +++++++++++++++++++++++++++++++++
 drivers/clk/imx/clk-scu.h          |  1 +
 3 files changed, 35 insertions(+)

diff --git a/drivers/clk/imx/clk-imx8qxp-lpcg.c b/drivers/clk/imx/clk-imx8qxp-lpcg.c
index ca9bd58..885498f 100644
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
index 3c092a0..4df0818 100644
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
@@ -112,5 +115,35 @@ struct clk_hw *__imx_clk_lpcg_scu(struct device *dev, const char *name,
 		hw = ERR_PTR(ret);
 	}
 
+	if (dev)
+		dev_set_drvdata(dev, clk);
+
 	return hw;
 }
+
+int __maybe_unused imx_clk_lpcg_scu_suspend(struct device *dev)
+{
+	struct clk_lpcg_scu *clk = dev_get_drvdata(dev);
+
+	clk->state = readl_relaxed(clk->reg);
+	dev_dbg(dev, "save lpcg state 0x%x\n", clk->state);
+
+	return 0;
+}
+
+int __maybe_unused imx_clk_lpcg_scu_resume(struct device *dev)
+{
+	struct clk_lpcg_scu *clk = dev_get_drvdata(dev);
+
+	/* FIXME: double write in case a failure */
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
