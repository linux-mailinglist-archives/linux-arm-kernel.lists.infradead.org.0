Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE22933CE9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 03:58:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HpU7R3uN1zNlTC2PUMEaapmpbhxWHO6T6h3oSA0+RxA=; b=oLrnujk9fCZok+Ht1Qj5S6RgoJ
	4HDHDv8kRx/bUK9Lu44PNRDscFVHseQrT4uhowEXmWWAeKu9VWY08SMEnIDTHIJalHXX1IzvR667i
	kly0t5QUjaYQIsI908/Z7RB9QdTUz1LyF7wq0PLemhhLbsh0qj6kvbKuL1QLZXBrow/LE2I+FpxGU
	byLz+fmLHD+mWMOj66FsWcTxyHAmxWcHApELCJo+azLOd3SXu8qSQQbIF4Vg1KEZrSHDYvSM+Re03
	vsNRepkWxSGLKBt3ddayr7vLcPvS+wNAogfo5nAJInDtaaXHljHgRT3MTVWwYY61D/GgqSuAwo1Gw
	X9BpnRMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXyiG-0005qU-Vo; Tue, 04 Jun 2019 01:58:08 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXyi9-0005po-J1
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 01:58:03 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C6B991A0592;
 Tue,  4 Jun 2019 03:57:59 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 750431A0583;
 Tue,  4 Jun 2019 03:57:48 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B89A7402D8;
 Tue,  4 Jun 2019 09:57:34 +0800 (SGT)
From: Anson.Huang@nxp.com
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, catalin.marinas@arm.com,
 will.deacon@arm.com, maxime.ripard@bootlin.com, olof@lixom.net,
 horms+renesas@verge.net.au, jagan@amarulasolutions.com,
 bjorn.andersson@linaro.org, leonard.crestez@nxp.com, dinguyen@kernel.org,
 enric.balletbo@collabora.com, aisheng.dong@nxp.com, ping.bai@nxp.com,
 abel.vesa@nxp.com, l.stach@pengutronix.de, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V3 2/4] clk: imx8mm: Make 1416X/1443X PLL macro definitions
 common for usage
Date: Tue,  4 Jun 2019 09:59:26 +0800
Message-Id: <20190604015928.23157-2-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604015928.23157-1-Anson.Huang@nxp.com>
References: <20190604015928.23157-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_185801_761118_0A61E59B 
X-CRM114-Status: UNSURE (   8.39  )
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
New patch.
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
