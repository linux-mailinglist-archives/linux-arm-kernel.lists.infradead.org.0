Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE2A1FEB5E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 08:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grBpIIxRogeYcfbAPuBk8Brkm3S7eyA20h/JcR2AIhc=; b=eshSGhZ2Q6Pp1v
	h6ZWfefeZaoY3PCaTcSgOjg5fXrg7dw0gwa/A4gmIYz9GsogKUh+WfZZFm2xBYVmNzPGeL5Os1NSK
	qD8jbxn4levTWTfFwFT8MXRuD9sFXqzx8SLwgX7kp/ceKn2pj2fmR1/9uH3TdkjHT4ojaEMCfd+z+
	Y7YolMIlnND87vdnbk7opht0RE+H7rxmpOqGMfZ8xBQZjLwrTxs5Y7KbRUid1LBcXBjGam0A3SRfh
	hlKIvPwIA149GG9MTz+iYJeMhb//fAuCF2caNSZNWNgvJfLNPhbJt6Mzk5ZGQ/v9NEyGxGKvFB7RJ
	arR8g2E4zUWteLTZpmww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlnqh-0000bW-Cq; Thu, 18 Jun 2020 06:16:31 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlnpI-0005jl-Kh
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 06:15:08 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 576C51A0E58;
 Thu, 18 Jun 2020 08:15:03 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7ED171A0E44;
 Thu, 18 Jun 2020 08:14:59 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id CB493402CF;
 Thu, 18 Jun 2020 14:14:54 +0800 (SGT)
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/5] ARM: dts: imx6sx-sabreauto: Add SPDIF support
Date: Thu, 18 Jun 2020 14:03:48 +0800
Message-Id: <11b9a66f521aade999731477282de99cbbf6b0ad.1592460381.git.shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1592460381.git.shengjiu.wang@nxp.com>
References: <cover.1592460381.git.shengjiu.wang@nxp.com>
In-Reply-To: <cover.1592460381.git.shengjiu.wang@nxp.com>
References: <cover.1592460381.git.shengjiu.wang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_231505_006584_12FEA397 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add SPDIF support.

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 arch/arm/boot/dts/imx6sx-sabreauto.dts | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/boot/dts/imx6sx-sabreauto.dts b/arch/arm/boot/dts/imx6sx-sabreauto.dts
index 825924448ab4..772b8ac5d637 100644
--- a/arch/arm/boot/dts/imx6sx-sabreauto.dts
+++ b/arch/arm/boot/dts/imx6sx-sabreauto.dts
@@ -66,6 +66,13 @@
 		enable-active-high;
 		vin-supply = <&reg_can_en>;
 	};
+
+	sound-spdif {
+		compatible = "fsl,imx-audio-spdif";
+		model = "imx-spdif";
+		spdif-controller = <&spdif>;
+		spdif-in;
+	};
 };
 
 &anaclk2 {
@@ -227,6 +234,12 @@
 		>;
 	};
 
+	pinctrl_spdif: spdifgrp {
+		fsl,pins = <
+			MX6SX_PAD_ENET2_COL__SPDIF_IN           0x1b0b0
+		>;
+	};
+
 	pinctrl_uart1: uart1grp {
 		fsl,pins = <
 			MX6SX_PAD_GPIO1_IO04__UART1_DCE_TX		0x1b0b1
@@ -454,6 +467,14 @@
 	};
 };
 
+&spdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_spdif>;
+	assigned-clocks = <&clks IMX6SX_CLK_SPDIF_PODF>;
+	assigned-clock-rates = <24576000>;
+	status = "okay";
+};
+
 &wdog1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_wdog>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
