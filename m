Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4D81D0FFF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0zA1U46cPal8pvugItXdj99O5iD4zCDsduBS/7CVtFk=; b=RufAcq6v8oNAY+uk6bLvmGzTDo
	tGJ53AfZoMiSDQ/VG5g8gbT9cQHXASNmaxHQKmAi89AHPMBdoENrTy7GPhUXe4jxXqr+JO18Xeqzt
	VqIlle5sQh5SOlEx8t5/eRhrZp0RqEOJTJD8XlXV1QniEA5bS7LMmU5LwVhqB1UGdPiIWIzO7w9kp
	exYLq5OjuIhaBG++djVrYtshPs6nCLB6SiO0i6MnHcDWwb8E2ZTybLyRqdKYohh9qKyt/JN7Ad/zI
	BrFgINRDQtt7NqGTcLikHVo4ZtypBACNhcsqWISFyRCdkEy0+Eg6aE9bYkzRhIr+ZAK+v4Fv46Q9s
	pxqOclxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYohO-0007Pp-Ge; Wed, 13 May 2020 10:33:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYoey-0005Hl-Aa
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:30:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A30C4D6E;
 Wed, 13 May 2020 03:30:43 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6E45D3F305;
 Wed, 13 May 2020 03:30:42 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 10/20] arm64: dts: arm: foundation: Fix GIC child nodes
Date: Wed, 13 May 2020 11:30:06 +0100
Message-Id: <20200513103016.130417-11-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513103016.130417-1-andre.przywara@arm.com>
References: <20200513103016.130417-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_033045_090707_973B800E 
X-CRM114-Status: GOOD (  12.12  )
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
 linux-arm-kernel@lists.infradead.org, Marc Zyngier <maz@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The GIC DT nodes for the fastmodels were not fully compliant with the
DT binding, which has certain expectations about child nodes and their
size and address cells values.

Use smaller #address-cells and #size-cells values, as the binding
requests, and adjust the reg properties accordingly.
This requires adjusting the interrupt nexus nodes as well, as one
field of the interrupt-map property depends on the GIC's address-size.

Since the .dts files share interrupt nexus nodes across different
interrupt controllers (GICv2 vs. GICv3), we need to use the only
commonly allowed #address-size value of <1> for both.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../boot/dts/arm/foundation-v8-gicv2.dtsi     |  2 +-
 .../boot/dts/arm/foundation-v8-gicv3.dtsi     |  8 +-
 arch/arm64/boot/dts/arm/foundation-v8.dtsi    | 86 +++++++++----------
 3 files changed, 48 insertions(+), 48 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi b/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
index f17e744163a5..655fdcce1561 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
@@ -8,7 +8,7 @@
 	gic: interrupt-controller@2c001000 {
 		compatible = "arm,gic-400", "arm,cortex-a15-gic";
 		#interrupt-cells = <3>;
-		#address-cells = <2>;
+		#address-cells = <1>;
 		interrupt-controller;
 		reg = <0x0 0x2c001000 0 0x1000>,
 		      <0x0 0x2c002000 0 0x2000>,
diff --git a/arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi b/arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi
index f2c75c756039..906f51935b36 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi
@@ -8,9 +8,9 @@
 	gic: interrupt-controller@2f000000 {
 		compatible = "arm,gic-v3";
 		#interrupt-cells = <3>;
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x0 0x2f000000 0x100000>;
 		interrupt-controller;
 		reg =	<0x0 0x2f000000 0x0 0x10000>,
 			<0x0 0x2f100000 0x0 0x200000>,
@@ -22,7 +22,7 @@
 		its: its@2f020000 {
 			compatible = "arm,gic-v3-its";
 			msi-controller;
-			reg = <0x0 0x2f020000 0x0 0x20000>;
+			reg = <0x20000 0x20000>;
 		};
 	};
 };
diff --git a/arch/arm64/boot/dts/arm/foundation-v8.dtsi b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
index e5b8a9b5c410..63efb88595d4 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
@@ -128,49 +128,49 @@
 
 		#interrupt-cells = <1>;
 		interrupt-map-mask = <0 0 63>;
-		interrupt-map = <0 0  0 &gic 0 0 GIC_SPI  0 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  1 &gic 0 0 GIC_SPI  1 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  2 &gic 0 0 GIC_SPI  2 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  3 &gic 0 0 GIC_SPI  3 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  4 &gic 0 0 GIC_SPI  4 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  5 &gic 0 0 GIC_SPI  5 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  6 &gic 0 0 GIC_SPI  6 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  7 &gic 0 0 GIC_SPI  7 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  8 &gic 0 0 GIC_SPI  8 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  9 &gic 0 0 GIC_SPI  9 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 10 &gic 0 0 GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 11 &gic 0 0 GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 12 &gic 0 0 GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 13 &gic 0 0 GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 14 &gic 0 0 GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 15 &gic 0 0 GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 16 &gic 0 0 GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 17 &gic 0 0 GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 18 &gic 0 0 GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 19 &gic 0 0 GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 20 &gic 0 0 GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 21 &gic 0 0 GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 22 &gic 0 0 GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 23 &gic 0 0 GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 24 &gic 0 0 GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 25 &gic 0 0 GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 26 &gic 0 0 GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 27 &gic 0 0 GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 28 &gic 0 0 GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 29 &gic 0 0 GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 30 &gic 0 0 GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 31 &gic 0 0 GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 32 &gic 0 0 GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 33 &gic 0 0 GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 34 &gic 0 0 GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 35 &gic 0 0 GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 36 &gic 0 0 GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 37 &gic 0 0 GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 38 &gic 0 0 GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 39 &gic 0 0 GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 40 &gic 0 0 GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 41 &gic 0 0 GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 42 &gic 0 0 GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map = <0 0  0 &gic 0 GIC_SPI  0 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  1 &gic 0 GIC_SPI  1 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  2 &gic 0 GIC_SPI  2 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  3 &gic 0 GIC_SPI  3 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  4 &gic 0 GIC_SPI  4 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  5 &gic 0 GIC_SPI  5 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  6 &gic 0 GIC_SPI  6 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  7 &gic 0 GIC_SPI  7 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  8 &gic 0 GIC_SPI  8 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  9 &gic 0 GIC_SPI  9 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 10 &gic 0 GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 11 &gic 0 GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 12 &gic 0 GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 13 &gic 0 GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 14 &gic 0 GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 15 &gic 0 GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 16 &gic 0 GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 17 &gic 0 GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 18 &gic 0 GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 19 &gic 0 GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 20 &gic 0 GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 21 &gic 0 GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 22 &gic 0 GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 23 &gic 0 GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 24 &gic 0 GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 25 &gic 0 GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 26 &gic 0 GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 27 &gic 0 GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 28 &gic 0 GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 29 &gic 0 GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 30 &gic 0 GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 31 &gic 0 GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 32 &gic 0 GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 33 &gic 0 GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 34 &gic 0 GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 35 &gic 0 GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 36 &gic 0 GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 37 &gic 0 GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 38 &gic 0 GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 39 &gic 0 GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 40 &gic 0 GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 41 &gic 0 GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 42 &gic 0 GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
 
 		ethernet@202000000 {
 			compatible = "smsc,lan91c111";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
