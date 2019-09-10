Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB0FAE220
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 03:52:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+Dg7HplM1Un/a6L28ZeH8D755P82ng3Y9nM3qfFXYSo=; b=BbC
	DaNHZoOFELM0LlNFbLWxQFOCrsQeuSgm7QSdhWNkhOk8B+m0kdFwcY6CYKOptJ4/bwBHYHaiJMgsE
	xNz7NqdQN2K3sWTWzw/R+3jFh7S4KOLTqWK9QhbdoDUZZJQ9VNewEXcY2dMeqSvfttbQlSE0mZBEk
	1fl5LI3BIVS5pA0Inbxpg/zD1eV/an9//ZXAaQhEGwqPfEd2HXd2IXE5DGFDghMgqwLQj3DRheJej
	SIl/wlBZVAXiE4LGFd3TdpSupB143rwuv5Q+wrcqa69NPHGNmTbHwvJ+9MLCFdiVVAAeupx+CLuRu
	Pl5XWtrPLkVzOFuj54UuzF1Ly7ahV2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7VK8-0005M0-If; Tue, 10 Sep 2019 01:52:04 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7VK1-0005L7-26
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 01:51:58 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 10 Sep 2019 10:51:51 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id DDFBC605F8;
 Tue, 10 Sep 2019 10:51:51 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 10 Sep 2019 10:51:51 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 5EFEF1A04FB;
 Tue, 10 Sep 2019 10:51:51 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH] regulator: uniphier: Add Pro5 USB3 VBUS support
Date: Tue, 10 Sep 2019 10:51:44 +0900
Message-Id: <1568080304-1572-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_185157_215702_02AA8A7F 
X-CRM114-Status: GOOD (  14.28  )
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

Pro5 SoC has same scheme of USB3 VBUS as Pro4, so the data for Pro5 is
equivalent to Pro4.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 Documentation/devicetree/bindings/regulator/uniphier-regulator.txt | 5 +++--
 drivers/regulator/uniphier-regulator.c                             | 4 ++++
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/uniphier-regulator.txt b/Documentation/devicetree/bindings/regulator/uniphier-regulator.txt
index c9919f4..94fd38b 100644
--- a/Documentation/devicetree/bindings/regulator/uniphier-regulator.txt
+++ b/Documentation/devicetree/bindings/regulator/uniphier-regulator.txt
@@ -13,6 +13,7 @@ this layer. These clocks and resets should be described in each property.
 Required properties:
 - compatible: Should be
     "socionext,uniphier-pro4-usb3-regulator" - for Pro4 SoC
+    "socionext,uniphier-pro5-usb3-regulator" - for Pro5 SoC
     "socionext,uniphier-pxs2-usb3-regulator" - for PXs2 SoC
     "socionext,uniphier-ld20-usb3-regulator" - for LD20 SoC
     "socionext,uniphier-pxs3-usb3-regulator" - for PXs3 SoC
@@ -20,12 +21,12 @@ Required properties:
 - clocks: A list of phandles to the clock gate for USB3 glue layer.
 	According to the clock-names, appropriate clocks are required.
 - clock-names: Should contain
-    "gio", "link" - for Pro4 SoC
+    "gio", "link" - for Pro4 and Pro5 SoCs
     "link"        - for others
 - resets: A list of phandles to the reset control for USB3 glue layer.
 	According to the reset-names, appropriate resets are required.
 - reset-names: Should contain
-    "gio", "link" - for Pro4 SoC
+    "gio", "link" - for Pro4 and Pro5 SoCs
     "link"        - for others
 
 See Documentation/devicetree/bindings/regulator/regulator.txt
diff --git a/drivers/regulator/uniphier-regulator.c b/drivers/regulator/uniphier-regulator.c
index 9026d5a..2311924 100644
--- a/drivers/regulator/uniphier-regulator.c
+++ b/drivers/regulator/uniphier-regulator.c
@@ -186,6 +186,10 @@ static const struct of_device_id uniphier_regulator_match[] = {
 		.data = &uniphier_pro4_usb3_data,
 	},
 	{
+		.compatible = "socionext,uniphier-pro5-usb3-regulator",
+		.data = &uniphier_pro4_usb3_data,
+	},
+	{
 		.compatible = "socionext,uniphier-pxs2-usb3-regulator",
 		.data = &uniphier_pxs2_usb3_data,
 	},
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
