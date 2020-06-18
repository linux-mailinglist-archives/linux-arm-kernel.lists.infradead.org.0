Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEAE1FEB5D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 08:16:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FDhBfQ/fbHfuRrT65naN5SZF2pDGifU7h6Sg3KkxF3M=; b=GanErQRGwYNUU/
	vAzG9EafP6aywxDuA8716YoRAvb35CTa9R6LaRQXiPVoV2CgOzu9uFPgvtx6jRvQwUGx66Iwk6It8
	5lR63UFV72l+Wgj8yejS3I6508z08d9MAfuZmU2O0oYxLW1dYjRFMIMY3VNf7pS3etx7R97m7geHf
	ZTZhyds4qdfYw1KfqmiKrZvH1vAxgD2AghU2DS1V0Jb7+SlHqlvQ4rALAy7hYlCh1rxO6vKkQMfur
	lgoLQkOWS2bc2lBJx2Eg4eQ1RZ0QqQJVQS6lKYIaMG5XRKs0BFXR/2OC+0JIB79e4VoO+teWbOY1r
	ZSE9IMlKe5PElXm27IaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlnqR-0000Ld-WF; Thu, 18 Jun 2020 06:16:16 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlnpI-0005ex-MK
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 06:15:08 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B50A71A0E59;
 Thu, 18 Jun 2020 08:15:01 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E402D1A0E46;
 Thu, 18 Jun 2020 08:14:57 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id E320D4030E;
 Thu, 18 Jun 2020 14:14:52 +0800 (SGT)
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/5] ARM: dts: imx6sx-sdb: Add MQS support
Date: Thu, 18 Jun 2020 14:03:46 +0800
Message-Id: <c0c53e3adce6715086e3c04e3799675c6d760546.1592460381.git.shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1592460381.git.shengjiu.wang@nxp.com>
References: <cover.1592460381.git.shengjiu.wang@nxp.com>
In-Reply-To: <cover.1592460381.git.shengjiu.wang@nxp.com>
References: <cover.1592460381.git.shengjiu.wang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_231505_040545_9AEE04B9 
X-CRM114-Status: GOOD (  11.97  )
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

Add MQS support. As the pin conflict with usdhc2, then need
to add a separate dts.

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 arch/arm/boot/dts/Makefile           |  1 +
 arch/arm/boot/dts/imx6sx-sdb-mqs.dts | 48 ++++++++++++++++++++++++++++
 arch/arm/boot/dts/imx6sx-sdb.dtsi    |  7 ++++
 arch/arm/boot/dts/imx6sx.dtsi        |  6 ++++
 4 files changed, 62 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6sx-sdb-mqs.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index e6a1cac0bfc7..04f85d6a2af3 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -592,6 +592,7 @@ dtb-$(CONFIG_SOC_IMX6SX) += \
 	imx6sx-sdb-reva.dtb \
 	imx6sx-sdb-sai.dtb \
 	imx6sx-sdb.dtb \
+	imx6sx-sdb-mqs.dtb \
 	imx6sx-softing-vining-2000.dtb \
 	imx6sx-udoo-neo-basic.dtb \
 	imx6sx-udoo-neo-extended.dtb \
diff --git a/arch/arm/boot/dts/imx6sx-sdb-mqs.dts b/arch/arm/boot/dts/imx6sx-sdb-mqs.dts
new file mode 100644
index 000000000000..a4ab2d3e960c
--- /dev/null
+++ b/arch/arm/boot/dts/imx6sx-sdb-mqs.dts
@@ -0,0 +1,48 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright (C) 2014 Freescale Semiconductor, Inc.
+
+#include "imx6sx-sdb.dts"
+/ {
+
+	sound {
+		status = "disabled";
+	};
+
+	sound-mqs {
+		compatible = "fsl,imx6sx-sdb-mqs",
+			     "fsl,imx-audio-mqs";
+		model = "mqs-audio";
+		audio-cpu = <&sai1>;
+		audio-asrc = <&asrc>;
+		audio-codec = <&mqs>;
+	};
+};
+
+&usdhc2 {
+	/* pin conflict with mqs*/
+	status = "disabled";
+};
+
+&mqs {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_mqs>;
+	clocks = <&clks IMX6SX_CLK_SAI1>;
+	clock-names = "mclk";
+	status = "okay";
+};
+
+&sai1 {
+	pinctrl-0 = <>;
+	status = "okay";
+};
+
+&ssi2 {
+	status = "disabled";
+};
+
+&sdma {
+	gpr = <&gpr>;
+	/* SDMA event remap for SAI1 */
+	fsl,sdma-event-remap = <0 15 1>, <0 16 1>;
+};
diff --git a/arch/arm/boot/dts/imx6sx-sdb.dtsi b/arch/arm/boot/dts/imx6sx-sdb.dtsi
index 3e5fb72f21fc..69a502b369c5 100644
--- a/arch/arm/boot/dts/imx6sx-sdb.dtsi
+++ b/arch/arm/boot/dts/imx6sx-sdb.dtsi
@@ -450,6 +450,13 @@
 			>;
 		};
 
+		pinctrl_mqs: mqsgrp {
+			fsl,pins = <
+				MX6SX_PAD_SD2_CLK__MQS_RIGHT 0x120b0
+				MX6SX_PAD_SD2_CMD__MQS_LEFT  0x120b0
+			>;
+		};
+
 		pinctrl_i2c1: i2c1grp {
 			fsl,pins = <
 				MX6SX_PAD_GPIO1_IO01__I2C1_SDA		0x4001b8b1
diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index 7d4856ffd239..8dc412b3862b 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -134,6 +134,12 @@
 		clock-output-names = "anaclk2";
 	};
 
+	mqs: mqs {
+		compatible = "fsl,imx6sx-mqs";
+		gpr = <&gpr>;
+		status = "disabled";
+	};
+
 	tempmon: tempmon {
 		compatible = "fsl,imx6sx-tempmon", "fsl,imx6q-tempmon";
 		interrupt-parent = <&gpc>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
