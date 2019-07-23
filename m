Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D72171448
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K5ZDKXniN7NgZalgCnbmDxugLa7sunH+kj9bOkKDfZc=; b=exDK8F5njoiXDu
	zaP5prlzGEkdwUGWKI1knCXwkq2HQJHmT7Rn3a/q750FLtZn+hy6/WMAfZceQvOYLQ2ct2CHwUVld
	SjBxdHVIOG5uxG0S9rmo+z1RVPlDEI3jx/gbsHS+/HZrk7jRQ6YHmEisvJMrkK86TIiHWSubWpRCk
	f9kenUhV7FzzOlfeopaqypMnIRHMzDEgR+5cUIi371bk9aolgsUt2YZLBlFouVuq2UVxQSO1shdP4
	EsVU8/U7bW3XVf4UTS1a7sJA2xQxiJiq+vy00R1KwM3ignQOK7D135sCe7z+fG8m5iY+oawkrzFFo
	cSdwbib1HEf1GmremBLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqPh-0000cY-Dc; Tue, 23 Jul 2019 08:44:49 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqPD-0000Qn-OA
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:44:21 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 54D64E000C;
 Tue, 23 Jul 2019 08:44:10 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Chen-Yu Tsai <wens@csie.org>,
	Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH 2/2] ARM: dts: sunxi: Fix the HDMI PHY name
Date: Tue, 23 Jul 2019 10:44:07 +0200
Message-Id: <20190723084407.4703-2-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190723084407.4703-1-maxime.ripard@bootlin.com>
References: <20190723084407.4703-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_014420_040553_6B493958 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Even though the binding mentions that the PHY name must be "phy", it turns
out that all our DTs had "hdmi-phy" instead.

The code doesn't care about the phy-names property, so we can just change
our DTs to match the binding, without any side effect.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 arch/arm/boot/dts/sun8i-a83t.dtsi             | 2 +-
 arch/arm/boot/dts/sun8i-r40.dtsi              | 2 +-
 arch/arm/boot/dts/sunxi-h3-h5.dtsi            | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
index 39748b4b0b8b..eac57623f234 100644
--- a/arch/arm/boot/dts/sun8i-a83t.dtsi
+++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
@@ -1036,7 +1036,7 @@
 			resets = <&ccu RST_BUS_HDMI1>;
 			reset-names = "ctrl";
 			phys = <&hdmi_phy>;
-			phy-names = "hdmi-phy";
+			phy-names = "phy";
 			pinctrl-names = "default";
 			pinctrl-0 = <&hdmi_pins>;
 			status = "disabled";
diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 5c8cc147fe24..f1be554b5894 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -809,7 +809,7 @@
 			resets = <&ccu RST_BUS_HDMI1>;
 			reset-names = "ctrl";
 			phys = <&hdmi_phy>;
-			phy-names = "hdmi-phy";
+			phy-names = "phy";
 			status = "disabled";
 
 			ports {
diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
index a7cd88fb4012..42ac027bfa48 100644
--- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
+++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
@@ -765,7 +765,7 @@
 			resets = <&ccu RST_BUS_HDMI1>;
 			reset-names = "ctrl";
 			phys = <&hdmi_phy>;
-			phy-names = "hdmi-phy";
+			phy-names = "phy";
 			status = "disabled";
 
 			ports {
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 60afacfe141d..aa9897f270ba 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -1015,7 +1015,7 @@
 			resets = <&ccu RST_BUS_HDMI1>;
 			reset-names = "ctrl";
 			phys = <&hdmi_phy>;
-			phy-names = "hdmi-phy";
+			phy-names = "phy";
 			status = "disabled";
 
 			ports {
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 0f571798fc95..35942bae0a34 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -504,7 +504,7 @@
 			resets = <&ccu RST_BUS_HDMI_SUB>, <&ccu RST_BUS_HDCP>;
 			reset-names = "ctrl", "hdcp";
 			phys = <&hdmi_phy>;
-			phy-names = "hdmi-phy";
+			phy-names = "phy";
 			pinctrl-names = "default";
 			pinctrl-0 = <&hdmi_pins>;
 			status = "disabled";
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
