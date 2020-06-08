Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2871F19FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 15:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=khyWZq3CUV/sCkBrB4Ae8V802UVhPkyB8AjlKiEIrNY=; b=PT66490xq4CrfGoeCf2WxkYXQg
	zSHub6b56fiD00QapHiwLtp5pqCs7rRqWCP8EIdJN2j7tshdPoMnruNMNhnTKqss5M/v/AD+P4uIw
	69hySkQKxwX3r+Kr1XKSvik2TPqfEuoPyvh+C1s99ObZSEK8QTrbmc23nPbZh6r7KQeCmK3mrOx2X
	lINjIeao0wYdNsy2dPp3t6Z58/F58mqs+5jRkaBCzaNYlh8bKq8cJKW2pFW+7/DY75j/5T2RpndqL
	AWlJ6Mo05QY3UP0pRJ87f+EsNt2c9d7dCQN4brUWIK3BJ02aUkRG+khKVn10GCYbcfMwHsAzn8TOk
	PB/Gxk5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiHmm-0005fd-Ej; Mon, 08 Jun 2020 13:25:56 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiHkV-0001Su-Os
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 13:23:37 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6B72E1A0120;
 Mon,  8 Jun 2020 15:23:34 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7D74B1A1031;
 Mon,  8 Jun 2020 15:23:24 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 132BC4031F;
 Mon,  8 Jun 2020 21:23:09 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: linux@armlinux.org.uk, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, mturquette@baylibre.com,
 sboyd@kernel.org, oleksandr.suvorov@toradex.com, stefan.agner@toradex.com,
 arnd@arndb.de, abel.vesa@nxp.com, peng.fan@nxp.com, aisheng.dong@nxp.com,
 tglx@linutronix.de, allison@lohutok.net, gregkh@linuxfoundation.org,
 info@metux.net, leonard.crestez@nxp.com, fugang.duan@nxp.com,
 daniel.baluta@nxp.com, yuehaibing@huawei.com, sfr@canb.auug.org.au,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH 9/9] clk: imx8qxp: Support module build
Date: Mon,  8 Jun 2020 21:12:16 +0800
Message-Id: <1591621936-11886-10-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591621936-11886-1-git-send-email-Anson.Huang@nxp.com>
References: <1591621936-11886-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_062335_965202_91A30388 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support building i.MX8QXP clock driver as module.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/clk/imx/Kconfig            | 2 +-
 drivers/clk/imx/clk-imx8qxp-lpcg.c | 1 +
 drivers/clk/imx/clk-imx8qxp.c      | 1 +
 3 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/Kconfig b/drivers/clk/imx/Kconfig
index a1201ce..ffb8cf9 100644
--- a/drivers/clk/imx/Kconfig
+++ b/drivers/clk/imx/Kconfig
@@ -37,7 +37,7 @@ config CLK_IMX8MQ
 	    Build the driver for i.MX8MQ CCM Clock Driver
 
 config CLK_IMX8QXP
-	bool "IMX8QXP SCU Clock"
+	tristate "IMX8QXP SCU Clock"
 	depends on ARCH_MXC && IMX_SCU && ARM64
 	select MXC_CLK_SCU
 	help
diff --git a/drivers/clk/imx/clk-imx8qxp-lpcg.c b/drivers/clk/imx/clk-imx8qxp-lpcg.c
index 04c8ee3..8afaefc 100644
--- a/drivers/clk/imx/clk-imx8qxp-lpcg.c
+++ b/drivers/clk/imx/clk-imx8qxp-lpcg.c
@@ -232,3 +232,4 @@ static struct platform_driver imx8qxp_lpcg_clk_driver = {
 };
 
 builtin_platform_driver(imx8qxp_lpcg_clk_driver);
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/clk/imx/clk-imx8qxp.c b/drivers/clk/imx/clk-imx8qxp.c
index 5e2903e..a34c7c5 100644
--- a/drivers/clk/imx/clk-imx8qxp.c
+++ b/drivers/clk/imx/clk-imx8qxp.c
@@ -152,3 +152,4 @@ static struct platform_driver imx8qxp_clk_driver = {
 	.probe = imx8qxp_clk_probe,
 };
 builtin_platform_driver(imx8qxp_clk_driver);
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
