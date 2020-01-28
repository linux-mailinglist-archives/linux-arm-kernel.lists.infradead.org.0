Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 475A714C2B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 23:14:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fK3tDIliVJWxeO7aR8D6Lqf0aq83OEHRvVEYysVtZaU=; b=iUJ
	LDRTGY0ReP/rAqIN4On8YwcXZBYs38tmUP8hREmTB1+V7VKh6lb1TT9FVUVW3RdcXR2tST9t1fbu7
	4T7athO0he7hwK+9OCHnIiXywMaTU7aINABUr7qLmfPPrnClEhJTeMzjBwl7G4eub4o5QkN3WU/sV
	9kN8oZE0MICWWPwQNUi9/mwaOOH1OHp8+ecNQIBhymiKct9/VxGm2AVwR3vp5Z1++QMHOZG+OK+0G
	ndyn1XIPqUedNDIJvieXaIrz9M9GbJCuKLIsWnqunkRS7ClmV9K5bcy3eNQnSHNi8ZbGSooWC4wlv
	lKCAzo0WTUMuX545a7Z8yLEf7/vx+rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwZ7Z-0000ya-OV; Tue, 28 Jan 2020 22:14:09 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwZ7Q-0000xs-1n
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 22:14:01 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=rjones.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <rjones@gateworks.com>)
 id 1iwZ7X-0005iY-UE; Tue, 28 Jan 2020 22:14:08 +0000
From: Robert Jones <rjones@gateworks.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH] ARM: dts: imx: imx6qdl-gw553x.dtsi: add lsm9ds1 iio imu/magn
 support
Date: Tue, 28 Jan 2020 14:13:26 -0800
Message-Id: <20200128221326.11393-1-rjones@gateworks.com>
X-Mailer: git-send-email 2.9.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_141400_179526_C74DFB0D 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Robert Jones <rjones@gateworks.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add one node for the accel/gyro i2c device and another for the separate
magnetometer device in the lsm9ds1.

Signed-off-by: Robert Jones <rjones@gateworks.com>
---
 arch/arm/boot/dts/imx6qdl-gw553x.dtsi | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-gw553x.dtsi b/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
index a106689..305b2f0 100644
--- a/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
@@ -173,6 +173,25 @@
 	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
 
+	lsm9ds1_m@1c {
+		compatible = "st,lsm9ds1-magn";
+		reg = <0x1c>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_mag>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <2 IRQ_TYPE_EDGE_RISING>;
+	};
+
+	lsm9ds1_ag@6a {
+		compatible = "st,lsm9ds1-imu";
+		reg = <0x6a>;
+		st,drdy-int-pin = <1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_acc_gyro>;
+		interrupt-parent = <&gpio7>;
+		interrupts = <13 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
 	ltc3676: pmic@3c {
 		compatible = "lltc,ltc3676";
 		reg = <0x3c>;
@@ -462,6 +481,18 @@
 		>;
 	};
 
+	pinctrl_mag: maggrp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b0
+		>;
+	};
+
+	pinctrl_acc_gyro: acc_gyrogrp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_18__GPIO7_IO13		0x1b0b0
+		>;
+	};
+
 	pinctrl_pps: ppsgrp {
 		fsl,pins = <
 			MX6QDL_PAD_ENET_RXD1__GPIO1_IO26	0x1b0b1
-- 
2.9.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
