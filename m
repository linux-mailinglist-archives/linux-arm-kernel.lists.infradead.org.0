Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D26EF192D04
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 16:41:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vlyrJWD1nghDaK816ZzLron3wQR0v6D5xIMd3K1UahU=; b=sEpD0/kRXxhOkGAJXK3rAihjy3
	CWnWVGkNzUOX/7Jq+QsH/Lgwk+uqtSNdlKEaUuSEjr0bo2q89HMILtYXW4cuxR1PkHfd/9VCecfBq
	HG+Oze755bN5ZDzRxWk0cK0k9OnrMhEtHM8ssgfCtwVlQJCiC/vkYPgYBg1nFvEO/+XZk6HcEnWHZ
	OqJxTqecP5dnb7Zt6nkjcmHD1oIXwdLTFH+3Vx1wx8UmsHsLd2ps5Q6YkodI8PFS27PLR9txOwJq/
	tngR/3PIA1821xBKO47CK2DT2k9+XTYWPYh30YaTS5gmdssxraSaZPPJhTKrUCWfCNJaiYxuiB84v
	5rianvFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH89O-00084P-D3; Wed, 25 Mar 2020 15:41:02 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH87t-00073W-4p
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 15:39:30 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E7621200566;
 Wed, 25 Mar 2020 16:39:27 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DA35920055D;
 Wed, 25 Mar 2020 16:39:27 +0100 (CET)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 3136A203CE;
 Wed, 25 Mar 2020 16:39:27 +0100 (CET)
From: Abel Vesa <abel.vesa@nxp.com>
To: Rob Herring <robh@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Anson Huang <anson.huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v2 06/13] clk: imx: pll14xx: Add the device as argument when
 registering
Date: Wed, 25 Mar 2020 17:38:44 +0200
Message-Id: <1585150731-3354-7-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585150731-3354-1-git-send-email-abel.vesa@nxp.com>
References: <1585150731-3354-1-git-send-email-abel.vesa@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_083929_461711_ACF7D270 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to allow runtime PM, the device needs to be passed on
to the register function. Audiomix clock controller, used on
i.MX8MP and future platforms, registers a pll14xx and has runtime
PM support.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 drivers/clk/imx/clk-pll14xx.c |  8 ++++----
 drivers/clk/imx/clk.h         | 13 ++++++++++---
 2 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index a83bbbe..f9eb189 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -378,9 +378,9 @@ static const struct clk_ops clk_pll1443x_ops = {
 	.set_rate	= clk_pll1443x_set_rate,
 };
 
-struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
-				  void __iomem *base,
-				  const struct imx_pll14xx_clk *pll_clk)
+struct clk_hw *imx_dev_clk_hw_pll14xx(struct device *dev, const char *name,
+				const char *parent_name, void __iomem *base,
+				const struct imx_pll14xx_clk *pll_clk)
 {
 	struct clk_pll14xx *pll;
 	struct clk_hw *hw;
@@ -426,7 +426,7 @@ struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
 
 	hw = &pll->hw;
 
-	ret = clk_hw_register(NULL, hw);
+	ret = clk_hw_register(dev, hw);
 	if (ret) {
 		pr_err("%s: failed to register pll %s %d\n",
 			__func__, name, ret);
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 01ff1db..fcd9952a 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -133,9 +133,9 @@ struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 #define imx_clk_pll14xx(name, parent_name, base, pll_clk) \
 	to_clk(imx_clk_hw_pll14xx(name, parent_name, base, pll_clk))
 
-struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
-				  void __iomem *base,
-				  const struct imx_pll14xx_clk *pll_clk);
+struct clk_hw *imx_dev_clk_hw_pll14xx(struct device *dev, const char *name,
+				const char *parent_name, void __iomem *base,
+				const struct imx_pll14xx_clk *pll_clk);
 
 struct clk_hw *imx_clk_hw_pllv1(enum imx_pllv1_type type, const char *name,
 		const char *parent, void __iomem *base);
@@ -242,6 +242,13 @@ static inline struct clk *to_clk(struct clk_hw *hw)
 	return hw->clk;
 }
 
+static inline struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
+				  void __iomem *base,
+				  const struct imx_pll14xx_clk *pll_clk)
+{
+	return imx_dev_clk_hw_pll14xx(NULL, name, parent_name, base, pll_clk);
+}
+
 static inline struct clk_hw *imx_clk_hw_fixed(const char *name, int rate)
 {
 	return clk_hw_register_fixed_rate(NULL, name, NULL, 0, rate);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
