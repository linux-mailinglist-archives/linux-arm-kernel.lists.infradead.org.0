Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 411381F3553
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 09:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BUa5C+jjbKiMN/16F0IN95P1NbRfLBcwZAobaWaufy0=; b=SKSUUddTIDC/RrY1vB2LJYJWrM
	V9rcHlrehwPqV2yYhFvMv6GTCRg44DdakdMb52bL2n60pmr4e9HUC4uyd9Yd6JPsDwofs+B7u/SGq
	xKgzq53x9YyRLTm9k5DGEbIc5I3vhsOQvTtEdSfvscfXBwhVSk17j+PMq/VkbfkmlYT3zwM2N0bGR
	WTQSQuIYjIXKeD78XY4hBHFbLH+yzjNyBSrS/+nZAJuEmR3WS30NogNQ9WInusp6xZ3V0+pcZN3p+
	ysbE6YkYOzXPBt6ipnhoUOFvUCVjLRrPcmmZ9eldygel75mqWLdLWNt2vEOKU6XK0Yn6Yf8LHCHvv
	Ia3gWAQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiYxR-0007nB-OC; Tue, 09 Jun 2020 07:46:05 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiYuu-0004jI-3d
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 07:43:42 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D2F26200FC0;
 Tue,  9 Jun 2020 09:43:26 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C46F6200FC9;
 Tue,  9 Jun 2020 09:43:16 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BF30940324;
 Tue,  9 Jun 2020 15:43:04 +0800 (SGT)
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
Subject: [PATCH V2 7/9] clk: imx8mp: Support module build
Date: Tue,  9 Jun 2020 15:32:11 +0800
Message-Id: <1591687933-19495-8-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591687933-19495-1-git-send-email-Anson.Huang@nxp.com>
References: <1591687933-19495-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_004328_309086_CA9267F7 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

Support building i.MX8MP clock driver as module.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change.
---
 drivers/clk/imx/Kconfig      | 2 +-
 drivers/clk/imx/clk-imx8mp.c | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/Kconfig b/drivers/clk/imx/Kconfig
index 5f537c3..0811bed 100644
--- a/drivers/clk/imx/Kconfig
+++ b/drivers/clk/imx/Kconfig
@@ -23,7 +23,7 @@ config CLK_IMX8MN
 	    Build the driver for i.MX8MN CCM Clock Driver
 
 config CLK_IMX8MP
-	bool "IMX8MP CCM Clock Driver"
+	tristate "IMX8MP CCM Clock Driver"
 	depends on ARCH_MXC
 	select MXC_CLK
 	help
diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
index b4d9db9..8517837 100644
--- a/drivers/clk/imx/clk-imx8mp.c
+++ b/drivers/clk/imx/clk-imx8mp.c
@@ -772,3 +772,4 @@ static struct platform_driver imx8mp_clk_driver = {
 	},
 };
 module_platform_driver(imx8mp_clk_driver);
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
