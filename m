Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDA5728F2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 09:20:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yitgq+AvRQHsD6cHbVOqhFCOyNUBF2GnMUSkRbSJemE=; b=P1aTcnptKgm9bS
	VEzpyIxv+Oqo9HTFYBU5qWK1+jAA9rdQpxaNHOggmU1eDrr+oMpAYjVD3w7bekAl2P2/cEU/xFVWG
	xkx6S6hr+yTsGbrUfrsfquG5l2XVcpYXPRXdtcaDyfPASGJyfKI5EOGIA0YLausdqlojsj8tREMTJ
	gZfDE8UkKvRTfWzWztUNo7MgSiSbQswiidCL7S70upRv5hBwSUHCfyzcPQ7jAc8thOvXK1VeOHLz1
	HymBVlJIyDHb83vjb847bZC0XJ8k1cgx2NUc7A/u2JwCog7lYfHnpyX7Q9VkjjeozfSG97MPierR1
	9n45Ge/VZxy2b1mLs1ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqBZo-000835-Hu; Wed, 24 Jul 2019 07:20:40 +0000
Received: from smtp1-g21.free.fr ([212.27.42.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqBZc-00082L-0B
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 07:20:29 +0000
Received: from localhost.localdomain (unknown [91.163.92.88])
 by smtp1-g21.free.fr (Postfix) with ESMTP id 8711EB0054E;
 Wed, 24 Jul 2019 09:20:20 +0200 (CEST)
From: Guillaume GARDET <guillaume.gardet@free.fr>
To: linux-samsung-soc@vger.kernel.org
Subject: [PATCH] arm: dts: exynos: Add GPU/Mali T604 node to exynos5250
Date: Wed, 24 Jul 2019 09:20:08 +0200
Message-Id: <20190724072008.6272-1-guillaume.gardet@free.fr>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_002028_194690_3A3806F9 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.27.42.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (guillaume.gardet[at]free.fr)
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

Add nodes for GPU (Mali T604) to Exynos5250, disabled by default.
Tested with kmscube on Chromebook snow.

Signed-off-by: Guillaume GARDET <guillaume.gardet@arm.com>

Cc: Kukjin Kim <kgene@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org

---
 arch/arm/boot/dts/exynos5250.dtsi | 47 +++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5250.dtsi b/arch/arm/boot/dts/exynos5250.dtsi
index d5e0392b409e..5ce4b2853cf2 100644
--- a/arch/arm/boot/dts/exynos5250.dtsi
+++ b/arch/arm/boot/dts/exynos5250.dtsi
@@ -1097,6 +1097,53 @@
 		 */
 		clock-frequency = <24000000>;
 	};
+
+	mali: gpu@0x11800000 {
+		compatible = "samsung,exynos5250-mali", "arm,mali-t604";
+		reg = <0x11800000 0x5000>;
+		interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
+		             <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "job", "mmu", "gpu";
+		clocks = <&clock CLK_G3D>;
+		clock-names = "g3d";
+		operating-points-v2 = <&gpu_opp_table>;
+		power-domains = <&pd_g3d>;
+		status = "disabled";
+	};
+
+	gpu_opp_table: gpu-opp-table {
+		compatible = "operating-points-v2";
+
+		opp-100000000 {
+			opp-hz = /bits/ 64 <100000000>;
+			opp-microvolt = <925000>;
+		};
+		opp-160000000 {
+			opp-hz = /bits/ 64 <160000000>;
+			opp-microvolt = <925000>;
+		};
+		opp-266000000 {
+			opp-hz = /bits/ 64 <266000000>;
+			opp-microvolt = <1025000>;
+		};
+		opp-350000000 {
+			opp-hz = /bits/ 64 <350000000>;
+			opp-microvolt = <1075000>;
+		};
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <1125000>;
+		};
+		opp-450000000 {
+			opp-hz = /bits/ 64 <450000000>;
+			opp-microvolt = <1150000>;
+		};
+		opp-533000000 {
+			opp-hz = /bits/ 64 <533000000>;
+			opp-microvolt = <1250000>;
+		};
+	};
 };
 
 &dp {
-- 
2.22.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
