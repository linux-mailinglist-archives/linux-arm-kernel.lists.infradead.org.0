Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C04A100EC2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 23:28:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PGSIsROl1WHnk/jLOgCFDuzJUv7Fas2svN8/p/qDn7A=; b=QTk
	FXZBT+liVmW74XZX8SkLEOsJU1BuNbOtdxKflM7u//h+L3YQx6A5ykpX/gbToW7zLyocMX0NpZ8bf
	YXG9CykapH3UhCgDs7bLYNXiEF0x07YSR7hrAm+59hWFwqO7ycN3CkQT3Zk9SxgK79fyhDB7KL+Jl
	CE07dM2c/hv5vKNFVE0PUnr+5R/4rDyYp2fTyJavFaKFNzauRt6w2gTldWXRuMmuQo1XvQ6w46tws
	EkyP3Rxa/at/VLP27sgWe1jpC/B+E0AVgV1D30fnl52RDC6LMORjCHRwaz3lVnitv4NFu+oLR9yeu
	Uo+8Sz7olI/aNqMy5/2oiVm/TE2sVZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWpVa-0006R6-LQ; Mon, 18 Nov 2019 22:28:34 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWpVQ-0006Qb-Jd
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 22:28:28 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CBC011A03CE;
 Mon, 18 Nov 2019 23:28:20 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id BED411A012D;
 Mon, 18 Nov 2019 23:28:20 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 3F13F20396;
 Mon, 18 Nov 2019 23:28:20 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] clk: imx8m: Suppress bind attrs
Date: Tue, 19 Nov 2019 00:28:16 +0200
Message-Id: <9f2ac65bab203a943de947465d6534980585e144.1574116045.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_142824_784963_41B0D2D0 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Abel Vesa <abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The clock drivers on imx8m series are registered as platform devices and
this opens the possibility of reloading the driver at runtime:

This doesn't actually work: clocks are never removed and attempting to
bind again results in registration errors and a crash.

Fix this by explicitly suppressing bind attrs like several other
drivers.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

---
No cc: stable because because there are likely many other opportunities
to crash the system by echoing random stuff in sysfs as root.

 drivers/clk/imx/clk-imx8mm.c | 1 +
 drivers/clk/imx/clk-imx8mn.c | 1 +
 drivers/clk/imx/clk-imx8mq.c | 1 +
 3 files changed, 3 insertions(+)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 9246e89bb5fd..3cb75ad4270d 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -619,9 +619,10 @@ MODULE_DEVICE_TABLE(of, imx8mm_clk_of_match);
 
 static struct platform_driver imx8mm_clk_driver = {
 	.probe = imx8mm_clocks_probe,
 	.driver = {
 		.name = "imx8mm-ccm",
+		.suppress_bind_attrs = true,
 		.of_match_table = of_match_ptr(imx8mm_clk_of_match),
 	},
 };
 module_platform_driver(imx8mm_clk_driver);
diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index 4749beab9fc8..d16530430ac2 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -576,9 +576,10 @@ MODULE_DEVICE_TABLE(of, imx8mn_clk_of_match);
 
 static struct platform_driver imx8mn_clk_driver = {
 	.probe = imx8mn_clocks_probe,
 	.driver = {
 		.name = "imx8mn-ccm",
+		.suppress_bind_attrs = true,
 		.of_match_table = of_match_ptr(imx8mn_clk_of_match),
 	},
 };
 module_platform_driver(imx8mn_clk_driver);
diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index c8ab86fcba7c..0e0f69e881bd 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -611,9 +611,10 @@ MODULE_DEVICE_TABLE(of, imx8mq_clk_of_match);
 
 static struct platform_driver imx8mq_clk_driver = {
 	.probe = imx8mq_clocks_probe,
 	.driver = {
 		.name = "imx8mq-ccm",
+		.suppress_bind_attrs = true,
 		.of_match_table = of_match_ptr(imx8mq_clk_of_match),
 	},
 };
 module_platform_driver(imx8mq_clk_driver);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
