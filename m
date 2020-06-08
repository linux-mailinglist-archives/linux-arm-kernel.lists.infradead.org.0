Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B58791F25E6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:36:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKnbtuVgBXqcQL9h0AAwL5mAyzNrGOJFOLpJpTbh3Us=; b=ogXnOuJ+1yCmMG
	D4U5gu27m7nJ9y5JxX23E5wbp3l9YvZLlyzVM3rVDt6cNDTDP2CVbC3vNoOTMRT82LiC3WUFYLk+q
	gz3VT9qE6piRJPrGXwbTAdrv+e5UrFkUv/ND7POf/hcUXvQS/+fQcRB0a1VO70N0N5y6tiaNTxd9T
	HFGsLMNQeg2ELB2+yHI5WE4TCtDxraVeVY+LAiV7StRHo/BHq8jcyL8XYzf38o9bGkyVzwzUwKnit
	t2blf662TD68rhaTCmyQ2w+0lradvJMy/AyTvuv30vk7gXg7LnNpEIN1KLq/dDUz7vOV7qZKYFcjZ
	EhoEqzEQETPr2d9CAQQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRJS-0004UP-D8; Mon, 08 Jun 2020 23:36:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiR2A-0004vs-F6
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:18:29 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A21C02088E;
 Mon,  8 Jun 2020 23:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658305;
 bh=kHnwlx9BCRreA8gSpamAv5AUS0PWWZVe+8Pj/JLgOwo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mr0MEHwvY1KKWj4DljtbQrNio5LtuHRBDWVbr8a0smgLDOuywmXaP78DCzIZcSsY2
 KEIUjwsrBZn6AV+y9XdnSHw+0LptDfMNkPXhZoMCnvctA8h8zJv7QdK5dM4fNhYuPO
 3DZlTTuUBZN5qFp6QjLMoovMrKlZxfNJnkgG9qu8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 307/606] ARM: dts/imx6q-bx50v3: Set display
 interface clock parents
Date: Mon,  8 Jun 2020 19:07:12 -0400
Message-Id: <20200608231211.3363633-307-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161826_727762_C1FC3A70 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Robert Beckett <bob.beckett@collabora.com>, devicetree@vger.kernel.org,
 Sasha Levin <sashal@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>, Ian Ray <ian.ray@ge.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robert Beckett <bob.beckett@collabora.com>

[ Upstream commit 665e7c73a7724a393b4ec92d1ae1e029925ef2b7 ]

Avoid LDB and IPU DI clocks both using the same parent. LDB requires
pasthrough clock to avoid breaking timing while IPU DI does not.

Force IPU DI clocks to use IMX6QDL_CLK_PLL2_PFD0_352M as parent
and LDB to use IMX6QDL_CLK_PLL5_VIDEO_DIV.

This fixes an issue where attempting atomic modeset while using
HDMI and display port at the same time causes LDB clock programming
to destroy the programming of HDMI that was done during the same
modeset.

Cc: stable@vger.kernel.org
Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
[Use IMX6QDL_CLK_PLL2_PFD0_352M instead of IMX6QDL_CLK_PLL2_PFD2_396M
 originally chosen by Robert Beckett to avoid affecting eMMC clock
 by DRM atomic updates]
Signed-off-by: Ian Ray <ian.ray@ge.com>
[Squash Robert's and Ian's commits for bisectability, update patch
 description and add stable tag]
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/imx6q-b450v3.dts  |  7 -------
 arch/arm/boot/dts/imx6q-b650v3.dts  |  7 -------
 arch/arm/boot/dts/imx6q-b850v3.dts  | 11 -----------
 arch/arm/boot/dts/imx6q-bx50v3.dtsi | 15 +++++++++++++++
 4 files changed, 15 insertions(+), 25 deletions(-)

diff --git a/arch/arm/boot/dts/imx6q-b450v3.dts b/arch/arm/boot/dts/imx6q-b450v3.dts
index 95b8f2d71821..fb0980190aa0 100644
--- a/arch/arm/boot/dts/imx6q-b450v3.dts
+++ b/arch/arm/boot/dts/imx6q-b450v3.dts
@@ -65,13 +65,6 @@ panel_in_lvds0: endpoint {
 	};
 };
 
-&clks {
-	assigned-clocks = <&clks IMX6QDL_CLK_LDB_DI0_SEL>,
-			  <&clks IMX6QDL_CLK_LDB_DI1_SEL>;
-	assigned-clock-parents = <&clks IMX6QDL_CLK_PLL3_USB_OTG>,
-				 <&clks IMX6QDL_CLK_PLL3_USB_OTG>;
-};
-
 &ldb {
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/imx6q-b650v3.dts b/arch/arm/boot/dts/imx6q-b650v3.dts
index 611cb7ae7e55..8f762d9c5ae9 100644
--- a/arch/arm/boot/dts/imx6q-b650v3.dts
+++ b/arch/arm/boot/dts/imx6q-b650v3.dts
@@ -65,13 +65,6 @@ panel_in_lvds0: endpoint {
 	};
 };
 
-&clks {
-	assigned-clocks = <&clks IMX6QDL_CLK_LDB_DI0_SEL>,
-			  <&clks IMX6QDL_CLK_LDB_DI1_SEL>;
-	assigned-clock-parents = <&clks IMX6QDL_CLK_PLL3_USB_OTG>,
-				 <&clks IMX6QDL_CLK_PLL3_USB_OTG>;
-};
-
 &ldb {
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/imx6q-b850v3.dts b/arch/arm/boot/dts/imx6q-b850v3.dts
index e4cb118f88c6..1ea64ecf4291 100644
--- a/arch/arm/boot/dts/imx6q-b850v3.dts
+++ b/arch/arm/boot/dts/imx6q-b850v3.dts
@@ -53,17 +53,6 @@ chosen {
 	};
 };
 
-&clks {
-	assigned-clocks = <&clks IMX6QDL_CLK_LDB_DI0_SEL>,
-			  <&clks IMX6QDL_CLK_LDB_DI1_SEL>,
-			  <&clks IMX6QDL_CLK_IPU1_DI0_PRE_SEL>,
-			  <&clks IMX6QDL_CLK_IPU2_DI0_PRE_SEL>;
-	assigned-clock-parents = <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>,
-				 <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>,
-				 <&clks IMX6QDL_CLK_PLL2_PFD2_396M>,
-				 <&clks IMX6QDL_CLK_PLL2_PFD2_396M>;
-};
-
 &ldb {
 	fsl,dual-channel;
 	status = "okay";
diff --git a/arch/arm/boot/dts/imx6q-bx50v3.dtsi b/arch/arm/boot/dts/imx6q-bx50v3.dtsi
index fa27dcdf06f1..1938b04199c4 100644
--- a/arch/arm/boot/dts/imx6q-bx50v3.dtsi
+++ b/arch/arm/boot/dts/imx6q-bx50v3.dtsi
@@ -377,3 +377,18 @@ pci_root: root@0,0 {
 		#interrupt-cells = <1>;
 	};
 };
+
+&clks {
+	assigned-clocks = <&clks IMX6QDL_CLK_LDB_DI0_SEL>,
+			  <&clks IMX6QDL_CLK_LDB_DI1_SEL>,
+			  <&clks IMX6QDL_CLK_IPU1_DI0_PRE_SEL>,
+			  <&clks IMX6QDL_CLK_IPU1_DI1_PRE_SEL>,
+			  <&clks IMX6QDL_CLK_IPU2_DI0_PRE_SEL>,
+			  <&clks IMX6QDL_CLK_IPU2_DI1_PRE_SEL>;
+	assigned-clock-parents = <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>,
+				 <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>,
+				 <&clks IMX6QDL_CLK_PLL2_PFD0_352M>,
+				 <&clks IMX6QDL_CLK_PLL2_PFD0_352M>,
+				 <&clks IMX6QDL_CLK_PLL2_PFD0_352M>,
+				 <&clks IMX6QDL_CLK_PLL2_PFD0_352M>;
+};
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
