Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAB9631D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:22:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=z00unx+ySqC2Rr4ZzbFwX3za1MSIn4bX46M0bPZpIMQ=; b=WJKon5T/hMdLNTJL1JpJkIrVUC
	Bx5sFMd+LRIRFg1Kv81PS55QGMCL/Rc4f90lYNWyC7sZVLng8R819wXox7jschwmTMmOSIwLjWMKd
	9ds/rx9/SHmaOxythjYNZqy/9kpmm+EDsb78ZyrxHThkK0BCnr8NiuUi6rGLC5rGtoZoOp6pBt/1U
	meX9NEdo1BvWvsoj0m7p8wLJuTA2r7RyMFGJx6ILJGtPIaQn6C9Mq1HHjXz0lju4OmWz0xz3V2x28
	9X6I7iCgfWsWjbBbYGBKf9rL9nouI0w9bzyWkzkoh+ATA7DtUXPgZx3hd5M85CryrIHu+Kdhg2SOo
	L8CQW7OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkSF-0002Rs-1a; Tue, 09 Jul 2019 07:22:23 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkPZ-0007TH-8U
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:19:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1562656769; x=1565248769;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aDw5hzswtjO4S2Z52rF4tVaiyeGPvfY6gqilXLeQpJA=;
 b=O2r2OFQhSQAavReuIhL9NwrA07VvlouMsps+J6512YpcobsDTjAXntJ7WiZYpgdd
 2FntbANeXdx0m3aU+o1DF+K+t4CAQFRp7l+lERub/u+V7VPMFHNqun2pKpiKBFuo
 v0nlCy841IMxZooB2iedh84wGEHEcwFtcyXXgKY/KAM=;
X-AuditID: c39127d2-193ff70000001aee-08-5d2440018592
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 1D.B0.06894.100442D5;
 Tue,  9 Jul 2019 09:19:29 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019070909192926-309711 ;
 Tue, 9 Jul 2019 09:19:29 +0200 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH 08/10] ARM: dts: imx6ul: segin: Move ECSPI interface to board
 include file
Date: Tue, 9 Jul 2019 09:19:25 +0200
Message-Id: <1562656767-273566-9-git-send-email-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
References: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 09.07.2019 09:19:29,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 09.07.2019 09:19:29, Serialize complete at 09.07.2019 09:19:29
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrPLMWRmVeSWpSXmKPExsWyRoCBS5fRQSXW4NUBHYv5R86xWjy86m+x
 aupOFotNj6+xWnT9WslscXnXHDaLpdcvMlk8uNjFYtG69wi7xd/tm1gsXmwRd+D2WDNvDaPH
 jrtLGD12zrrL7rFpVSebx+Yl9R4b3+1g8uj/a+DxeZNcAEcUl01Kak5mWWqRvl0CV8bEZ0dZ
 Cr4KVGz9cp61gbGHr4uRk0NCwETi0PRm1i5GLg4hgR2MEt2nL7BAOBcYJY4ubWUGqWITMJJY
 MK2RCcQWEYiUeLf9NztIEbPAHkaJadevM4IkhAWiJH4e/8YCYrMIqEi8mHQQyObg4BXwkLi2
 jwdim5zEzXOdYDM5BTwljl78BWYLAZVcXjANbLGEQCOTxLXXWxghGoQkTi8+yzyBkW8BI8Mq
 RqHczOTs1KLMbL2CjMqS1GS9lNRNjMBAPTxR/dIOxr45HocYmTgYDzFKcDArifDuc1eOFeJN
 SaysSi3Kjy8qzUktPsQozcGiJM67gbckTEggPbEkNTs1tSC1CCbLxMEp1cBYdHyvxSH2s/+j
 tdX8drN6Byy5/0939ZYp5444zX4kJjjx6sMV1UzM/Aa1D1Q2TAmfo7f14t4/xwSTWBmLrpxJ
 nyT062jrim/BTyrPliU1lh67tb/Zy+bYoTfKaZE/JnckvZm/XsGw9Q7f10fCUw2m9sV83/9z
 dtu2/Kchftb6LJ+Kbjitfc9yR4mlOCPRUIu5qDgRAK9K5zVCAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_001937_706704_F225B6F9 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: devicetree@vger.kernel.org, martyn.welch@collabora.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ECSPI interface is available on the expansion connector of every
PHYTEC phyBOARD-Segin. Move its definition to the board include file
for better reuse.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts | 14 --------------
 arch/arm/boot/dts/imx6ul-phytec-segin.dtsi            | 16 ++++++++++++++++
 2 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
index c6ef13685a7c..32d90c67a6f2 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
@@ -28,9 +28,6 @@
 };
 
 &ecspi3 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_ecspi3>;
-	cs-gpios = <&gpio1 20 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
 
@@ -93,14 +90,3 @@
 &usdhc1 {
 	status = "okay";
 };
-
-&iomuxc {
-	pinctrl_ecspi3: ecspi3grp {
-		fsl,pins = <
-			MX6UL_PAD_UART2_RTS_B__ECSPI3_MISO	0x10b0
-			MX6UL_PAD_UART2_CTS_B__ECSPI3_MOSI	0x10b0
-			MX6UL_PAD_UART2_RX_DATA__ECSPI3_SCLK	0x10b0
-			MX6UL_PAD_UART2_TX_DATA__GPIO1_IO20	0x10b0
-		>;
-	};
-};
diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi b/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
index 7cd24ec40c36..8d5f8dc6ad58 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
@@ -103,6 +103,13 @@
 	assigned-clock-rates = <786432000>;
 };
 
+&ecspi3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi3>;
+	cs-gpios = <&gpio1 20 GPIO_ACTIVE_HIGH>;
+	status = "disabled";
+};
+
 &fec2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet2>;
@@ -225,6 +232,15 @@
 		>;
 	};
 
+	pinctrl_ecspi3: ecspi3grp {
+		fsl,pins = <
+			MX6UL_PAD_UART2_RTS_B__ECSPI3_MISO	0x10b0
+			MX6UL_PAD_UART2_CTS_B__ECSPI3_MOSI	0x10b0
+			MX6UL_PAD_UART2_RX_DATA__ECSPI3_SCLK	0x10b0
+			MX6UL_PAD_UART2_TX_DATA__GPIO1_IO20	0x10b0
+		>;
+	};
+
 	pinctrl_enet2: enet2grp {
 		fsl,pins = <
 			MX6UL_PAD_ENET2_RX_EN__ENET2_RX_EN	0x1b0b0
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
