Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3CAF13EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 11:28:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5B4nPVdFP1uM+bdnoKua2vowEh2G1BxnECUJqj+pqJE=; b=NPlJ0yKLzomOKOdvpp6cModcR2
	ybGk0nar4xFMH966iw6FmkSfl1mjvJ/noKiHn4PU/y+rJi5G/NwK8TafMNT8Nv2C+cHXZ+qhlHreF
	WJ/N38pSkyttXJyljTSMS5lyQjC1jOYYQMdduO2dMe28PQyXnrCFCrjOqer6G6Yoy6p6Xrpbu9xkq
	lCQdVMAuIiKmre+8C005Q3bewIF0Cg4dkjL3ZQpdpWxOieiJLozb2XfyuUtUjSlGGyxOJBhB06XTM
	LC49TYrAfDy5NSl/rOF8S+pd/f+XGkz9yIszfFsGYLjDhpng6bvsPVShPfPozXwU9wta/CB21aJfs
	y8nvuzHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSIXj-0003mc-RB; Wed, 06 Nov 2019 10:28:03 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSIWY-0002mX-BP
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 10:26:52 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 06 Nov 2019 19:26:49 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 9FE5A605F8;
 Wed,  6 Nov 2019 19:26:49 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 6 Nov 2019 19:26:59 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 0A8F81A04FC;
 Wed,  6 Nov 2019 19:26:49 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH 4/6] phy: uniphier-usb3hs: Add legacy SoC support for Pro5
Date: Wed,  6 Nov 2019 19:26:17 +0900
Message-Id: <1573035979-32200-5-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573035979-32200-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1573035979-32200-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_022650_727142_5D5F0363 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-kernel@vger.kernel.org,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add legacy SoC support that needs to manage gio clock and reset.
This supports Pro5.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/phy/socionext/phy-uniphier-usb3hs.c | 68 ++++++++++++++++++++++-------
 1 file changed, 53 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/socionext/phy-uniphier-usb3hs.c b/drivers/phy/socionext/phy-uniphier-usb3hs.c
index 1d3f9e8..bdf696e 100644
--- a/drivers/phy/socionext/phy-uniphier-usb3hs.c
+++ b/drivers/phy/socionext/phy-uniphier-usb3hs.c
@@ -66,13 +66,14 @@ struct uniphier_u3hsphy_trim_param {
 struct uniphier_u3hsphy_priv {
 	struct device *dev;
 	void __iomem *base;
-	struct clk *clk, *clk_parent, *clk_ext;
-	struct reset_control *rst, *rst_parent;
+	struct clk *clk, *clk_parent, *clk_ext, *clk_parent_gio;
+	struct reset_control *rst, *rst_parent, *rst_parent_gio;
 	struct regulator *vbus;
 	const struct uniphier_u3hsphy_soc_data *data;
 };
 
 struct uniphier_u3hsphy_soc_data {
+	bool is_legacy;
 	int nparams;
 	const struct uniphier_u3hsphy_param param[MAX_PHY_PARAMS];
 	u32 config0;
@@ -256,11 +257,20 @@ static int uniphier_u3hsphy_init(struct phy *phy)
 	if (ret)
 		return ret;
 
-	ret = reset_control_deassert(priv->rst_parent);
+	ret = clk_prepare_enable(priv->clk_parent_gio);
 	if (ret)
 		goto out_clk_disable;
 
-	if (!priv->data->config0 && !priv->data->config1)
+	ret = reset_control_deassert(priv->rst_parent);
+	if (ret)
+		goto out_clk_gio_disable;
+
+	ret = reset_control_deassert(priv->rst_parent_gio);
+	if (ret)
+		goto out_rst_assert;
+
+	if ((priv->data->is_legacy)
+	    || (!priv->data->config0 && !priv->data->config1))
 		return 0;
 
 	config0 = priv->data->config0;
@@ -280,6 +290,8 @@ static int uniphier_u3hsphy_init(struct phy *phy)
 
 out_rst_assert:
 	reset_control_assert(priv->rst_parent);
+out_clk_gio_disable:
+	clk_disable_unprepare(priv->clk_parent_gio);
 out_clk_disable:
 	clk_disable_unprepare(priv->clk_parent);
 
@@ -290,7 +302,9 @@ static int uniphier_u3hsphy_exit(struct phy *phy)
 {
 	struct uniphier_u3hsphy_priv *priv = phy_get_drvdata(phy);
 
+	reset_control_assert(priv->rst_parent_gio);
 	reset_control_assert(priv->rst_parent);
+	clk_disable_unprepare(priv->clk_parent_gio);
 	clk_disable_unprepare(priv->clk_parent);
 
 	return 0;
@@ -325,22 +339,34 @@ static int uniphier_u3hsphy_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->base))
 		return PTR_ERR(priv->base);
 
-	priv->clk = devm_clk_get(dev, "phy");
-	if (IS_ERR(priv->clk))
-		return PTR_ERR(priv->clk);
+	if (!priv->data->is_legacy) {
+		priv->clk = devm_clk_get(dev, "phy");
+		if (IS_ERR(priv->clk))
+			return PTR_ERR(priv->clk);
+
+		priv->clk_ext = devm_clk_get_optional(dev, "phy-ext");
+		if (IS_ERR(priv->clk_ext))
+			return PTR_ERR(priv->clk_ext);
+
+		priv->rst = devm_reset_control_get_shared(dev, "phy");
+		if (IS_ERR(priv->rst))
+			return PTR_ERR(priv->rst);
+
+	} else {
+		priv->clk_parent_gio = devm_clk_get(dev, "gio");
+		if (IS_ERR(priv->clk_parent_gio))
+			return PTR_ERR(priv->clk_parent_gio);
+
+		priv->rst_parent_gio =
+			devm_reset_control_get_shared(dev, "gio");
+		if (IS_ERR(priv->rst_parent_gio))
+			return PTR_ERR(priv->rst_parent_gio);
+	}
 
 	priv->clk_parent = devm_clk_get(dev, "link");
 	if (IS_ERR(priv->clk_parent))
 		return PTR_ERR(priv->clk_parent);
 
-	priv->clk_ext = devm_clk_get_optional(dev, "phy-ext");
-	if (IS_ERR(priv->clk_ext))
-		return PTR_ERR(priv->clk_ext);
-
-	priv->rst = devm_reset_control_get_shared(dev, "phy");
-	if (IS_ERR(priv->rst))
-		return PTR_ERR(priv->rst);
-
 	priv->rst_parent = devm_reset_control_get_shared(dev, "link");
 	if (IS_ERR(priv->rst_parent))
 		return PTR_ERR(priv->rst_parent);
@@ -362,11 +388,18 @@ static int uniphier_u3hsphy_probe(struct platform_device *pdev)
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
 
+static const struct uniphier_u3hsphy_soc_data uniphier_pro5_data = {
+	.is_legacy = true,
+	.nparams = 0,
+};
+
 static const struct uniphier_u3hsphy_soc_data uniphier_pxs2_data = {
+	.is_legacy = false,
 	.nparams = 0,
 };
 
 static const struct uniphier_u3hsphy_soc_data uniphier_ld20_data = {
+	.is_legacy = false,
 	.nparams = 2,
 	.param = {
 		{ LS_SLEW, 1 },
@@ -378,6 +411,7 @@ static const struct uniphier_u3hsphy_soc_data uniphier_ld20_data = {
 };
 
 static const struct uniphier_u3hsphy_soc_data uniphier_pxs3_data = {
+	.is_legacy = false,
 	.nparams = 0,
 	.trim_func = uniphier_u3hsphy_trim_ld20,
 	.config0 = 0x92316680,
@@ -386,6 +420,10 @@ static const struct uniphier_u3hsphy_soc_data uniphier_pxs3_data = {
 
 static const struct of_device_id uniphier_u3hsphy_match[] = {
 	{
+		.compatible = "socionext,uniphier-pro5-usb3-hsphy",
+		.data = &uniphier_pro5_data,
+	},
+	{
 		.compatible = "socionext,uniphier-pxs2-usb3-hsphy",
 		.data = &uniphier_pxs2_data,
 	},
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
