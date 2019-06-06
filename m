Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0729B3693B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 03:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3dINX92y6yz4w0CrAwT7QzHoVQIjB6wPu4gFRi6+MfM=; b=Fi9Ogf070RWOSBAwdablUVyew1
	ql+NO3uObWrEbYLRquCJHkEGPIBmoan9jnJ27YZkIyVEHSpopzTOt0hJAm6rj1fyFt7IWIacegkMo
	u9E2kBZRRcRKj5VaRBpLSDmwP+epwlyzdQelfUcQJbhuCVvaRqaMe1UfCEf3YegV7sqTja/cYRL1X
	2L1Ro966Eq6pbf+G7s6Fh30AhjXJjeZggLrVppPEwTJr2WpStT7XlJjPvkrXEm0VOZQQqURHAYaXo
	hHcXlCtwU6NJldld372/5vkzuwq16rOt4PlrM+e7hp8OZd2Vaw/4PxbZPnwXkLWInKbJ2oiCjDoUi
	wuT71vvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYhGC-0003Wz-0B; Thu, 06 Jun 2019 01:32:08 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYhG4-0003V4-C1
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 01:32:01 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A5D8F1A0F76;
 Thu,  6 Jun 2019 03:31:55 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 2EFA71A09D2;
 Thu,  6 Jun 2019 03:31:43 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C1786402D5;
 Thu,  6 Jun 2019 09:31:29 +0800 (SGT)
From: Anson.Huang@nxp.com
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, catalin.marinas@arm.com,
 will.deacon@arm.com, maxime.ripard@bootlin.com, olof@lixom.net,
 jagan@amarulasolutions.com, horms+renesas@verge.net.au,
 bjorn.andersson@linaro.org, leonard.crestez@nxp.com, dinguyen@kernel.org,
 enric.balletbo@collabora.com, aisheng.dong@nxp.com, abel.vesa@nxp.com,
 ping.bai@nxp.com, l.stach@pengutronix.de, peng.fan@nxp.com,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V4 2/4] clk: imx8mm: Make 1416X/1443X PLL macro definitions
 common for usage
Date: Thu,  6 Jun 2019 09:33:21 +0800
Message-Id: <20190606013323.3392-2-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190606013323.3392-1-Anson.Huang@nxp.com>
References: <20190606013323.3392-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_183200_543536_D20E5FFF 
X-CRM114-Status: UNSURE (   8.99  )
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
X-Mailman-Version: 2.1.21
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

From: Anson Huang <Anson.Huang@nxp.com>

1416X/1443X PLL are used on i.MX8MM and i.MX8MN and maybe
other i.MX8M series SoC later, the macro definitions of
these PLLs' initialization should be common for usage.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No changes.
---
 drivers/clk/imx/clk-imx8mm.c | 17 -----------------
 drivers/clk/imx/clk.h        | 17 +++++++++++++++++
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index eb9fcf0..fecb3b2 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -26,23 +26,6 @@ static u32 share_count_dcss;
 static u32 share_count_pdm;
 static u32 share_count_nand;
 
-#define PLL_1416X_RATE(_rate, _m, _p, _s)		\
-	{						\
-		.rate	=	(_rate),		\
-		.mdiv	=	(_m),			\
-		.pdiv	=	(_p),			\
-		.sdiv	=	(_s),			\
-	}
-
-#define PLL_1443X_RATE(_rate, _m, _p, _s, _k)		\
-	{						\
-		.rate	=	(_rate),		\
-		.mdiv	=	(_m),			\
-		.pdiv	=	(_p),			\
-		.sdiv	=	(_s),			\
-		.kdiv	=	(_k),			\
-	}
-
 static const struct imx_pll14xx_rate_table imx8mm_pll1416x_tbl[] = {
 	PLL_1416X_RATE(1800000000U, 225, 3, 0),
 	PLL_1416X_RATE(1600000000U, 200, 3, 0),
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 6dcdc91..ac8c4ae 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -81,6 +81,23 @@ enum imx_pllv3_type {
 	IMX_PLLV3_AV_IMX7,
 };
 
+#define PLL_1416X_RATE(_rate, _m, _p, _s)		\
+	{						\
+		.rate	=	(_rate),		\
+		.mdiv	=	(_m),			\
+		.pdiv	=	(_p),			\
+		.sdiv	=	(_s),			\
+	}
+
+#define PLL_1443X_RATE(_rate, _m, _p, _s, _k)		\
+	{						\
+		.rate	=	(_rate),		\
+		.mdiv	=	(_m),			\
+		.pdiv	=	(_p),			\
+		.sdiv	=	(_s),			\
+		.kdiv	=	(_k),			\
+	}
+
 struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
 		const char *parent_name, void __iomem *base, u32 div_mask);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
