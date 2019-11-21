Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E3910538D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 14:52:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0lBYG4ShuBa53u0tHqPGsQy+uwIyV+uDNgbp/dcosxY=; b=W0/
	XVmXxunTqQToaqu2IvRPJPFF7U5tNyj/kVibLqzqXuyyOVhjewjy36bBuuFCLlSVplbpgkHBwA/Z5
	bBM3xylowfBTco6YHYta2uKMToZVtMTko6nw5JTcEKXCchtb/Oc5YCEsZTZaDhLiaD/k+jIk5u+qX
	2PmIX4Q6LxobNN8RvAynOh2VP+ZIjXawEOEKmBizV0z3Ot0iOsph5WrIoldT5MwnrD2wkIQjsGhFN
	8k1t9+EiQLIgp/CdjKmKs45wRFs5v9ip3PoNhT/g6kBE03kA7zepM5Ft1z9LlEDuLwruwJ7g2xYzw
	WG23WP8t/msOGrH4y6DN1rBiA80zzHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXmst-0001TK-9w; Thu, 21 Nov 2019 13:52:35 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXmsh-0001Pg-Tm
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 13:52:25 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5C05D1A061D;
 Thu, 21 Nov 2019 14:52:20 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4F6841A0615;
 Thu, 21 Nov 2019 14:52:20 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id B9BF3203C8;
 Thu, 21 Nov 2019 14:52:19 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH] clk: imx8m: Suppress bind attrs
Date: Thu, 21 Nov 2019 15:52:17 +0200
Message-Id: <ce34606bb3876f7506f483db7623fcba6da04810.1574344160.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_055224_235991_8888CA88 
X-CRM114-Status: UNSURE (   6.84  )
X-CRM114-Notice: Please train this message.
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
this opens the possibility of reloading the driver at runtime.

This doesn't actually work: clocks are never removed and attempting to
bind again results in registration errors and a crash. Almost all
devices depend on clocks anyway so rebinding is unlikely to ever be
useful

Fix this by explicitly suppressing bind attrs like several other
clock drivers.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Reviewed-by: Peng Fan <peng.fan@nxp.com>

---
No cc: stable because because there are likely many other opportunities
to crash the system by echoing random stuff in sysfs as root.

Changes since v1:
* Add source comments as well
Link to v1: https://patchwork.kernel.org/patch/11250389/

 drivers/clk/imx/clk-imx8mm.c | 5 +++++
 drivers/clk/imx/clk-imx8mn.c | 5 +++++
 drivers/clk/imx/clk-imx8mq.c | 5 +++++
 3 files changed, 15 insertions(+)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 030b15d7c0ce..ed3ce492151c 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -614,9 +614,14 @@ MODULE_DEVICE_TABLE(of, imx8mm_clk_of_match);
 
 static struct platform_driver imx8mm_clk_driver = {
 	.probe = imx8mm_clocks_probe,
 	.driver = {
 		.name = "imx8mm-ccm",
+		/*
+		 * Disable bind attributes: clocks are not removed and
+		 * reloading the driver will crash or break devices.
+		 */
+		.suppress_bind_attrs = true,
 		.of_match_table = of_match_ptr(imx8mm_clk_of_match),
 	},
 };
 module_platform_driver(imx8mm_clk_driver);
diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index 9f5a5a56b45e..d95e282ff1fb 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -570,9 +570,14 @@ MODULE_DEVICE_TABLE(of, imx8mn_clk_of_match);
 
 static struct platform_driver imx8mn_clk_driver = {
 	.probe = imx8mn_clocks_probe,
 	.driver = {
 		.name = "imx8mn-ccm",
+		/*
+		 * Disable bind attributes: clocks are not removed and
+		 * reloading the driver will crash or break devices.
+		 */
+		.suppress_bind_attrs = true,
 		.of_match_table = of_match_ptr(imx8mn_clk_of_match),
 	},
 };
 module_platform_driver(imx8mn_clk_driver);
diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 5f10a606d836..2168fe6cf7e4 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -607,9 +607,14 @@ MODULE_DEVICE_TABLE(of, imx8mq_clk_of_match);
 
 static struct platform_driver imx8mq_clk_driver = {
 	.probe = imx8mq_clocks_probe,
 	.driver = {
 		.name = "imx8mq-ccm",
+		/*
+		 * Disable bind attributes: clocks are not removed and
+		 * reloading the driver will crash or break devices.
+		 */
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
