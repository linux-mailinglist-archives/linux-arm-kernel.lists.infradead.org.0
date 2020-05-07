Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 452B31C882E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:28:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1Re5MMdcrTsOPbXR1TMZecBK7W4czjxY9KCRK/a4GcY=; b=jLFUwRla91i3SK8IrSAzeNTfqS
	2DwvGXeqDpaU1uwfHWtaDm+sivp0KPAkD3xdNZ4ChADjOVTRLR2cOH5kcohHIOnJPbSbBH1ogIWgP
	RdjiTtauV8JROOfuYFNPaItuItepHIE5YyPFcEc3oTLF0aE4cEC6ps+cBtRsZafkd4i9De+UHTMD9
	8IVShCq8heb/u+X80Fg/P7LWGTUyrPFhPzRKXVs2ni+ASzRsx7z2wp3QGvxp3ZhgutQNfBIEKTy3R
	55C+QdIkU/5GlNnjXAxy0+ep45vdh7RgRIBlI8meYfDhhECvvo8hCMgLtBA7SHV3o8qSkEKgiA/6K
	tBzy5nzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWehi-00043Y-6C; Thu, 07 May 2020 11:28:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWeeC-0006kk-O8
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:25:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B40741045;
 Thu,  7 May 2020 04:24:59 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9AFBB3F68F;
 Thu,  7 May 2020 04:24:58 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 12/17] arm64: dts: arm: Fix bus node names
Date: Thu,  7 May 2020 12:24:25 +0100
Message-Id: <20200507112430.183940-13-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507112430.183940-1-andre.przywara@arm.com>
References: <20200507112430.183940-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_042501_009298_306B5549 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
index 675a51e12eb1..4aaae848f370 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -20,7 +20,7 @@
 
 / {
 	bus@8000000 {
-		motherboard {
+		motherboard-bus {
 			model = "V2M-P1";
 			arm,hbi = <0x190>;
 			arm,vexpress,site = <0>;
@@ -66,7 +66,7 @@
 				port1-otg;
 			};
 
-			iofpga@300000000 {
+			iofpga-bus@300000000 {
 				compatible = "simple-bus";
 				#address-cells = <1>;
 				#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/arm/foundation-v8.dtsi b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
index d1918253ab39..23fe81737b1c 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
@@ -178,7 +178,7 @@
 			clock-output-names = "v2m:refclk32khz";
 		};
 
-		iofpga@300000000 {
+		iofpga-bus@300000000 {
 			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 51951cfd126e..c04c6167d522 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -828,7 +828,7 @@
 				<0 0 12 &gic 0 0 GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
-	site2: tlx@60000000 {
+	site2: tlx-bus@60000000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
index d5cefddde08c..ddda5df28ba0 100644
--- a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
@@ -37,7 +37,7 @@
 			clock-output-names = "juno_mb:refclk32khz";
 		};
 
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
