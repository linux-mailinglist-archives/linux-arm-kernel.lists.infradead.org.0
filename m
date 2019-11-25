Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE0E10929D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 18:06:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JhiHOrAd5LR3pcr85u6jBPDvDFMVPV4wOUVdHqgW5/I=; b=aGCusEgIJFckVy
	EVB2YfmTIpAi9k7wzppi0NLM/8OHoDteZH3TbVlbUaDk53ZiSrM0hgXBPjS0IQ7IIM57CSDd/TMVN
	SsAI1au+EQHxpXvhIMQiZluaCiED5Pnjv51Lbt6WhpJoOe7eafXSmr0xRb5iBVjm4XZQeE6YTPodE
	B269IpbfOoJnN+YBxjypv1saUVy8UAMqe9EVR7BMtLO3sBeS9VdhH5msevxhzDYZlsayRTebRCpKm
	NbOr6oNusRKwM0h5/JAjYDgoFXFKSJ3vk3xKWnzgvKaqdz7eaZTQSlxzoBzOk4zCOLQiSu0S/wWzX
	2JK9cou14OjDSJpZe5nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZHor-00046P-8e; Mon, 25 Nov 2019 17:06:37 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZHo1-0003W7-U4
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 17:05:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574701543;
 s=strato-dkim-0002; d=gerhold.net;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=53qG48IklGrDeQf7pc+hhg5H/dz6HcMn6cl+jKa+Pn8=;
 b=RKUbQWAbg2JFurjk+QDKMoGu7iusTeUii4BqMD/cyT/CEpVIRgkJbE9Mtzp1XwWTqX
 8+LLQtqs+5kTtacVxMnq5tRW623Nj4fdyeGJ0f+PmOLUXI/Nl9rdNd54xeROmmrEMt4M
 1Z6bXQe5jwVDo/BORPfGWE1fJoYPqCNaEYDD8y2j2xfN/tG6x6Ejv2znOUiFHWZqrpBq
 /1qF2Z9CgrVYrjjW2bhpINvGIFWLfgHQY1/HOUPzJ56Z4ZreDz6w7M+PjFF4kUS95X9u
 jsrn/yDVKp3lukYoelj8mecvvwAqqAu/glCWnG1DdAi86Fxzues/MGsAJJrRO4tJ+VYz
 5TIg==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQr4OGUPX+1NmWArOmLo="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 45.0.2 DYNA|AUTH)
 with ESMTPSA id 304194vAPH5b2r6
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Mon, 25 Nov 2019 18:05:37 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 1/4] ARM: dts: ux500: Disable I2C/SPI buses by default
Date: Mon, 25 Nov 2019 18:04:25 +0100
Message-Id: <20191125170428.76069-1-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_090546_115171_161D9CAE 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:5 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

At the moment, all 5 I2C and 6 SPI buses are probed and exposed
to user-space by default - even if they are not muxed to any pins
on the board. This means that user-space sees an I2C/SPI bus that
cannot be actually used properly.

In some cases this was used to put the corresponding pins into
a low power sleep mode - but even then the pins first need to be
configured by the board-specific device tree part.

Avoid exposing unconfigured devices to user-space by disabling
the I2C/SPI buses by default. Enable them in the board device trees
when needed.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm/boot/dts/ste-dbx5x0.dtsi     | 22 ++++++++++++++++++++++
 arch/arm/boot/dts/ste-href.dtsi       |  4 ++++
 arch/arm/boot/dts/ste-hrefprev60.dtsi |  1 +
 arch/arm/boot/dts/ste-snowball.dts    |  5 +++++
 4 files changed, 32 insertions(+)

diff --git a/arch/arm/boot/dts/ste-dbx5x0.dtsi b/arch/arm/boot/dts/ste-dbx5x0.dtsi
index a53657b83288..899368aa6ff7 100644
--- a/arch/arm/boot/dts/ste-dbx5x0.dtsi
+++ b/arch/arm/boot/dts/ste-dbx5x0.dtsi
@@ -646,6 +646,8 @@
 			clocks = <&prcc_kclk 3 3>, <&prcc_pclk 3 3>;
 			clock-names = "i2cclk", "apb_pclk";
 			power-domains = <&pm_domains DOMAIN_VAPE>;
+
+			status = "disabled";
 		};
 
 		i2c@80122000 {
@@ -662,6 +664,8 @@
 			clocks = <&prcc_kclk 1 2>, <&prcc_pclk 1 2>;
 			clock-names = "i2cclk", "apb_pclk";
 			power-domains = <&pm_domains DOMAIN_VAPE>;
+
+			status = "disabled";
 		};
 
 		i2c@80128000 {
@@ -678,6 +682,8 @@
 			clocks = <&prcc_kclk 1 6>, <&prcc_pclk 1 6>;
 			clock-names = "i2cclk", "apb_pclk";
 			power-domains = <&pm_domains DOMAIN_VAPE>;
+
+			status = "disabled";
 		};
 
 		i2c@80110000 {
@@ -694,6 +700,8 @@
 			clocks = <&prcc_kclk 2 0>, <&prcc_pclk 2 0>;
 			clock-names = "i2cclk", "apb_pclk";
 			power-domains = <&pm_domains DOMAIN_VAPE>;
+
+			status = "disabled";
 		};
 
 		i2c@8012a000 {
@@ -710,6 +718,8 @@
 			clocks = <&prcc_kclk 1 9>, <&prcc_pclk 1 10>;
 			clock-names = "i2cclk", "apb_pclk";
 			power-domains = <&pm_domains DOMAIN_VAPE>;
+
+			status = "disabled";
 		};
 
 		spi@80002000 {
@@ -724,6 +734,8 @@
 			       <&dma 8 0 0x0>; /* Logical - MemToDev */
 			dma-names = "rx", "tx";
 			power-domains = <&pm_domains DOMAIN_VAPE>;
+
+			status = "disabled";
 		};
 
 		spi@80003000 {
@@ -738,6 +750,8 @@
 			       <&dma 9 0 0x0>; /* Logical - MemToDev */
 			dma-names = "rx", "tx";
 			power-domains = <&pm_domains DOMAIN_VAPE>;
+
+			status = "disabled";
 		};
 
 		spi@8011a000 {
@@ -753,6 +767,8 @@
 			       <&dma 0 0 0x0>; /* Logical - MemToDev */
 			dma-names = "rx", "tx";
 			power-domains = <&pm_domains DOMAIN_VAPE>;
+
+			status = "disabled";
 		};
 
 		spi@80112000 {
@@ -768,6 +784,8 @@
 			       <&dma 35 0 0x0>; /* Logical - MemToDev */
 			dma-names = "rx", "tx";
 			power-domains = <&pm_domains DOMAIN_VAPE>;
+
+			status = "disabled";
 		};
 
 		spi@80111000 {
@@ -783,6 +801,8 @@
 			       <&dma 33 0 0x0>; /* Logical - MemToDev */
 			dma-names = "rx", "tx";
 			power-domains = <&pm_domains DOMAIN_VAPE>;
+
+			status = "disabled";
 		};
 
 		spi@80129000 {
@@ -798,6 +818,8 @@
 			       <&dma 40 0 0x0>; /* Logical - MemToDev */
 			dma-names = "rx", "tx";
 			power-domains = <&pm_domains DOMAIN_VAPE>;
+
+			status = "disabled";
 		};
 
 		ux500_serial0: uart@80120000 {
diff --git a/arch/arm/boot/dts/ste-href.dtsi b/arch/arm/boot/dts/ste-href.dtsi
index 7613a40421d5..5eafd5d8a8cd 100644
--- a/arch/arm/boot/dts/ste-href.dtsi
+++ b/arch/arm/boot/dts/ste-href.dtsi
@@ -39,18 +39,21 @@
 			pinctrl-names = "default","sleep";
 			pinctrl-0 = <&i2c0_a_1_default>;
 			pinctrl-1 = <&i2c0_a_1_sleep>;
+			status = "okay";
 		};
 
 		i2c@80122000 {
 			pinctrl-names = "default","sleep";
 			pinctrl-0 = <&i2c1_b_2_default>;
 			pinctrl-1 = <&i2c1_b_2_sleep>;
+			status = "okay";
 		};
 
 		i2c@80128000 {
 			pinctrl-names = "default","sleep";
 			pinctrl-0 = <&i2c2_b_2_default>;
 			pinctrl-1 = <&i2c2_b_2_sleep>;
+			status = "okay";
 			lp5521@33 {
 				compatible = "national,lp5521";
 				reg = <0x33>;
@@ -98,6 +101,7 @@
 			pinctrl-names = "default","sleep";
 			pinctrl-0 = <&i2c3_c_2_default>;
 			pinctrl-1 = <&i2c3_c_2_sleep>;
+			status = "okay";
 		};
 
 		/* ST6G3244ME level translator for 1.8/2.9 V */
diff --git a/arch/arm/boot/dts/ste-hrefprev60.dtsi b/arch/arm/boot/dts/ste-hrefprev60.dtsi
index a036defdf164..937f942f0961 100644
--- a/arch/arm/boot/dts/ste-hrefprev60.dtsi
+++ b/arch/arm/boot/dts/ste-hrefprev60.dtsi
@@ -58,6 +58,7 @@
 			 */
 			pinctrl-names = "default";
 			pinctrl-0 = <&ssp0_hrefprev60_mode>;
+			status = "okay";
 		};
 
 		// External Micro SD slot
diff --git a/arch/arm/boot/dts/ste-snowball.dts b/arch/arm/boot/dts/ste-snowball.dts
index 8b80dcdf6e5b..ce136412b6da 100644
--- a/arch/arm/boot/dts/ste-snowball.dts
+++ b/arch/arm/boot/dts/ste-snowball.dts
@@ -307,18 +307,21 @@
 			pinctrl-names = "default","sleep";
 			pinctrl-0 = <&i2c0_a_1_default>;
 			pinctrl-1 = <&i2c0_a_1_sleep>;
+			status = "okay";
 		};
 
 		i2c@80122000 {
 			pinctrl-names = "default","sleep";
 			pinctrl-0 = <&i2c1_b_2_default>;
 			pinctrl-1 = <&i2c1_b_2_sleep>;
+			status = "okay";
 		};
 
 		i2c@80128000 {
 			pinctrl-names = "default","sleep";
 			pinctrl-0 = <&i2c2_b_2_default>;
 			pinctrl-1 = <&i2c2_b_2_sleep>;
+			status = "okay";
 			lsm303dlh@18 {
 				/* Accelerometer */
 				compatible = "st,lsm303dlh-accel";
@@ -369,11 +372,13 @@
 			pinctrl-names = "default","sleep";
 			pinctrl-0 = <&i2c3_c_2_default>;
 			pinctrl-1 = <&i2c3_c_2_sleep>;
+			status = "okay";
 		};
 
 		spi@80002000 {
 			pinctrl-names = "default";
 			pinctrl-0 = <&ssp0_snowball_mode>;
+			status = "okay";
 		};
 
 		prcmu@80157000 {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
