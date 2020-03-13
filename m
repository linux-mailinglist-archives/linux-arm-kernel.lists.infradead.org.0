Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9563C1844D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 11:26:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6dAtzURs55Sx1B+FU7KjakRH0ZXGyONEpcuabOzelVQ=; b=X2gmIpd3O3zEfz
	jeyd7vVE7lMHyEWKZH9JPjv/5Y040zr/bgGi1IIn85LWa8WznzUoeDVfgXxaOQ7HzTsQ7duXI4lcq
	/xiMAOWDgKBUhzYBS/a/7KKVEln85MGpfMS8A9FVG3961VeVm16ffkE3xsVrmGbqTA1g3laOUzY5B
	KDOoS26oGv8x5pPy8TbkVkqr5W2TBJNKZUygKzTaE4jqul8wiVFvrzaeNZTSr0Lln0bF4m9hd9fVP
	HOsUAdonfvnJ35Zf8JdDXH778Dj8uz4IFJlVpSu8S1mFJOMYDEWQFI8awZ5hRMYvCgTvlTcJjgyqb
	IOdEThISYefhLq3i0RGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jChWM-00018h-Bl; Fri, 13 Mar 2020 10:26:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jChVk-0000V8-FN
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 10:25:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jChVg-0006o9-Mf; Fri, 13 Mar 2020 11:25:44 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jChVg-0001R9-BL; Fri, 13 Mar 2020 11:25:44 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v3 2/2] ARM: dts: imx6q-marsboard: properly define rgmii PHY
Date: Fri, 13 Mar 2020 11:25:34 +0100
Message-Id: <20200313102534.5438-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313102534.5438-1-o.rempel@pengutronix.de>
References: <20200313102534.5438-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_032548_507592_444B2CFB 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Oleksij Rempel <o.rempel@pengutronix.de>, Mark Brown <broonie@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Russell King <linux@armlinux.org.uk>, Fabio Estevam <festevam@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Atheros AR8035 PHY can be autodetected but can't use interrupt
support provided on this board. Define MDIO bus and the PHY node to make
it work properly.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boot/dts/imx6q-marsboard.dts | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6q-marsboard.dts b/arch/arm/boot/dts/imx6q-marsboard.dts
index 84b30bd6908f..05ee28388229 100644
--- a/arch/arm/boot/dts/imx6q-marsboard.dts
+++ b/arch/arm/boot/dts/imx6q-marsboard.dts
@@ -111,8 +111,22 @@ &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rgmii-id";
-	phy-reset-gpios = <&gpio3 31 GPIO_ACTIVE_LOW>;
+	phy-handle = <&rgmii_phy>;
 	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		/* Atheros AR8035 PHY */
+		rgmii_phy: ethernet-phy@4 {
+			reg = <4>;
+			interrupts-extended = <&gpio1 28 IRQ_TYPE_LEVEL_LOW>;
+			reset-gpios = <&gpio3 31 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <1000>;
+		};
+	};
 };
 
 &hdmi {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
