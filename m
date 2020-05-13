Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 549861D1002
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YHJs/G2J9ltdE71ZPM7ZG/wUO4H9hO/b2R73qTI/SlM=; b=PuK3gspqQ3rVPuMf75Vkjd79gk
	q456pljkYujlPQdW+QXCYKlDx+kzSWy2PwHy7vIuXHND07FuyW1qrz/EgOAh6yJ52Q119VvbMYSnz
	xRgSllVDUqG8T1W8zG5wikgQO3jLa9Y+ffsLXZrH5+wQj8togh3UqksGIDXmozzPOYMe/+xQtjbbk
	MTPgt5rjqFEKtK1KMNKHi9OKAK3BbMHyU0GHZG/dMJ/DyAxOCvJrlBLd33RkJ7Zgqr7WyC9P7yN9c
	cXXcc8HK6MZ2ZwQxRxWbvVMtGJ1MajZyPNCL0296GjHqWi7jMULbkh7AReGU5WeE0EmThUl4zxy1r
	dRML7n5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYoha-0007Yy-Qe; Wed, 13 May 2020 10:33:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYof5-0005SL-1L
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:30:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 549651FB;
 Wed, 13 May 2020 03:30:50 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3B3133F305;
 Wed, 13 May 2020 03:30:49 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 15/20] arm64: dts: arm: Fix bus node names
Date: Wed, 13 May 2020 11:30:11 +0100
Message-Id: <20200513103016.130417-16-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513103016.130417-1-andre.przywara@arm.com>
References: <20200513103016.130417-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_033051_231529_CE043D52 
X-CRM114-Status: GOOD (  12.15  )
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

Most Arm Ltd. boards are employing a layered bus structure, to map
the hardware design (SoC, motherboard, IOFPGA) and structure the DTs.

The "simple-bus" nodes only allow a limited set of node names. Switch
to use *-bus to be binding compliant.

This relies on a pending dt-schema.git fix for now:
https://github.com/devicetree-org/dt-schema/pull/38

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi              | 4 ++--
 arch/arm64/boot/dts/arm/foundation-v8.dtsi           | 2 +-
 arch/arm64/boot/dts/arm/juno-base.dtsi               | 2 +-
 arch/arm64/boot/dts/arm/juno-motherboard.dtsi        | 4 ++--
 arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi | 4 ++--
 arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi     | 4 ++--
 6 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
index f4a65d693f15..f5c8f07b4918 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -174,7 +174,7 @@
 	};
 
 	bus@8000000 {
-		motherboard {
+		motherboard-bus {
 			model = "V2M-P1";
 			arm,hbi = <0x190>;
 			arm,vexpress,site = <0>;
@@ -220,7 +220,7 @@
 				port1-otg;
 			};
 
-			iofpga@300000000 {
+			iofpga-bus@300000000 {
 				compatible = "simple-bus";
 				#address-cells = <1>;
 				#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/arm/foundation-v8.dtsi b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
index e226c5e080c2..05ae893d1b2e 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
@@ -178,7 +178,7 @@
 			interrupts = <15>;
 		};
 
-		iofpga@300000000 {
+		iofpga-bus@300000000 {
 			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index ee860d539395..bd4e0b15f9c8 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -828,7 +828,7 @@
 				<0 0 12 &gic 0 GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
-	site2: tlx@60000000 {
+	site2: tlx-bus@60000000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
index f3279327a665..eeee51f1251b 100644
--- a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
@@ -92,7 +92,7 @@
 	};
 
 	bus@8000000 {
-		motherboard {
+		motherboard-bus {
 			compatible = "arm,vexpress,v2p-p1", "simple-bus";
 			#address-cells = <2>;  /* SMB chipselect number and offset */
 			#size-cells = <1>;
@@ -133,7 +133,7 @@
 				vddvario-supply = <&mb_fixed_3v3>;
 			};
 
-			iofpga@300000000 {
+			iofpga-bus@300000000 {
 				compatible = "simple-bus";
 				#address-cells = <1>;
 				#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
index 350cbf17e8b4..b917d9d3f1c4 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
@@ -6,10 +6,10 @@
  */
 / {
 	bus@8000000 {
-		motherboard {
+		motherboard-bus {
 			arm,v2m-memory-map = "rs2";
 
-			iofpga@300000000 {
+			iofpga-bus@300000000 {
 				virtio-p9@140000 {
 					compatible = "virtio,mmio";
 					reg = <0x140000 0x200>;
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
index b81651b1890a..001a0a3c7f66 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
@@ -77,7 +77,7 @@
 	};
 
 	bus@8000000 {
-		motherboard {
+		motherboard-bus {
 			arm,v2m-memory-map = "rs1";
 			compatible = "arm,vexpress,v2m-p1", "simple-bus";
 			#address-cells = <2>; /* SMB chipselect number and offset */
@@ -98,7 +98,7 @@
 				interrupts = <15>;
 			};
 
-			iofpga@300000000 {
+			iofpga-bus@300000000 {
 				compatible = "simple-bus";
 				#address-cells = <1>;
 				#size-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
