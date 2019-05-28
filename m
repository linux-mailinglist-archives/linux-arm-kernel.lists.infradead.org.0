Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3EE32C228
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 11:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MWu/Q7Y4qGphFgW1VcIME2Ux1XwY1z6RmuWbhcV4Cms=; b=bZOGCSAhqRRJAx
	d4Iy6eyBPJ7mmbo8qvribq/PzCWWUd/Ebez/Jmxhjg63GOAMjp/KEW1qnIUITMCSVMGPi/tuYB+nA
	49Y+zggregNMPSx9fcIc71JmHLgBzqC9X/oCyk6rHBZ1Vsq2xchJ9ZGa/e/2wIdCcMHrVnwZfi59P
	7Zxm6f+fAoMq93pqUr52TC5Hu+V79XJLmR5FbCcvKoSRL8C68jzTgj64tY9I7PBBMA9nO8/zGWLtL
	H/sFDWl/cHaC+0BmtlpxjR/RL0Gj9qTVjuw+xTmT/yplt/iBf0kkt84VyDK+S1uvuGo+9JYjxv/xx
	TR1FuogPY1qivyDK639Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVY1W-0005vM-PT; Tue, 28 May 2019 09:03:58 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVY16-0005Zl-TW
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 09:03:36 +0000
Received: from localhost.localdomain
 (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr [90.88.147.134])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id BD25320002F;
 Tue, 28 May 2019 09:03:13 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] arm64: dts: marvell: armada-7040-db: Add USB current
 regulators
Date: Tue, 28 May 2019 11:03:10 +0200
Message-Id: <20190528090310.31774-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_020333_340597_48055046 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Antoine Tenart <antoine.tenart@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Armada 7040-db USB ports deliver 500mA by default while they
could deliver up to 900mA (usually, for USB3 devices).

The board embeds a GPIO controlled regulator on each port which can be
configured to deliver each amount of current.

Add a vin-supply property to the USB3 Vbus nodes for this purpose. The
regulator will be automatically 'enabled', ie. set to limit at 900mA
instead of 500mA.

Suggested-by: Alex Leibovich <alexl@marvell.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../arm64/boot/dts/marvell/armada-7040-db.dts | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-7040-db.dts b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
index d20d84ce7ca8..f34ee87a0f56 100644
--- a/arch/arm64/boot/dts/marvell/armada-7040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
@@ -28,6 +28,32 @@
 		ethernet2 = &cp0_eth2;
 	};
 
+	cp0_exp_usb3_0_current_regulator: gpio-regulator {
+		compatible = "regulator-gpio";
+		regulator-name = "cp0-usb3-0-current-regulator";
+		regulator-type = "current";
+		regulator-min-microamp = <500000>;
+		regulator-max-microamp = <900000>;
+		gpios = <&expander0 4 GPIO_ACTIVE_HIGH>;
+		states = <500000 0x0
+			  900000 0x1>;
+		enable-active-high;
+		gpios-states = <0>;
+	};
+
+	cp0_exp_usb3_1_current_regulator: gpio-regulator {
+		compatible = "regulator-gpio";
+		regulator-name = "cp0-usb3-1-current-regulator";
+		regulator-type = "current";
+		regulator-min-microamp = <500000>;
+		regulator-max-microamp = <900000>;
+		gpios = <&expander0 5 GPIO_ACTIVE_HIGH>;
+		states = <500000 0x0
+			  900000 0x1>;
+		enable-active-high;
+		gpios-states = <0>;
+	};
+
 	cp0_reg_usb3_0_vbus: cp0-usb3-0-vbus {
 		compatible = "regulator-fixed";
 		regulator-name = "usb3h0-vbus";
@@ -35,6 +61,7 @@
 		regulator-max-microvolt = <5000000>;
 		enable-active-high;
 		gpio = <&expander0 0 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&cp0_exp_usb3_0_current_regulator>;
 	};
 
 	cp0_reg_usb3_1_vbus: cp0-usb3-1-vbus {
@@ -44,6 +71,7 @@
 		regulator-max-microvolt = <5000000>;
 		enable-active-high;
 		gpio = <&expander0 1 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&cp0_exp_usb3_1_current_regulator>;
 	};
 
 	cp0_usb3_0_phy: cp0-usb3-0-phy {
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
