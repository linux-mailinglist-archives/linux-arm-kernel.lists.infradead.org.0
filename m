Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F26A8FE6E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 10:45:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5L8txtf3E+Ww1myF781rzOawdy+tiSPEyu0KuVXy7IA=; b=PNauf1Ca3O+CQM
	7FqiEzZOyGDaZ+5r4INRRgqB2LztHJ/9cCybUGb84o09qUSlqZfkBe8MUcL6LiqqY4ottFGbIlzTE
	SuVKGPghsgePlnIfG4KD0O5rmVF+5+Jw75UXmicXBjafIMNcdnNofR6S4Kq3ZowqXCiuizB2rWP1E
	QB/VQkCP5mecdab23MyeWIYEXfci93hfBQQ1miodVy8RWLiqPcM59N6YDuXjhiwyu86tMU4x4G3qA
	WsYlk+9bkx9AZPp2YHy9CFN1YwyKw0+NpXnta+FztGYNm5Xk0ICuADHuAw8XAAeUhZQvUPuS6K40Y
	MV8vrX8TNJ4IcNeoyTUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyXr8-0002D3-7r; Fri, 16 Aug 2019 08:45:06 +0000
Received: from letterbox.kde.org ([46.43.1.242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyXqP-0001mk-24
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 08:44:23 +0000
Received: from archbox.localdomain (unknown [203.187.238.17])
 (Authenticated sender: bshah)
 by letterbox.kde.org (Postfix) with ESMTPSA id 44D8E2809BC;
 Fri, 16 Aug 2019 09:44:19 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kde.org; s=users;
 t=1565945059; bh=sAbIIO25DFg96Y7To2es2ueSVMDPNv0p6SZWhrXB2FI=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=Br0y0a6vew+9OIPXxe4HVf75OTvlvAQOWBlv42czZM1VT8G9CTdhCSFc+ETQDTXmj
 E12KzdzF72kObah17DUTIyOg0wOVn6fB9O/Qe4wnpwtbhdw5CxqSIuN3/S9UfbMimj
 KQpRQ1cfGw5oR2ESsu+KDTGm5DJWB+qO+uo+De3f7nope/OHfT7Yjwn8KY3KzLfBwH
 vrXN8Y5SQQG7g19be6ybba2QIqSNWfnfdMJJviQrWOSQt+cxRa0MnDZ9qZiExrq1uG
 1C+A6Y0ltffihQ3iRhDPUXbZAFM4tgNIZEEqG7hMRRxeeW/g29VcL8e0drtr85R2j4
 iJ9IWE/XVY4VQ==
From: Bhushan Shah <bshah@kde.org>
To: Icenowy Zheng <icenowy@aosc.io>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Wolfram Sang <wsa@the-dreams.de>, Bhushan Shah <bshah@kde.org>,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/2] arm64: allwinner: h6: add I2C nodes
Date: Fri, 16 Aug 2019 14:13:09 +0530
Message-Id: <20190816084309.27440-3-bshah@kde.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190816084309.27440-1-bshah@kde.org>
References: <20190816064710.18280-1-bshah@kde.org>
 <20190816084309.27440-1-bshah@kde.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_014421_385547_AA6822AC 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.43.1.242 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add device-tree nodes for i2c0 to i2c2, and also add relevant pinctrl
nodes.

Suggested-by: Icenowy Zheng <icenowy@aosc.io>
Signed-off-by: Bhushan Shah <bshah@kde.org>
---
Changes in v3:
  - fix compatible for the i2c
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 60 +++++++++++++++++++-
 1 file changed, 59 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index db71807255ef..5dc174715311 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -332,6 +332,21 @@
 				function = "hdmi";
 			};
 
+			i2c0_pins: i2c0-pins {
+				pins = "PD25", "PD26";
+				function = "i2c0";
+			};
+
+			i2c1_pins: i2c1-pins {
+				pins = "PH5", "PH6";
+				function = "i2c1";
+			};
+
+			i2c2_pins: i2c2-pins {
+				pins = "PD23", "PD24";
+				function = "i2c2";
+			};
+
 			mmc0_pins: mmc0-pins {
 				pins = "PF0", "PF1", "PF2", "PF3",
 				       "PF4", "PF5";
@@ -467,6 +482,48 @@
 			status = "disabled";
 		};
 
+		i2c0: i2c@5002000 {
+			compatible = "allwinner,sun50i-h6-i2c",
+				     "allwinner,sun6i-a31-i2c";
+			reg = <0x05002000 0x400>;
+			interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_I2C0>;
+			resets = <&ccu RST_BUS_I2C0>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&i2c0_pins>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c1: i2c@5002400 {
+			compatible = "allwinner,sun50i-h6-i2c",
+				     "allwinner,sun6i-a31-i2c";
+			reg = <0x05002400 0x400>;
+			interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_I2C1>;
+			resets = <&ccu RST_BUS_I2C1>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&i2c1_pins>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c2: i2c@5002800 {
+			compatible = "allwinner,sun50i-h6-i2c",
+				     "allwinner,sun6i-a31-i2c";
+			reg = <0x05002800 0x400>;
+			interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_I2C2>;
+			resets = <&ccu RST_BUS_I2C2>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&i2c2_pins>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
 		emac: ethernet@5020000 {
 			compatible = "allwinner,sun50i-h6-emac",
 				     "allwinner,sun50i-a64-emac";
@@ -798,7 +855,8 @@
 		};
 
 		r_i2c: i2c@7081400 {
-			compatible = "allwinner,sun6i-a31-i2c";
+			compatible = "allwinner,sun50i-h6-i2c",
+				     "allwinner,sun6i-a31-i2c";
 			reg = <0x07081400 0x400>;
 			interrupts = <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&r_ccu CLK_R_APB2_I2C>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
