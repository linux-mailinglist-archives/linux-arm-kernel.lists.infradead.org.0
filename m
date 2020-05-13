Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DF21D0FF6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:38:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tA1JDvzbF2D96S9xbAklZXtEtDFZ7X2gPjCoiftIbGE=; b=hCEbh2LP6mS3/9O52xBaUoryjq
	5nKD7nRYaAjhJ4Bc50lAUVKQRZ5koaTJD1aGIrOCvpZ2OKhTTgBH442Q7MiR+h/JJMACR78ICOmzE
	pHaORkQj5/wcXph3nUqEUAlTp5moklMnnYyW/RUbwqg/jDeymHWZqTyoFntKpDWChRFso18RQI7uh
	gKvFcp4QGE7oX+YweRxYBkTVPC8JopUxXLlU8y24EHtEFm+NmAlxQbjSXCh4R7eWagOCsP6/rWbE/
	B51VjZY5Z3DjkC3OU3SYIPZmGwduCBK93xYoqpi9jGhAA5+0nAYU/PXkYRNYos5YDiU1D6Lzl4v+F
	yN8HddiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYohR-0007S5-DK; Wed, 13 May 2020 10:33:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYof2-0005Hl-Ai
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:30:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF6C811B3;
 Wed, 13 May 2020 03:30:47 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 961103F305;
 Wed, 13 May 2020 03:30:46 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 13/20] arm64: dts: arm: Fix serial node names
Date: Wed, 13 May 2020 11:30:09 +0100
Message-Id: <20200513103016.130417-14-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513103016.130417-1-andre.przywara@arm.com>
References: <20200513103016.130417-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_033048_571696_574500DF 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The UARTs for all Arm Ltd. boards were using "uart" as their node name
stub.

Replace that with the required "serial" string, to comply with the PL011
DT binding.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi          | 8 ++++----
 arch/arm64/boot/dts/arm/foundation-v8.dtsi       | 8 ++++----
 arch/arm64/boot/dts/arm/juno-base.dtsi           | 2 +-
 arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi | 8 ++++----
 4 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
index d4d88ce996a5..f4a65d693f15 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -316,7 +316,7 @@
 					clock-names = "KMIREFCLK", "apb_pclk";
 				};
 
-				v2m_serial0: uart@90000 {
+				v2m_serial0: serial@90000 {
 					compatible = "arm,pl011", "arm,primecell";
 					reg = <0x090000 0x1000>;
 					interrupts = <5>;
@@ -324,7 +324,7 @@
 					clock-names = "uartclk", "apb_pclk";
 				};
 
-				v2m_serial1: uart@a0000 {
+				v2m_serial1: serial@a0000 {
 					compatible = "arm,pl011", "arm,primecell";
 					reg = <0x0a0000 0x1000>;
 					interrupts = <6>;
@@ -332,7 +332,7 @@
 					clock-names = "uartclk", "apb_pclk";
 				};
 
-				v2m_serial2: uart@b0000 {
+				v2m_serial2: serial@b0000 {
 					compatible = "arm,pl011", "arm,primecell";
 					reg = <0x0b0000 0x1000>;
 					interrupts = <7>;
@@ -340,7 +340,7 @@
 					clock-names = "uartclk", "apb_pclk";
 				};
 
-				v2m_serial3: uart@c0000 {
+				v2m_serial3: serial@c0000 {
 					compatible = "arm,pl011", "arm,primecell";
 					reg = <0x0c0000 0x1000>;
 					interrupts = <8>;
diff --git a/arch/arm64/boot/dts/arm/foundation-v8.dtsi b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
index 63efb88595d4..e226c5e080c2 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
@@ -189,7 +189,7 @@
 				reg = <0x010000 0x1000>;
 			};
 
-			v2m_serial0: uart@90000 {
+			v2m_serial0: serial@90000 {
 				compatible = "arm,pl011", "arm,primecell";
 				reg = <0x090000 0x1000>;
 				interrupts = <5>;
@@ -197,7 +197,7 @@
 				clock-names = "uartclk", "apb_pclk";
 			};
 
-			v2m_serial1: uart@a0000 {
+			v2m_serial1: serial@a0000 {
 				compatible = "arm,pl011", "arm,primecell";
 				reg = <0x0a0000 0x1000>;
 				interrupts = <6>;
@@ -205,7 +205,7 @@
 				clock-names = "uartclk", "apb_pclk";
 			};
 
-			v2m_serial2: uart@b0000 {
+			v2m_serial2: serial@b0000 {
 				compatible = "arm,pl011", "arm,primecell";
 				reg = <0x0b0000 0x1000>;
 				interrupts = <7>;
@@ -213,7 +213,7 @@
 				clock-names = "uartclk", "apb_pclk";
 			};
 
-			v2m_serial3: uart@c0000 {
+			v2m_serial3: serial@c0000 {
 				compatible = "arm,pl011", "arm,primecell";
 				reg = <0x0c0000 0x1000>;
 				interrupts = <8>;
diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 2b34661d426c..ee860d539395 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -729,7 +729,7 @@
 		};
 	};
 
-	soc_uart0: uart@7ff80000 {
+	soc_uart0: serial@7ff80000 {
 		compatible = "arm,pl011", "arm,primecell";
 		reg = <0x0 0x7ff80000 0x0 0x1000>;
 		interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
index f61e313ab1a4..b81651b1890a 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
@@ -158,7 +158,7 @@
 					clock-names = "KMIREFCLK", "apb_pclk";
 				};
 
-				v2m_serial0: uart@90000 {
+				v2m_serial0: serial@90000 {
 					compatible = "arm,pl011", "arm,primecell";
 					reg = <0x090000 0x1000>;
 					interrupts = <5>;
@@ -166,7 +166,7 @@
 					clock-names = "uartclk", "apb_pclk";
 				};
 
-				v2m_serial1: uart@a0000 {
+				v2m_serial1: serial@a0000 {
 					compatible = "arm,pl011", "arm,primecell";
 					reg = <0x0a0000 0x1000>;
 					interrupts = <6>;
@@ -174,7 +174,7 @@
 					clock-names = "uartclk", "apb_pclk";
 				};
 
-				v2m_serial2: uart@b0000 {
+				v2m_serial2: serial@b0000 {
 					compatible = "arm,pl011", "arm,primecell";
 					reg = <0x0b0000 0x1000>;
 					interrupts = <7>;
@@ -182,7 +182,7 @@
 					clock-names = "uartclk", "apb_pclk";
 				};
 
-				v2m_serial3: uart@c0000 {
+				v2m_serial3: serial@c0000 {
 					compatible = "arm,pl011", "arm,primecell";
 					reg = <0x0c0000 0x1000>;
 					interrupts = <8>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
