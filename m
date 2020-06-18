Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A95361FDBA9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:14:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M1AQUiXukOA2Y/FgpFGj8dUsES6q3ALecF5zNmL9kgA=; b=jCrEJ6H8Te84El
	L4Fi/B4Gusj5sLQxMyhbqibteRS/m7HHpuhCHASFNMAGXKCwUlUP7KEU8+1Qfu3wkSmiLv91VxLmi
	uYLwinOVOQvCw6cDP02J8TGNLQNBs9KdDmvbT10cILwVEjnyw43Z8sLkGbL/QQQNRbxmfPiLhbiQ1
	/IiQZkGMKCjNXIfhlmOzc+lA2SozNASn5P/giPZz7a+bfN3/svioRY5S/D92cSSDbRU0LeKc4tyIj
	gJ4r8aEmjtYbUgIUybJo8B6Atpiv6QoKVyjEeXXb/knyI777jlxypyCokIyJECbz78oNCV/o5aFCI
	KjpY0pMEkT8FO2wRXyYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlj7u-000311-Vc; Thu, 18 Jun 2020 01:13:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj3V-0005X7-HO
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:09:27 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C086F21974;
 Thu, 18 Jun 2020 01:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442564;
 bh=GPCQ9o9OX610tutUcHN29RME33dv4QpzreXiArdMxI4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Enf5E4lBLeV3zH8HIXGanKZ3trM/usw74hTVpi8lgdNI/a0CGKDsdMF7s39Z16qW9
 ousyKx3kbChuBSkDhskUdDzH9HYycIsRihsef7snhotmZztj3fPY6Gqv7SpZehdy0E
 B6O3/FD5axWECG4vAzYb12iyYwu7UDeKI6oji5nM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 059/388] arm64: dts: fvp/juno: Fix node address
 fields
Date: Wed, 17 Jun 2020 21:02:36 -0400
Message-Id: <20200618010805.600873-59-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_180925_661348_4C6AE612 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Andre Przywara <andre.przywara@arm.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andre Przywara <andre.przywara@arm.com>

[ Upstream commit bb5cce12ac717c7462217cd493ed701d12d6dbce ]

The Arm Ltd. boards were using an outdated address convention in the DT
node names, by separating the high from the low 32-bits of an address by
a comma.

Remove the comma from the node name suffix to be DT spec compliant.

Link: https://lore.kernel.org/r/20200513103016.130417-3-andre.przywara@arm.com
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi              | 10 +++++-----
 arch/arm64/boot/dts/arm/foundation-v8.dtsi           |  4 ++--
 arch/arm64/boot/dts/arm/juno-motherboard.dtsi        |  6 +++---
 arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi |  2 +-
 arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi     |  6 +++---
 5 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
index 5c183483ec3b..8010cdcdb37a 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -31,7 +31,7 @@ motherboard {
 			#interrupt-cells = <1>;
 			ranges;
 
-			nor_flash: flash@0,00000000 {
+			nor_flash: flash@0 {
 				compatible = "arm,vexpress-flash", "cfi-flash";
 				reg = <0 0x00000000 0x04000000>,
 				      <4 0x00000000 0x04000000>;
@@ -41,13 +41,13 @@ partitions {
 				};
 			};
 
-			psram@1,00000000 {
+			psram@100000000 {
 				compatible = "arm,vexpress-psram", "mtd-ram";
 				reg = <1 0x00000000 0x02000000>;
 				bank-width = <4>;
 			};
 
-			ethernet@2,02000000 {
+			ethernet@202000000 {
 				compatible = "smsc,lan9118", "smsc,lan9115";
 				reg = <2 0x02000000 0x10000>;
 				interrupts = <15>;
@@ -59,14 +59,14 @@ ethernet@2,02000000 {
 				vddvario-supply = <&v2m_fixed_3v3>;
 			};
 
-			usb@2,03000000 {
+			usb@203000000 {
 				compatible = "nxp,usb-isp1761";
 				reg = <2 0x03000000 0x20000>;
 				interrupts = <16>;
 				port1-otg;
 			};
 
-			iofpga@3,00000000 {
+			iofpga@300000000 {
 				compatible = "simple-bus";
 				#address-cells = <1>;
 				#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/arm/foundation-v8.dtsi b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
index 60ec37d6c9d3..e2da63f78298 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
@@ -151,7 +151,7 @@ bus@8000000 {
 				<0 0 41 &gic 0 GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
 				<0 0 42 &gic 0 GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
 
-		ethernet@2,02000000 {
+		ethernet@202000000 {
 			compatible = "smsc,lan91c111";
 			reg = <2 0x02000000 0x10000>;
 			interrupts = <15>;
@@ -178,7 +178,7 @@ v2m_refclk32khz: refclk32khz {
 			clock-output-names = "v2m:refclk32khz";
 		};
 
-		iofpga@3,00000000 {
+		iofpga@300000000 {
 			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
index e3983ded3c3c..d5cefddde08c 100644
--- a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
@@ -103,7 +103,7 @@ nmi-button {
 				};
 			};
 
-			flash@0,00000000 {
+			flash@0 {
 				/* 2 * 32MiB NOR Flash memory mounted on CS0 */
 				compatible = "arm,vexpress-flash", "cfi-flash";
 				reg = <0 0x00000000 0x04000000>;
@@ -120,7 +120,7 @@ partitions {
 				};
 			};
 
-			ethernet@2,00000000 {
+			ethernet@200000000 {
 				compatible = "smsc,lan9118", "smsc,lan9115";
 				reg = <2 0x00000000 0x10000>;
 				interrupts = <3>;
@@ -133,7 +133,7 @@ ethernet@2,00000000 {
 				vddvario-supply = <&mb_fixed_3v3>;
 			};
 
-			iofpga@3,00000000 {
+			iofpga@300000000 {
 				compatible = "simple-bus";
 				#address-cells = <1>;
 				#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
index 60703b5763c6..350cbf17e8b4 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
@@ -9,7 +9,7 @@ bus@8000000 {
 		motherboard {
 			arm,v2m-memory-map = "rs2";
 
-			iofpga@3,00000000 {
+			iofpga@300000000 {
 				virtio-p9@140000 {
 					compatible = "virtio,mmio";
 					reg = <0x140000 0x200>;
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
index e333c8d2d0e4..d1bfa62ca073 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
@@ -17,14 +17,14 @@ motherboard {
 			#interrupt-cells = <1>;
 			ranges;
 
-			flash@0,00000000 {
+			flash@0 {
 				compatible = "arm,vexpress-flash", "cfi-flash";
 				reg = <0 0x00000000 0x04000000>,
 				      <4 0x00000000 0x04000000>;
 				bank-width = <4>;
 			};
 
-			ethernet@2,02000000 {
+			ethernet@202000000 {
 				compatible = "smsc,lan91c111";
 				reg = <2 0x02000000 0x10000>;
 				interrupts = <15>;
@@ -51,7 +51,7 @@ v2m_refclk32khz: refclk32khz {
 				clock-output-names = "v2m:refclk32khz";
 			};
 
-			iofpga@3,00000000 {
+			iofpga@300000000 {
 				compatible = "simple-bus";
 				#address-cells = <1>;
 				#size-cells = <1>;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
