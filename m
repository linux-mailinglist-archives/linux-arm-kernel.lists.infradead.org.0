Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D1DF13EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 11:28:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MwK8e2FLRWVsu2kCzTe7rD6owqxpJfZ0UIJMgcfungc=; b=TklRoZjcvqHzV9DiRiYkW5ItMS
	Q3jRjO5RglKxbEznKWLzhr05Ssahwocu/uCKGokpqitezua0jdx4046+gRNVD1xvvI6zppwgbaEIm
	9rpn8yrGD72Oo7eDMNbPgFhcP0GH8O7ZyfUA1vLjKfC/UOKze69fBJ28fD1RXgNIvgeYJwmDoJt/x
	/Q6/dxla76OGob3fS9yz9D5Dr4zxR3/JYtX5lqDr/CIjf8muzAVGs7nk4yFeZNSYJrNdxn+6ogh3B
	seZUnbsdtEFqs0MmETgi14uF8UdCVJjF4DL/j+sdH9fw3uJp/CSUpXXK8tPEuI4aoyWKVI4V86CQq
	0TnkkS3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSIYI-0004IB-Bt; Wed, 06 Nov 2019 10:28:38 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSIWb-0002mX-4i
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 10:26:55 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 06 Nov 2019 19:26:52 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id C0080605F8;
 Wed,  6 Nov 2019 19:26:52 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 6 Nov 2019 19:26:59 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 318481A04FC;
 Wed,  6 Nov 2019 19:26:52 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH 6/6] phy: uniphier-pcie: Add legacy SoC support for Pro5
Date: Wed,  6 Nov 2019 19:26:19 +0900
Message-Id: <1573035979-32200-7-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573035979-32200-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1573035979-32200-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_022653_585563_6DD46887 
X-CRM114-Status: GOOD (  18.55  )
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

Add legacy SoC support that needs to manage gio clock and reset and to skip
setting unimplemented phy parameters. This supports Pro5.

This specifies only 1 port use because Pro5 doesn't set it in the power-on
sequence.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/phy/socionext/phy-uniphier-pcie.c | 83 +++++++++++++++++++++++++++----
 1 file changed, 72 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/socionext/phy-uniphier-pcie.c b/drivers/phy/socionext/phy-uniphier-pcie.c
index 25d1d9d..cd17c70 100644
--- a/drivers/phy/socionext/phy-uniphier-pcie.c
+++ b/drivers/phy/socionext/phy-uniphier-pcie.c
@@ -19,6 +19,10 @@
 #include <linux/resource.h>
 
 /* PHY */
+#define PCL_PHY_CLKCTRL		0x0000
+#define PORT_SEL_MASK		GENMASK(11, 9)
+#define PORT_SEL_1		FIELD_PREP(PORT_SEL_MASK, 1)
+
 #define PCL_PHY_TEST_I		0x2000
 #define PCL_PHY_TEST_O		0x2004
 #define TESTI_DAT_MASK		GENMASK(13, 6)
@@ -45,13 +49,14 @@
 struct uniphier_pciephy_priv {
 	void __iomem *base;
 	struct device *dev;
-	struct clk *clk;
-	struct reset_control *rst;
+	struct clk *clk, *clk_gio;
+	struct reset_control *rst, *rst_gio;
 	const struct uniphier_pciephy_soc_data *data;
 };
 
 struct uniphier_pciephy_soc_data {
 	bool has_syscon;
+	bool is_legacy;
 };
 
 static void uniphier_pciephy_testio_write(struct uniphier_pciephy_priv *priv,
@@ -111,16 +116,35 @@ static void uniphier_pciephy_deassert(struct uniphier_pciephy_priv *priv)
 static int uniphier_pciephy_init(struct phy *phy)
 {
 	struct uniphier_pciephy_priv *priv = phy_get_drvdata(phy);
+	u32 val;
 	int ret;
 
 	ret = clk_prepare_enable(priv->clk);
 	if (ret)
 		return ret;
 
-	ret = reset_control_deassert(priv->rst);
+	ret = clk_prepare_enable(priv->clk_gio);
 	if (ret)
 		goto out_clk_disable;
 
+	ret = reset_control_deassert(priv->rst);
+	if (ret)
+		goto out_clk_gio_disable;
+
+	ret = reset_control_deassert(priv->rst_gio);
+	if (ret)
+		goto out_rst_assert;
+
+	/* support only 1 port */
+	val = readl(priv->base + PCL_PHY_CLKCTRL);
+	val &= ~PORT_SEL_MASK;
+	val |= PORT_SEL_1;
+	writel(val, priv->base + PCL_PHY_CLKCTRL);
+
+	/* legacy controller doesn't have phy_reset and parameters */
+	if (priv->data->is_legacy)
+		return 0;
+
 	uniphier_pciephy_set_param(priv, PCL_PHY_R00,
 				   RX_EQ_ADJ_EN, RX_EQ_ADJ_EN);
 	uniphier_pciephy_set_param(priv, PCL_PHY_R06, RX_EQ_ADJ,
@@ -134,6 +158,10 @@ static int uniphier_pciephy_init(struct phy *phy)
 
 	return 0;
 
+out_rst_assert:
+	reset_control_assert(priv->rst);
+out_clk_gio_disable:
+	clk_disable_unprepare(priv->clk_gio);
 out_clk_disable:
 	clk_disable_unprepare(priv->clk);
 
@@ -144,8 +172,11 @@ static int uniphier_pciephy_exit(struct phy *phy)
 {
 	struct uniphier_pciephy_priv *priv = phy_get_drvdata(phy);
 
-	uniphier_pciephy_assert(priv);
+	if (!priv->data->is_legacy)
+		uniphier_pciephy_assert(priv);
+	reset_control_assert(priv->rst_gio);
 	reset_control_assert(priv->rst);
+	clk_disable_unprepare(priv->clk_gio);
 	clk_disable_unprepare(priv->clk);
 
 	return 0;
@@ -179,13 +210,32 @@ static int uniphier_pciephy_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->base))
 		return PTR_ERR(priv->base);
 
-	priv->clk = devm_clk_get(dev, NULL);
-	if (IS_ERR(priv->clk))
-		return PTR_ERR(priv->clk);
-
-	priv->rst = devm_reset_control_get_shared(dev, NULL);
-	if (IS_ERR(priv->rst))
-		return PTR_ERR(priv->rst);
+	if (priv->data->is_legacy) {
+		priv->clk_gio = devm_clk_get(dev, "gio");
+		if (IS_ERR(priv->clk_gio))
+			return PTR_ERR(priv->clk_gio);
+
+		priv->rst_gio =
+			devm_reset_control_get_shared(dev, "gio");
+		if (IS_ERR(priv->rst_gio))
+			return PTR_ERR(priv->rst_gio);
+
+		priv->clk = devm_clk_get(dev, "link");
+		if (IS_ERR(priv->clk))
+			return PTR_ERR(priv->clk);
+
+		priv->rst = devm_reset_control_get_shared(dev, "link");
+		if (IS_ERR(priv->rst))
+			return PTR_ERR(priv->rst);
+	} else {
+		priv->clk = devm_clk_get(dev, NULL);
+		if (IS_ERR(priv->clk))
+			return PTR_ERR(priv->clk);
+
+		priv->rst = devm_reset_control_get_shared(dev, NULL);
+		if (IS_ERR(priv->rst))
+			return PTR_ERR(priv->rst);
+	}
 
 	phy = devm_phy_create(dev, dev->of_node, &uniphier_pciephy_ops);
 	if (IS_ERR(phy))
@@ -203,16 +253,27 @@ static int uniphier_pciephy_probe(struct platform_device *pdev)
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
 
+static const struct uniphier_pciephy_soc_data uniphier_pro5_data = {
+	.has_syscon = false,
+	.is_legacy = true,
+};
+
 static const struct uniphier_pciephy_soc_data uniphier_ld20_data = {
 	.has_syscon = true,
+	.is_legacy = false,
 };
 
 static const struct uniphier_pciephy_soc_data uniphier_pxs3_data = {
 	.has_syscon = false,
+	.is_legacy = false,
 };
 
 static const struct of_device_id uniphier_pciephy_match[] = {
 	{
+		.compatible = "socionext,uniphier-pro5-pcie-phy",
+		.data = &uniphier_pro5_data,
+	},
+	{
 		.compatible = "socionext,uniphier-ld20-pcie-phy",
 		.data = &uniphier_ld20_data,
 	},
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
