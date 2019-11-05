Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00184F070D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 21:36:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LhhiAE4+DVnK3IrezOHay08lPQfjBZhQTwrOCueIUmg=; b=rhm
	usTeXuKCr4ByoXVY5/xoj3miLGMs52WD+USbbCBLI0cT+hoexqjeEiUuo3ZzD6nyQrVL0anb3vubo
	xQvyqUxhXMXWS3mPnOzEgpVykLr8xlZ6b/hbcLjPaWR6tEBct1oszBDs/5FucI9KaxQlwe+5tOK9E
	zY3JYP0Fq9I+4PktFOT8LYVgSW/LH5uub+sNoNAa/efj3rjsAv4EYUAzx+YgEuYuo+pysAnL6sEWd
	rvpPmtrt1xUPxgvTEvOJIk1tR18KQlm9c2bSlwy+HstK3Gk3ieLBTSTNhAGSx1H7YOKKAyoBHRu8y
	SV7fU57i7hWhXZuszJuId/UpG+rZc1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS5YW-0003GX-9o; Tue, 05 Nov 2019 20:36:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5XX-0001Nq-Dj
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 20:35:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7E9EF7B9;
 Tue,  5 Nov 2019 12:34:56 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2A3453FF11;
 Tue,  5 Nov 2019 03:07:01 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH] arm64: dts: allwinner: a64: Re-add PMU node
Date: Tue,  5 Nov 2019 11:06:51 +0000
Message-Id: <20191105110651.217513-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_123459_510142_55269728 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Emmanuel Vadot <manu@FreeBSD.org>, "Jared D . McNeill" <jmcneill@NetBSD.org>,
 linux-sunxi@googlegroups.com, devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 Harald Geyer <harald@ccbib.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As it was found recently, the Performance Monitoring Unit (PMU) on the
Allwinner A64 SoC was not generating (the right) interrupts. With the
SPI numbers from the manual the kernel did not receive any overflow
interrupts, so perf was not happy at all.
It turns out that the numbers were just off by 4, so the PMU interrupts
are from 148 to 151, not from 152 to 155 as the manual describes.

This was found by playing around with U-Boot, which typically does not
use interrupts, so the GIC is fully available for experimentation:
With *every* PPI and SPI enabled, an overflowing PMU cycle counter was
found to set a bit in one of the GICD_ISPENDR registers, with careful
counting this was determined to be number 148.

Tested with perf record and perf top on a Pine64-LTS. Also tested with
tasksetting to every core to confirm the assignment between IRQs and
cores.

This somewhat "revert-fixes" commit ed3e9406bcbc ("arm64: dts: allwinner:
a64: Drop PMU node").

Fixes: 34a97fcc71c2 ("arm64: dts: allwinner: a64: Add PMU node")
Fixes: ed3e9406bcbc ("arm64: dts: allwinner: a64: Drop PMU node")
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 70f4cce6be43..ba41c1b85887 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -142,6 +142,15 @@
 		clock-output-names = "ext-osc32k";
 	};
 
+	pmu {
+		compatible = "arm,cortex-a53-pmu";
+		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
+	};
+
 	psci {
 		compatible = "arm,psci-0.2";
 		method = "smc";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
