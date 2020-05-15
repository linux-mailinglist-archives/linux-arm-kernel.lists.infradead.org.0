Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A28B81D4FB8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:00:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RIomBygqAJrIQOYpp2Di5+yof9RQCEK8odQSeDIpHzk=; b=Td6hQEbVdUJEZ4
	kkDWVvRWCGQLOwpBqCrUC6QksTKsNZqyGZijH+x8Pa9RHG6EYqyVfQpLDIHQkQmbQCKuSNydVorrE
	SIx7hvrYFzB1kb9xIkhUbd4i6TVsFIooCUXTrtZ7tRE0Ubco+Qb5Q1IvUwq1YZZL63hzuqAcaemq1
	cPeo3vaSaT5RGw+j4pRlxEIs+iLkwfSaedPZGC5Hcs6uN9f46yekme8yxq01Sd65KzFY94FI09vAi
	JHVrNLxGfu04V/8M2dNos1EUzZl5oahGTg3EGVwbXTv7xP5oD5TSEDO+XjJQlsZp5T/l1WuBcfHCK
	1ooAR2P5sBbjn3xeEEWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZat5-0003be-6E; Fri, 15 May 2020 14:00:31 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZast-00037i-C6
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 14:00:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589551219; x=1621087219;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RYuYk2nK0gUCJ/sXARflJpI6XX3QksJ6uNvKcChd4mw=;
 b=CBrU43h7DIXgUb5Hd0ur4+FLfxnr9eRrbsEgliw4jZkYuqeK9WJlrJ1o
 9aPix3ipg7U3a/YFavdm+0H8z8jIvxCYDqpKjQVk1IDKim/3b8rwqPCVc
 TwRkmV7BIRYTlyZFvDSj13AbZ5WDYVvArf6lOm4PcE1IYNVVHyEHVN5Vl
 ndVnhE3o6xPc1DyhaVqbtRlT3LpeaSMtbsUPUdWfXp3lp1jRWFXyrL7HI
 biy9GQm6hQeSOf/E6GWgRSw2pEzvpnTw0hcOAsq785Lu2UFay76Dk6BVf
 X+vXgO8bhKyt+jCLOHpnbp2F7aYdeUFc4HkpuRuUFpMAkPCiTpHFIOaSB g==;
IronPort-SDR: 7HCBGe2GHURrpUUzzZh6clIGKaIGH3sdDknjInDYLJJfq2nkGRUBKHW/oJQ2VAgNaHMchLJzsl
 xRTeBJ0mS6SKwyZh3ZYSgIVnbtIxdTP+HVzqldccjaKp0jltGJXIiotOHcEnJR5Bw3FjKVZSwG
 g77MnHQUi6SLJ69j/wz7nsuE1WLNClK23BpdSkwGZBylDAiR9PsGHG3CiF2Xcuih7Bhuspm9BN
 jC6AbSo56NQLIIdtYhG/FY81VklLgXZQMbca+cLmZ+2AOQuEg6/PHO4L2blx6YkhyT0/u+2M+E
 OrU=
X-IronPort-AV: E=Sophos;i="5.73,395,1583218800"; d="scan'208";a="73579432"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 07:00:10 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 07:00:13 -0700
Received: from rob-ult-m19940.microchip.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 15 May 2020 07:00:05 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] ARM: dts: at91: Configure I2C SCL gpio as open drain
Date: Fri, 15 May 2020 17:00:01 +0300
Message-ID: <20200515140001.287932-1-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_070019_586978_4DD7E167 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ludovic.desroches@microchip.com, Codrin
 Ciubotariu <codrin.ciubotariu@microchip.com>, alexandre.belloni@bootlin.com,
 robh+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SCL gpio pin used by I2C bus for recovery needs to be configured as
open drain.

Fixes: 455fec938bbb ("ARM: dts: at91: sama5d2: add i2c gpio pinctrl")
Fixes: a4bd8da893a3 ("ARM: dts: at91: sama5d3: add i2c gpio pinctrl")
Fixes: 8fb82f050cf6 ("ARM: dts: at91: sama5d4: add i2c gpio pinctrl")
Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts   | 6 +++---
 arch/arm/boot/dts/at91-sama5d2_xplained.dts | 6 +++---
 arch/arm/boot/dts/sama5d3.dtsi              | 6 +++---
 arch/arm/boot/dts/sama5d4.dtsi              | 6 +++---
 4 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
index 32435ce1dab2..be33483013e7 100644
--- a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
@@ -182,7 +182,7 @@ i2c0: i2c@f8028000 {
 				pinctrl-0 = <&pinctrl_i2c0_default>;
 				pinctrl-1 = <&pinctrl_i2c0_gpio>;
 				sda-gpios = <&pioA PIN_PD21 GPIO_ACTIVE_HIGH>;
-				scl-gpios = <&pioA PIN_PD22 GPIO_ACTIVE_HIGH>;
+				scl-gpios = <&pioA PIN_PD22 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 				status = "okay";
 			};
 
@@ -203,7 +203,7 @@ i2c2: i2c@600 {
 					pinctrl-0 = <&pinctrl_flx0_default>;
 					pinctrl-1 = <&pinctrl_flx0_gpio>;
 					sda-gpios = <&pioA PIN_PB28 GPIO_ACTIVE_HIGH>;
-					scl-gpios = <&pioA PIN_PB29 GPIO_ACTIVE_HIGH>;
+					scl-gpios = <&pioA PIN_PB29 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 					atmel,fifo-size = <16>;
 					status = "okay";
 				};
@@ -234,7 +234,7 @@ i2c1: i2c@fc028000 {
 				pinctrl-0 = <&pinctrl_i2c1_default>;
 				pinctrl-1 = <&pinctrl_i2c1_gpio>;
 				sda-gpios = <&pioA PIN_PC6 GPIO_ACTIVE_HIGH>;
-				scl-gpios = <&pioA PIN_PC7 GPIO_ACTIVE_HIGH>;
+				scl-gpios = <&pioA PIN_PC7 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 				status = "okay";
 
 				at24@50 {
diff --git a/arch/arm/boot/dts/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
index e0c6cff1a312..862bf54376f1 100644
--- a/arch/arm/boot/dts/at91-sama5d2_xplained.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
@@ -185,7 +185,7 @@ i2c0: i2c@f8028000 {
 				pinctrl-0 = <&pinctrl_i2c0_default>;
 				pinctrl-1 = <&pinctrl_i2c0_gpio>;
 				sda-gpios = <&pioA PIN_PD21 GPIO_ACTIVE_HIGH>;
-				scl-gpios = <&pioA PIN_PD22 GPIO_ACTIVE_HIGH>;
+				scl-gpios = <&pioA PIN_PD22 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 				i2c-sda-hold-time-ns = <350>;
 				status = "okay";
 
@@ -390,7 +390,7 @@ i2c2: i2c@600 {
 					pinctrl-0 = <&pinctrl_flx4_default>;
 					pinctrl-1 = <&pinctrl_flx4_gpio>;
 					sda-gpios = <&pioA PIN_PD12 GPIO_ACTIVE_HIGH>;
-					scl-gpios = <&pioA PIN_PD13 GPIO_ACTIVE_HIGH>;
+					scl-gpios = <&pioA PIN_PD13 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 					atmel,fifo-size = <16>;
 					i2c-analog-filter;
 					i2c-digital-filter;
@@ -408,7 +408,7 @@ i2c1: i2c@fc028000 {
 				i2c-digital-filter-width-ns = <35>;
 				pinctrl-1 = <&pinctrl_i2c1_gpio>;
 				sda-gpios = <&pioA PIN_PD4 GPIO_ACTIVE_HIGH>;
-				scl-gpios = <&pioA PIN_PD5 GPIO_ACTIVE_HIGH>;
+				scl-gpios = <&pioA PIN_PD5 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 				status = "okay";
 
 				at24@54 {
diff --git a/arch/arm/boot/dts/sama5d3.dtsi b/arch/arm/boot/dts/sama5d3.dtsi
index f3ce561b46ab..c53e48445e4d 100644
--- a/arch/arm/boot/dts/sama5d3.dtsi
+++ b/arch/arm/boot/dts/sama5d3.dtsi
@@ -163,7 +163,7 @@ i2c0: i2c@f0014000 {
 				pinctrl-0 = <&pinctrl_i2c0>;
 				pinctrl-1 = <&pinctrl_i2c0_gpio>;
 				sda-gpios = <&pioA 30 GPIO_ACTIVE_HIGH>;
-				scl-gpios = <&pioA 31 GPIO_ACTIVE_HIGH>;
+				scl-gpios = <&pioA 31 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 18>;
@@ -181,7 +181,7 @@ i2c1: i2c@f0018000 {
 				pinctrl-0 = <&pinctrl_i2c1>;
 				pinctrl-1 = <&pinctrl_i2c1_gpio>;
 				sda-gpios = <&pioC 26 GPIO_ACTIVE_HIGH>;
-				scl-gpios = <&pioC 27 GPIO_ACTIVE_HIGH>;
+				scl-gpios = <&pioC 27 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 19>;
@@ -367,7 +367,7 @@ i2c2: i2c@f801c000 {
 				pinctrl-0 = <&pinctrl_i2c2>;
 				pinctrl-1 = <&pinctrl_i2c2_gpio>;
 				sda-gpios = <&pioA 18 GPIO_ACTIVE_HIGH>;
-				scl-gpios = <&pioA 19 GPIO_ACTIVE_HIGH>;
+				scl-gpios = <&pioA 19 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 20>;
diff --git a/arch/arm/boot/dts/sama5d4.dtsi b/arch/arm/boot/dts/sama5d4.dtsi
index c9c0316b5b0e..fff679734c9c 100644
--- a/arch/arm/boot/dts/sama5d4.dtsi
+++ b/arch/arm/boot/dts/sama5d4.dtsi
@@ -462,7 +462,7 @@ i2c0: i2c@f8014000 {
 				pinctrl-0 = <&pinctrl_i2c0>;
 				pinctrl-1 = <&pinctrl_i2c0_gpio>;
 				sda-gpios = <&pioA 30 GPIO_ACTIVE_HIGH>;
-				scl-gpios = <&pioA 31 GPIO_ACTIVE_HIGH>;
+				scl-gpios = <&pioA 31 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 32>;
@@ -484,7 +484,7 @@ i2c1: i2c@f8018000 {
 				pinctrl-0 = <&pinctrl_i2c1>;
 				pinctrl-1 = <&pinctrl_i2c1_gpio>;
 				sda-gpios = <&pioE 29 GPIO_ACTIVE_HIGH>;
-				scl-gpios = <&pioE 30 GPIO_ACTIVE_HIGH>;
+				scl-gpios = <&pioE 30 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 33>;
@@ -529,7 +529,7 @@ i2c2: i2c@f8024000 {
 				pinctrl-0 = <&pinctrl_i2c2>;
 				pinctrl-1 = <&pinctrl_i2c2_gpio>;
 				sda-gpios = <&pioB 29 GPIO_ACTIVE_HIGH>;
-				scl-gpios = <&pioB 30 GPIO_ACTIVE_HIGH>;
+				scl-gpios = <&pioB 30 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 34>;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
