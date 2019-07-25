Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0A974932
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 10:35:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xq7c0XWeziOWw6ISGytaiBxzGm1/aWvm+BOdxyD3iXU=; b=uK8XHn2EKnwPNz
	h5pv0u7gV+81fRfsm/QCoyXAMTIiW1LI42j6XoHf4efjFCmpu+uDCZRb3mjkv7NiP9U4cckC7b9yx
	dhEzgJUcs16qs7xQYVgou09uBo+H4zZ21oANIZc/Hgg684bkTkpuA7iCPpnl2QHFnF/y6lkGJp6q+
	bxN+qvv/p0dXYQAxLi3SHALxfraIcBPCQwDPCPZwAAeLhx2Xn4mbma2z8/EcC9eR2Clt5V7puQPGW
	gFSiqq4nRZAoR8gcBc1s5wfrhtlpWIovOBUAo/FsLu9JXPu0r/ViGIEVE3/+ibr/cZ72W/GqtSRWP
	poIKA4MYcglEcxQtLcXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqZDa-0003Sb-TS; Thu, 25 Jul 2019 08:35:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqZDF-0003Ry-QA
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 08:34:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B0CE344;
 Thu, 25 Jul 2019 01:34:54 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7006F3F694;
 Thu, 25 Jul 2019 01:34:53 -0700 (PDT)
From: Guillaume <guillaume.gardet@arm.com>
To: linux-samsung-soc@vger.kernel.org
Subject: [PATCH V2 1/2] arm: dts: exynos: Add GPU/Mali T604 node to exynos5250
Date: Thu, 25 Jul 2019 10:34:32 +0200
Message-Id: <20190725083433.6505-1-guillaume.gardet@arm.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190724072008.6272-1-guillaume.gardet@free.fr>
References: <20190724072008.6272-1-guillaume.gardet@free.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_013457_899405_1DF2659D 
X-CRM114-Status: GOOD (  10.00  )
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
Cc: Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Guillaume GARDET <guillaume.gardet@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Guillaume GARDET <guillaume.gardet@arm.com>

Add nodes for GPU (Mali T604) to Exynos5250.
Tested with kmscube and glmark2-es2-drm on Chromebook snow.
Load tested on arndale board.

Signed-off-by: Guillaume GARDET <guillaume.gardet@arm.com>

Cc: Kukjin Kim <kgene@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
---
V2 changes: 
  * move mali node as /soc sub-node
  * move gpu_opp_table as mali sub-node
  * minor style updates
  * test on arndale board
  * enable by default
  * add dt bindings, in a separate patch

 arch/arm/boot/dts/exynos5250.dtsi | 47 +++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5250.dtsi b/arch/arm/boot/dts/exynos5250.dtsi
index d5e0392b409e..f7f34d469bde 100644
--- a/arch/arm/boot/dts/exynos5250.dtsi
+++ b/arch/arm/boot/dts/exynos5250.dtsi
@@ -328,6 +328,52 @@
 			iommus = <&sysmmu_rotator>;
 		};
 
+		mali: gpu@11800000 {
+			compatible = "samsung,exynos5250-mali", "arm,mali-t604";
+			reg = <0x11800000 0x5000>;
+			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "job", "mmu", "gpu";
+			clocks = <&clock CLK_G3D>;
+			clock-names = "g3d";
+			operating-points-v2 = <&gpu_opp_table>;
+			power-domains = <&pd_g3d>;
+
+			gpu_opp_table: gpu-opp-table {
+				compatible = "operating-points-v2";
+
+				opp-100000000 {
+					opp-hz = /bits/ 64 <100000000>;
+					opp-microvolt = <925000>;
+				};
+				opp-160000000 {
+					opp-hz = /bits/ 64 <160000000>;
+					opp-microvolt = <925000>;
+				};
+				opp-266000000 {
+					opp-hz = /bits/ 64 <266000000>;
+					opp-microvolt = <1025000>;
+				};
+				opp-350000000 {
+					opp-hz = /bits/ 64 <350000000>;
+					opp-microvolt = <1075000>;
+				};
+				opp-400000000 {
+					opp-hz = /bits/ 64 <400000000>;
+					opp-microvolt = <1125000>;
+				};
+				opp-450000000 {
+					opp-hz = /bits/ 64 <450000000>;
+					opp-microvolt = <1150000>;
+				};
+				opp-533000000 {
+					opp-hz = /bits/ 64 <533000000>;
+					opp-microvolt = <1250000>;
+				};
+			};
+		};
+
 		tmu: tmu@10060000 {
 			compatible = "samsung,exynos5250-tmu";
 			reg = <0x10060000 0x100>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
