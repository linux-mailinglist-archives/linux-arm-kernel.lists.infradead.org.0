Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8081691EB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 22:41:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VMytQku+yCnaUlX7bc5IyfWsnA7fWmEYp2qRqLlvo1k=; b=g1ugHcEGo8MhB4
	t55Q66+TrDjlQPaUC2IQToiQumxiUqxmZjZnqU4HafERy8J/MxfkSmGZuLhoR5PspdKW7Nj2/Lw4q
	GGvYnQu80enDGcQQQBTtj+fE9+Zya4ABzA6MbSFA4UPaww4NrblbSoVKbJixskzIxq0rtaYx43cHv
	xo9yy2UGA48cbeqkjnWumA6Py9xM3vuYGF+zuawKOd4YZB+oaQ56jqf4mr1quFKTuyLe4n67tUByH
	kBFu0ZKcG3VnLDWx8fcbt62Fa883vkSs0UBdia/fTjoLbh7KkzAVl023pfQEMwEUNxVmOFXeLdI2a
	P2v0yfM3f1QZ7dls3zsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5cW9-00063n-44; Sat, 22 Feb 2020 21:40:57 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5cVy-000634-MV
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 21:40:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582407641; bh=n/YtLfVCyVXP+mWFkjUYJqHKw++vxYLHzIOxG9EZXdk=;
 h=From:To:Cc:Subject:Date:From;
 b=RjHT6V8Y3pQ/ti1xfG4/iXH8NMgav6xPA3+JxLk3YvGktporIz9WQpFCv19WxjZVC
 HEP/J7wFIlJcvilXiKreH08mktTYOQdOg3UhFAOUcfFgHGiJZU6DUbdDPnMDV1XunT
 3nMEFY7iuo7gjqTNAgtayVqgaA8YCev5RZ4KO6Uw=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com
Subject: [PATCH] ARM: dts: sun8i-a83t: Add thermal trip points/cooling maps
Date: Sat, 22 Feb 2020 22:40:39 +0100
Message-Id: <20200222214039.209426-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_134047_066702_1F36A518 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This enables passive cooling by down-regulating CPU voltage
and frequency.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 arch/arm/boot/dts/sun8i-a83t.dtsi | 60 +++++++++++++++++++++++++++----
 1 file changed, 54 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
index 74ac7ee9383cf..53c2b6a836f27 100644
--- a/arch/arm/boot/dts/sun8i-a83t.dtsi
+++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
@@ -72,7 +72,7 @@ cpu0: cpu@0 {
 			#cooling-cells = <2>;
 		};
 
-		cpu@1 {
+		cpu1: cpu@1 {
 			compatible = "arm,cortex-a7";
 			device_type = "cpu";
 			clocks = <&ccu CLK_C0CPUX>;
@@ -83,7 +83,7 @@ cpu@1 {
 			#cooling-cells = <2>;
 		};
 
-		cpu@2 {
+		cpu2: cpu@2 {
 			compatible = "arm,cortex-a7";
 			device_type = "cpu";
 			clocks = <&ccu CLK_C0CPUX>;
@@ -94,7 +94,7 @@ cpu@2 {
 			#cooling-cells = <2>;
 		};
 
-		cpu@3 {
+		cpu3: cpu@3 {
 			compatible = "arm,cortex-a7";
 			device_type = "cpu";
 			clocks = <&ccu CLK_C0CPUX>;
@@ -116,7 +116,7 @@ cpu100: cpu@100 {
 			#cooling-cells = <2>;
 		};
 
-		cpu@101 {
+		cpu101: cpu@101 {
 			compatible = "arm,cortex-a7";
 			device_type = "cpu";
 			clocks = <&ccu CLK_C1CPUX>;
@@ -127,7 +127,7 @@ cpu@101 {
 			#cooling-cells = <2>;
 		};
 
-		cpu@102 {
+		cpu102: cpu@102 {
 			compatible = "arm,cortex-a7";
 			device_type = "cpu";
 			clocks = <&ccu CLK_C1CPUX>;
@@ -138,7 +138,7 @@ cpu@102 {
 			#cooling-cells = <2>;
 		};
 
-		cpu@103 {
+		cpu103: cpu@103 {
 			compatible = "arm,cortex-a7";
 			device_type = "cpu";
 			clocks = <&ccu CLK_C1CPUX>;
@@ -1188,12 +1188,60 @@ cpu0_thermal: cpu0-thermal {
 			polling-delay-passive = <0>;
 			polling-delay = <0>;
 			thermal-sensors = <&ths 0>;
+
+			trips {
+				cpu0_hot: cpu-hot {
+					temperature = <80000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu0_very_hot: cpu-very-hot {
+					temperature = <100000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				cpu-hot-limit {
+					trip = <&cpu0_hot>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		cpu1_thermal: cpu1-thermal {
 			polling-delay-passive = <0>;
 			polling-delay = <0>;
 			thermal-sensors = <&ths 1>;
+
+			trips {
+				cpu1_hot: cpu-hot {
+					temperature = <80000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu1_very_hot: cpu-very-hot {
+					temperature = <100000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				cpu-hot-limit {
+					trip = <&cpu1_hot>;
+					cooling-device = <&cpu100 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu101 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu102 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu103 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		gpu_thermal: gpu-thermal {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
