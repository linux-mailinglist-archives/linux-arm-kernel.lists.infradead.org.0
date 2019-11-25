Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CA910929C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 18:06:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nyXUaEvWj4hquFQ/kPZgdhRopcIb49WZHmp8TLSzyfs=; b=AC9QJrOjTWa/eU
	KgoBlcScc6HUr1e6EmSQ56REUuH1W/xPEDtqZ7q4tDkTJ6PFofFV8E2GYFylSf9dPuyBIGT1chI2T
	jLSR5ZvfLPyzwhwKYT/sguVXt7kmWKidwZpqm85VNsoNCVyWvaH9in96i4ot+qjyo+coF99bRyL61
	cghGxomfE3gmnmub0S+ZNELz6Ql8sgS5otvi+V/ATTl42cKrZcaiMXDDpw299veMQl558w/8SDQ+F
	Acy3JCKPQeHujGvqRUketXMdUEKLivBIyutmk0n4hEdZV8KRbbesKouQqunu6SeL8qsH7tmmGWkgs
	pKV30Znr05BG30S3ZSHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZHoZ-0003wo-TQ; Mon, 25 Nov 2019 17:06:19 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::8])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZHnz-0003Vu-Ix
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 17:05:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574701541;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=4T58iZwAhzibbxA38Ty05T3UHM/dV8EZ97kepZ5ETG4=;
 b=T8yoEPl6eLIWv2ZHw6CnyJetVuIx1j3N2DHcyxsVrXhLb/AiT82GiITGcPym5DlObI
 6oVSN6r9dHatRwZO/wa2d002ji7gmcuu+k6UOnsvjExLh3X+ldPXdVtjWF0cW03lKJ6j
 pz4XvP0+ixLqL5OAxMVHdurzpi4N25gEqbr/2lb0S6e7yVf6B2zu91MuNmpg0vFJeu2z
 kPjdqxTP2AXqaPi9HPwezD/ma3QFOzR26gRsRDJy/nLkGi5h3Bx0lZ0p4COHRMfc4kGt
 ZvHMuknUVLEXyqqhEoy3FitPyvwFEdgImPanX6+J1CDJE7wc3q12siCpJ8+AwWWJCq2g
 mAIQ==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQr4OGUPX+1NmWArOmLo="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 45.0.2 DYNA|AUTH)
 with ESMTPSA id 304194vAPH5c2r7
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Mon, 25 Nov 2019 18:05:38 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 2/4] ARM: dts: ux500: Add aliases for I2C and SPI buses
Date: Mon, 25 Nov 2019 18:04:26 +0100
Message-Id: <20191125170428.76069-2-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191125170428.76069-1-stephan@gerhold.net>
References: <20191125170428.76069-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_090544_224107_1F62956B 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:8 listed in]
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

Now that we disable the I2C/SPI buses by default, is is even more
important to assign aliases to the I2C/SPI device nodes.
Otherwise, enabling/disabling one of them will potentially change
all device IDs, e.g. i2c2 will be named i2c-0 if it is the only
enabled I2C bus.

Add aliases for the I2C and SPI buses to avoid this.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm/boot/dts/ste-dbx5x0.dtsi | 35 +++++++++++++++++++++----------
 1 file changed, 24 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/ste-dbx5x0.dtsi b/arch/arm/boot/dts/ste-dbx5x0.dtsi
index 899368aa6ff7..ed91232a118a 100644
--- a/arch/arm/boot/dts/ste-dbx5x0.dtsi
+++ b/arch/arm/boot/dts/ste-dbx5x0.dtsi
@@ -13,6 +13,19 @@
 	#address-cells = <1>;
 	#size-cells = <1>;
 
+	/* This stablilizes the device enumeration */
+	aliases {
+		i2c0 = &i2c0;
+		i2c1 = &i2c1;
+		i2c2 = &i2c2;
+		i2c3 = &i2c3;
+		i2c4 = &i2c4;
+		spi0 = &spi0;
+		spi1 = &spi1;
+		spi2 = &spi2;
+		spi3 = &spi3;
+	};
+
 	chosen {
 	};
 
@@ -633,7 +646,7 @@
 			};
 		};
 
-		i2c@80004000 {
+		i2c0: i2c@80004000 {
 			compatible = "stericsson,db8500-i2c", "st,nomadik-i2c", "arm,primecell";
 			reg = <0x80004000 0x1000>;
 			interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
@@ -650,7 +663,7 @@
 			status = "disabled";
 		};
 
-		i2c@80122000 {
+		i2c1: i2c@80122000 {
 			compatible = "stericsson,db8500-i2c", "st,nomadik-i2c", "arm,primecell";
 			reg = <0x80122000 0x1000>;
 			interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
@@ -668,7 +681,7 @@
 			status = "disabled";
 		};
 
-		i2c@80128000 {
+		i2c2: i2c@80128000 {
 			compatible = "stericsson,db8500-i2c", "st,nomadik-i2c", "arm,primecell";
 			reg = <0x80128000 0x1000>;
 			interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
@@ -686,7 +699,7 @@
 			status = "disabled";
 		};
 
-		i2c@80110000 {
+		i2c3: i2c@80110000 {
 			compatible = "stericsson,db8500-i2c", "st,nomadik-i2c", "arm,primecell";
 			reg = <0x80110000 0x1000>;
 			interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
@@ -704,7 +717,7 @@
 			status = "disabled";
 		};
 
-		i2c@8012a000 {
+		i2c4: i2c@8012a000 {
 			compatible = "stericsson,db8500-i2c", "st,nomadik-i2c", "arm,primecell";
 			reg = <0x8012a000 0x1000>;
 			interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
@@ -722,7 +735,7 @@
 			status = "disabled";
 		};
 
-		spi@80002000 {
+		ssp0: spi@80002000 {
 			compatible = "arm,pl022", "arm,primecell";
 			reg = <0x80002000 0x1000>;
 			interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
@@ -738,7 +751,7 @@
 			status = "disabled";
 		};
 
-		spi@80003000 {
+		ssp1: spi@80003000 {
 			compatible = "arm,pl022", "arm,primecell";
 			reg = <0x80003000 0x1000>;
 			interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
@@ -754,7 +767,7 @@
 			status = "disabled";
 		};
 
-		spi@8011a000 {
+		spi0: spi@8011a000 {
 			compatible = "arm,pl022", "arm,primecell";
 			reg = <0x8011a000 0x1000>;
 			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
@@ -771,7 +784,7 @@
 			status = "disabled";
 		};
 
-		spi@80112000 {
+		spi1: spi@80112000 {
 			compatible = "arm,pl022", "arm,primecell";
 			reg = <0x80112000 0x1000>;
 			interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
@@ -788,7 +801,7 @@
 			status = "disabled";
 		};
 
-		spi@80111000 {
+		spi2: spi@80111000 {
 			compatible = "arm,pl022", "arm,primecell";
 			reg = <0x80111000 0x1000>;
 			interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
@@ -805,7 +818,7 @@
 			status = "disabled";
 		};
 
-		spi@80129000 {
+		spi3: spi@80129000 {
 			compatible = "arm,pl022", "arm,primecell";
 			reg = <0x80129000 0x1000>;
 			interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
