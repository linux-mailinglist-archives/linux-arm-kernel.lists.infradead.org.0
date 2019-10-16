Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7973D8C72
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 11:23:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lkSOjjc1p47LxRSIfr1YjccgKIdYjlIemPmAtVQzgSc=; b=AV2lfKfVHCUNCn
	e5m0u1eifgnGsLXPN4Gl4w+W6GGHcUhnHvc5o5v9NONHq+faL9VVc/Lcj+u6zPp1w44dgOnvfFmKI
	x9wd5o6H+ND47qLCfYLJwc5IC17b4ytOlDJFWa+tKt7AkqMrjRyJ0+kn55RFPkSNwt32culmUKr95
	a//WNRbHTnJRQTrgfkLbFwIrFO+dqvG5aI3pT/k3KVmqWXkvv+VwUDGtrD91dnSB3BdBtroM3wUIU
	iuLZYtlbUEoGPuSlJW2dGBz0uEuwOmgtJhSEGjaaiDeKAERsWj4nTSjA2XCootHFSdhaiIRyUp1s7
	Bjno+zmoMYJdsWB36vAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKfWV-0001zv-SL; Wed, 16 Oct 2019 09:23:15 +0000
Received: from mail.savoirfairelinux.com ([208.88.110.44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKfWN-0001zL-EX
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 09:23:08 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id BAB1A9C02F3;
 Wed, 16 Oct 2019 05:23:06 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id KxQAsgQNqEKS; Wed, 16 Oct 2019 05:23:05 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id 8348F9C03A3;
 Wed, 16 Oct 2019 05:23:05 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 0pumkyatRjoz; Wed, 16 Oct 2019 05:23:05 -0400 (EDT)
Received: from gdo-sfl-laptop.home (lfbn-1-7821-217.w92-167.abo.wanadoo.fr
 [92.167.224.217])
 by mail.savoirfairelinux.com (Postfix) with ESMTPSA id F31FA9C02F3;
 Wed, 16 Oct 2019 05:23:03 -0400 (EDT)
From: Gilles DOFFE <gilles.doffe@savoirfairelinux.com>
To: devicetree@vger.kernel.org
Subject: [PATCH v4] ARM: dts: imx6qdl-rex: add gpio expander pca9535
Date: Wed, 16 Oct 2019 11:22:55 +0200
Message-Id: <20191016092255.19223-1-gilles.doffe@savoirfairelinux.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_022307_554739_B318AF4D 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [208.88.110.44 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, rennes@savoirfairelinux.com,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 jerome.oufella@savoirfairelinux.com, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pca9535 gpio expander is present on the Rex baseboard, but missing
from the dtsi.
The pca9535 is on i2c2 bus which is common to the three SOM
variants (Basic/Pro/Ultra), thus it is activated by default.

Add also the new gpio controller and the associated interrupt line
MX6QDL_PAD_NANDF_CS3__GPIO6_IO16.

Signed-off-by: Gilles DOFFE <gilles.doffe@savoirfairelinux.com>
---
 arch/arm/boot/dts/imx6qdl-rex.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-rex.dtsi b/arch/arm/boot/dts/imx6qdl-rex.dtsi
index 97f1659144ea..305b57fadc60 100644
--- a/arch/arm/boot/dts/imx6qdl-rex.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-rex.dtsi
@@ -132,6 +132,19 @@
 	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
 
+	pca9535: gpio-expander@27 {
+		compatible = "nxp,pca9535";
+		reg = <0x27>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pca9535>;
+		interrupt-parent = <&gpio6>;
+		interrupts = <16 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+	};
+
 	eeprom@57 {
 		compatible = "atmel,24c02";
 		reg = <0x57>;
@@ -237,6 +250,12 @@
 			>;
 		};
 
+		pinctrl_pca9535: pca9535 {
+			fsl,pins = <
+				MX6QDL_PAD_NANDF_CS3__GPIO6_IO16	0x17059
+		   >;
+		};
+
 		pinctrl_uart1: uart1grp {
 			fsl,pins = <
 				MX6QDL_PAD_CSI0_DAT10__UART1_TX_DATA	0x1b0b1
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
