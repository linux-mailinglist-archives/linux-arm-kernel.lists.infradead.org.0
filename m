Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A9814D6D8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 07:55:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XXy4Lt8GnY074kw/tYGsLbBmrWiXKfddwOvlsCSqohA=; b=UwJOUMre7+wqD0ux9uZiGZd5AN
	UE8wlS7ZtEHdCROmOu+kU2MotiRJklliAxMm3nQUy8AvMZaAwer1+MJ1k3dpxUG+De0xXIEpsvxHf
	S2lPFv3TPY6LZl66swJspZYEjILftY0e0EDLa3GkkmSA+00gEWWNdsHmSBLpc9q/hr9fdvovLcxZr
	TLWUIpdjGw6C4rv9QBKhPurIa3ZlCZMapXxcP1dh4ta90l2Joz2bzVJBs49vXRfjFal3FZGfmG0yk
	k1FEOPiOgyWpJVQQ0AvcpvTNna+8zWGKbrfqBkQOZCDE+dMUpU1WCWPiftnj4W3vOpaqZwIwnUPAh
	ECEQFogQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix3j7-0006sY-Dt; Thu, 30 Jan 2020 06:54:57 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix3hC-000570-S4
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 06:53:00 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 30 Jan 2020 15:52:57 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 18D55180C09;
 Thu, 30 Jan 2020 15:52:58 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Thu, 30 Jan 2020 15:54:18 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 6A5F51A01BB;
 Thu, 30 Jan 2020 15:52:57 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH v2 7/7] phy: uniphier-pcie: Add SoC-dependent phy-mode
 function support
Date: Thu, 30 Jan 2020 15:52:45 +0900
Message-Id: <1580367165-16760-8-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580367165-16760-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1580367165-16760-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_225259_043333_06E34086 
X-CRM114-Status: GOOD (  19.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

Since this phy is shared by multiple devices including USB and PCIe,
it is necessary to determine which device use this phy.
This patch adds SoC-dependent functions to determine a device using
this phy.

When there is 'socionext,syscon' property in the pcie-phy node,
the driver calls SoC-dependt function instead of checking .has_syscon
in SoC-dependent data. The function configures the system controller
to use phy for PCIe.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/phy/socionext/phy-uniphier-pcie.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/socionext/phy-uniphier-pcie.c b/drivers/phy/socionext/phy-uniphier-pcie.c
index cd17c70..e4adab3 100644
--- a/drivers/phy/socionext/phy-uniphier-pcie.c
+++ b/drivers/phy/socionext/phy-uniphier-pcie.c
@@ -55,8 +55,8 @@ struct uniphier_pciephy_priv {
 };
 
 struct uniphier_pciephy_soc_data {
-	bool has_syscon;
 	bool is_legacy;
+	void (*set_phymode)(struct regmap *regmap);
 };
 
 static void uniphier_pciephy_testio_write(struct uniphier_pciephy_priv *priv,
@@ -243,9 +243,8 @@ static int uniphier_pciephy_probe(struct platform_device *pdev)
 
 	regmap = syscon_regmap_lookup_by_phandle(dev->of_node,
 						 "socionext,syscon");
-	if (!IS_ERR(regmap) && priv->data->has_syscon)
-		regmap_update_bits(regmap, SG_USBPCIESEL,
-				   SG_USBPCIESEL_PCIE, SG_USBPCIESEL_PCIE);
+	if (!IS_ERR(regmap) && priv->data->set_phymode)
+		priv->data->set_phymode(regmap);
 
 	phy_set_drvdata(phy, priv);
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
@@ -253,18 +252,22 @@ static int uniphier_pciephy_probe(struct platform_device *pdev)
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
 
+static void uniphier_pciephy_ld20_setmode(struct regmap *regmap)
+{
+	regmap_update_bits(regmap, SG_USBPCIESEL,
+			   SG_USBPCIESEL_PCIE, SG_USBPCIESEL_PCIE);
+}
+
 static const struct uniphier_pciephy_soc_data uniphier_pro5_data = {
-	.has_syscon = false,
 	.is_legacy = true,
 };
 
 static const struct uniphier_pciephy_soc_data uniphier_ld20_data = {
-	.has_syscon = true,
 	.is_legacy = false,
+	.set_phymode = uniphier_pciephy_ld20_setmode,
 };
 
 static const struct uniphier_pciephy_soc_data uniphier_pxs3_data = {
-	.has_syscon = false,
 	.is_legacy = false,
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
