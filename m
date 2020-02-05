Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 059C5153312
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 15:33:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=heYNaQipOar/kRtSXzEQ+36WTClTGaUnikggVRMJ6mo=; b=ukbdV6P9f9eys4rCkuecRe9UU9
	8bC1XDoinrlLvP661HLB7/+TEdMp5V9R8bz7iP1PvwmhT6ER8yyjQvmvymPYUh0Bv+TNIdXtKRZAh
	zjlV2BQgtSmiCnmOrvaDhvBVA4hTXhWfgGm7h7qoha8Wt21KRM9tpZMsy2F1yuZ/sr+rlM9Iw/oty
	wZjczBSgiiwWAv1HVg8+56nQ8SkA/Qj6Vs8AVvs9eYBHpodZJXWXm88ml08l47VVG19V7m41Wck+E
	iUQsQ1hYyh3QYx6WWs2cMJhq4v6QIxmJkHMfGmq3MRck4WdSdX7AOD7YBOxhKTx4pdo6p5YHrfA3i
	je5VP+bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izLjZ-00014N-IX; Wed, 05 Feb 2020 14:32:53 +0000
Received: from comms.puri.sm ([159.203.221.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izLiF-0008MN-0M
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 14:31:32 +0000
Received: from localhost (localhost [127.0.0.1])
 by comms.puri.sm (Postfix) with ESMTP id 999CBE049D;
 Wed,  5 Feb 2020 06:31:00 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
 by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8X0Ugy737Zw9; Wed,  5 Feb 2020 06:30:59 -0800 (PST)
From: Martin Kepplinger <martin.kepplinger@puri.sm>
To: robh@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com
Subject: [PATCH v1 03/12] arm64: dts: librem5-devkit: allow modem to wake the
 system from suspend
Date: Wed,  5 Feb 2020 15:29:54 +0100
Message-Id: <20200205143003.28408-4-martin.kepplinger@puri.sm>
In-Reply-To: <20200205143003.28408-1-martin.kepplinger@puri.sm>
References: <20200205143003.28408-1-martin.kepplinger@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_063131_091674_86FB0F53 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [159.203.221.185 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, kernel@puri.sm, Anson.Huang@nxp.com,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Angus Ainslie (Purism)" <angus@akkea.ca>

Connect the WoWWAN signal to a gpio key to wake up the system from suspend.

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
---
 .../dts/freescale/imx8mq-librem5-devkit.dts   | 27 +++++++++++++++----
 1 file changed, 22 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index 8162576e8f3d..ac6ba227e1da 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -33,7 +33,7 @@
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_gpio_keys>;
+		pinctrl-0 = <&pinctrl_gpio_keys>, <&pinctrl_wwan_in>;
 
 		btn1 {
 			label = "VOL_UP";
@@ -55,6 +55,15 @@
 			wakeup-source;
 			linux,code = <KEY_HP>;
 		};
+
+		wwan_wake {
+			label = "WWAN_WAKE";
+			gpios = <&gpio3 8 GPIO_ACTIVE_LOW>;
+			interrupt-parent = <&gpio3>;
+			interrupts = <8 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+			linux,code = <KEY_PHONE>;
+		};
 	};
 
 	leds {
@@ -767,11 +776,19 @@
 		>;
 	};
 
-	pinctrl_wwan: wwangrp {
+	pinctrl_wwan_in: wwaningrp {
+		fsl,pins = <
+		/* nWoWWAN */
+		MX8MQ_IOMUXC_NAND_DATA02_GPIO3_IO8	0x80
+		>;
+	};
+
+	pinctrl_wwan_out: wwanoutgrp {
 		fsl,pins = <
-			MX8MQ_IOMUXC_NAND_CE3_B_GPIO3_IO4	0x09 /* nWWAN_DISABLE */
-			MX8MQ_IOMUXC_NAND_DATA02_GPIO3_IO8	0x80 /* nWoWWAN */
-			MX8MQ_IOMUXC_NAND_DATA03_GPIO3_IO9	0x19 /* WWAN_RESET */
+		/* nWWAN_DISABLE */
+		MX8MQ_IOMUXC_NAND_CE3_B_GPIO3_IO4	0x09
+		/* WWAN_RESET */
+		MX8MQ_IOMUXC_NAND_DATA03_GPIO3_IO9	0x19
 		>;
 	};
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
