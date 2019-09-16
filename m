Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22955B3879
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 12:44:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=91KjWZ0WlV5cXidrIzltihqJJ2nUxFowBWdWNu/50RU=; b=OB0T9wEqyYukFo
	iNTx9Q0H10ODuLzKM5Yz2Nq2qcJovH4KGiXnzMDZr9xFH4YvWn8VpH4WUqcN9i9FwPYVzPf13MKmF
	7fU47AiqU4+Cq42FyGXci3o7BQIU2iAl4Jq42gEBv0thc4xO9epH4xITU7vfw6A01ZhYlNzGbd52V
	9FZV/IcM8LSatUcHCr5Ku0ijIs0nQ7DPQP6QlzBsG3RKyOjxpwMO/qAEgITsaJUUhZhDB7LdZEeZf
	KU3hdPDJjK0bQ4o4+KGNg1OBrsa8QFbNeAOPwrjx2Cu+1gkKWwM8psK+dz/Jy6TH1M1BdYlCXCmM7
	jlliPhCObH2NyUaU5Cog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9oUh-0000XQ-Vu; Mon, 16 Sep 2019 10:44:32 +0000
Received: from mail.savoirfairelinux.com ([208.88.110.44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9oUR-0000WQ-V8
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 10:44:17 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id 1A7B69C017D;
 Mon, 16 Sep 2019 06:44:12 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id kFmGDLlrphLV; Mon, 16 Sep 2019 06:44:10 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id DB5AE9C028F;
 Mon, 16 Sep 2019 06:44:10 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id KKf5wO2X-a9a; Mon, 16 Sep 2019 06:44:10 -0400 (EDT)
Received: from gdo-sfl-laptop.home (lfbn-1-1474-163.w86-253.abo.wanadoo.fr
 [86.253.99.163])
 by mail.savoirfairelinux.com (Postfix) with ESMTPSA id 493AA9C017D;
 Mon, 16 Sep 2019 06:44:09 -0400 (EDT)
From: Gilles DOFFE <gilles.doffe@savoirfairelinux.com>
To: devicetree@vger.kernel.org
Subject: [PATCH v3] ARM: dts: imx6qdl-rex: add gpio expander pca9535
Date: Mon, 16 Sep 2019 12:43:53 +0200
Message-Id: <20190916104353.7278-1-gilles.doffe@savoirfairelinux.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_034416_070843_02368190 
X-CRM114-Status: UNSURE (   8.60  )
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
index 97f1659144ea..8a748ca1b108 100644
--- a/arch/arm/boot/dts/imx6qdl-rex.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-rex.dtsi
@@ -132,6 +132,19 @@
 	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
 
+	pca9535: gpio8@27 {
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
