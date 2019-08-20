Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C85895D76
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 13:34:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4fWhJ1P4qWyGRRNXIMN+G3ydFAaj9DefpfTJRy3fEpk=; b=I6ysNvEBU5Nu+Q+0sbk6Y06fEl
	jDKf1Xkq28kJ2tpdbtY3fWAmAzIqdfhXk30umaUndkoHh/heHfjECz1Wlih3YJKVTLtTp9AAvyboH
	sDvl9KLpO2GV0gwu+0A5z7mySor17brHJX1tTx3saJmCjWVsS1aKp+CEGHtt4GB6g7PZEmYzQ7AwM
	xttysSLk/fupwEr9OSUSWUUyDf1mZiwczK5xhwD3ERkpL2fX3vWZ6+YvOnMjLUpEKLUaprby3v87Y
	vaT1mx/AWXhHn+rNT28laPvvi/ara6vug8nL2SdKfW5f0wKBPFk7LkLE/97kCVt3EbGWkZPd/G5K+
	3y2Igu8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02PK-0003wA-M8; Tue, 20 Aug 2019 11:34:34 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i02N3-0002Aa-E6
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 11:32:14 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3F17B1A0117;
 Tue, 20 Aug 2019 13:32:12 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E8AAA1A0186;
 Tue, 20 Aug 2019 13:32:07 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 69D574031E;
 Tue, 20 Aug 2019 19:31:57 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH V4 07/11] clk: imx: scu: add suspend/resume support
Date: Tue, 20 Aug 2019 07:13:21 -0400
Message-Id: <1566299605-15641-8-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_043213_630124_88CBFA37 
X-CRM114-Status: GOOD (  10.41  )
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

Clock state will be lost when its power domain is completely off
during system suspend/resume. So we save and restore the state
accordingly in suspend/resume callback.

Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Michael Turquette <mturquette@baylibre.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v4: no changes
v3: new patch
---
 drivers/clk/imx/clk-scu.c | 49 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c
index edc39d7..8d9cfa2 100644
--- a/drivers/clk/imx/clk-scu.c
+++ b/drivers/clk/imx/clk-scu.c
@@ -46,6 +46,10 @@ struct clk_scu {
 	struct clk_hw hw;
 	u16 rsrc_id;
 	u8 clk_type;
+
+	/* for state save&restore */
+	bool is_enabled;
+	u32 rate;
 };
 
 /*
@@ -425,6 +429,9 @@ struct clk_hw *__imx_clk_scu(struct device *dev, const char *name,
 		hw = ERR_PTR(ret);
 	}
 
+	if (dev)
+		dev_set_drvdata(dev, clk);
+
 	return hw;
 }
 
@@ -481,10 +488,52 @@ static int imx_clk_scu_probe(struct platform_device *pdev)
 	return 0;
 }
 
+int __maybe_unused imx_clk_scu_suspend(struct device *dev)
+{
+	struct clk_scu *clk = dev_get_drvdata(dev);
+
+	clk->rate = clk_hw_get_rate(&clk->hw);
+	clk->is_enabled = clk_hw_is_enabled(&clk->hw);
+
+	if (clk->rate)
+		dev_dbg(dev, "save rate %d\n", clk->rate);
+
+	if (clk->is_enabled)
+		dev_dbg(dev, "save enabled state\n");
+
+	return 0;
+}
+
+int __maybe_unused imx_clk_scu_resume(struct device *dev)
+{
+	struct clk_scu *clk = dev_get_drvdata(dev);
+	int ret = 0;
+
+	if (clk->rate) {
+		ret = clk_scu_set_rate(&clk->hw, clk->rate, 0);
+		dev_dbg(dev, "restore rate %d %s\n", clk->rate,
+			!ret ? "success" : "failed");
+	}
+
+	if (clk->is_enabled) {
+		ret = clk_scu_prepare(&clk->hw);
+		dev_dbg(dev, "restore enabled state %s\n",
+			!ret ? "success" : "failed");
+	}
+
+	return ret;
+}
+
+const struct dev_pm_ops imx_clk_scu_pm_ops = {
+	SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(imx_clk_scu_suspend,
+				      imx_clk_scu_resume)
+};
+
 static struct platform_driver imx_clk_scu_driver = {
 	.driver = {
 		.name = "imx-scu-clk",
 		.suppress_bind_attrs = true,
+		.pm = &imx_clk_scu_pm_ops,
 	},
 	.probe = imx_clk_scu_probe,
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
