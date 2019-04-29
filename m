Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F1EE93A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:35:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aF+/LexfmCTsbRgr0qk/8gQ8VXqbXor7IX/1j8sOHz4=; b=NDM47YO5tKJsAA
	NWqjBuPz5mY/UbYt/BjTg3beeFzE2jYa5fmNPmsiuxNSzabKqqM0Xutd8dp6x+5GC0Ga4sxqiZi06
	nRuo3l74lfnwmvQVxJLKlqsMoY4E/hLrsckcYf1t913I+VVkW1okFMDec8hSMUEjasOvJ/rnGwZa2
	euuDvKB/jdcgP7ejZ9mkGnqo0OXFMhslwdfqPSz4NL6HZwaI8dTHD6+XRpKdiW1lZnmxo3oJykyoE
	Z1Vjkqw/HLdhplFUR54JWmlI2Psio36IFEp8OL65A1VdVkj/YB379dKVukTw2OSVIX6gln+ggPx56
	+R5X5C14b0efxR902h/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLABp-0003Or-Lh; Mon, 29 Apr 2019 17:35:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLABg-0003Ni-O7
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:35:35 +0000
Received: from localhost.localdomain (unknown [194.230.155.114])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 59E182087B;
 Mon, 29 Apr 2019 17:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556559332;
 bh=W/GoX7yGvh8bG51wr9bb4gUdm7k34g84QPI9aUcc8+Q=;
 h=From:To:Subject:Date:From;
 b=azmhrkYJy7BbsRwpc1miEtNVhrmHJzqfJtmD2TrJwXpla9dQTAtMBYppjuaRHMUaG
 02T75tJ6yk1HU6h+7TsXKcLMykYIqBxLCeKq57A+H4t6yAWdID/JPJlHboJ+zu54Oj
 Gl+E34Y5hQRQdC+5f7Qa/H8Li6UBs3UAzvuo/owA=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: exynos: Move CPU OPP tables out of SoC node on
 Exynos5420
Date: Mon, 29 Apr 2019 19:35:24 +0200
Message-Id: <20190429173524.4870-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_103532_812861_4E5FA16E 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The cpus node is a top-level node, not inside the soc.  Therefore its
OPP tables should be there as well.

This also fixes the DTC warnings like:

    arch/arm/boot/dts/exynos5420.dtsi:46.37-109.5:
        Warning simple_bus_reg): /soc/opp_table0: missing or empty reg/ranges property

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/boot/dts/exynos5420.dtsi | 216 +++++++++++++++---------------
 1 file changed, 109 insertions(+), 107 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index 5fb2326875dc..16088186a33a 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -42,117 +42,119 @@
 	 * by exynos5420-cpus.dtsi or exynos5422-cpus.dtsi.
 	 */
 
-	soc: soc {
-		cluster_a15_opp_table: opp_table0 {
-			compatible = "operating-points-v2";
-			opp-shared;
-			opp-1800000000 {
-				opp-hz = /bits/ 64 <1800000000>;
-				opp-microvolt = <1250000>;
-				clock-latency-ns = <140000>;
-			};
-			opp-1700000000 {
-				opp-hz = /bits/ 64 <1700000000>;
-				opp-microvolt = <1212500>;
-				clock-latency-ns = <140000>;
-			};
-			opp-1600000000 {
-				opp-hz = /bits/ 64 <1600000000>;
-				opp-microvolt = <1175000>;
-				clock-latency-ns = <140000>;
-			};
-			opp-1500000000 {
-				opp-hz = /bits/ 64 <1500000000>;
-				opp-microvolt = <1137500>;
-				clock-latency-ns = <140000>;
-			};
-			opp-1400000000 {
-				opp-hz = /bits/ 64 <1400000000>;
-				opp-microvolt = <1112500>;
-				clock-latency-ns = <140000>;
-			};
-			opp-1300000000 {
-				opp-hz = /bits/ 64 <1300000000>;
-				opp-microvolt = <1062500>;
-				clock-latency-ns = <140000>;
-			};
-			opp-1200000000 {
-				opp-hz = /bits/ 64 <1200000000>;
-				opp-microvolt = <1037500>;
-				clock-latency-ns = <140000>;
-			};
-			opp-1100000000 {
-				opp-hz = /bits/ 64 <1100000000>;
-				opp-microvolt = <1012500>;
-				clock-latency-ns = <140000>;
-			};
-			opp-1000000000 {
-				opp-hz = /bits/ 64 <1000000000>;
-				opp-microvolt = < 987500>;
-				clock-latency-ns = <140000>;
-			};
-			opp-900000000 {
-				opp-hz = /bits/ 64 <900000000>;
-				opp-microvolt = < 962500>;
-				clock-latency-ns = <140000>;
-			};
-			opp-800000000 {
-				opp-hz = /bits/ 64 <800000000>;
-				opp-microvolt = < 937500>;
-				clock-latency-ns = <140000>;
-			};
-			opp-700000000 {
-				opp-hz = /bits/ 64 <700000000>;
-				opp-microvolt = < 912500>;
-				clock-latency-ns = <140000>;
-			};
+	cluster_a15_opp_table: opp_table0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-1800000000 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <1250000>;
+			clock-latency-ns = <140000>;
+		};
+		opp-1700000000 {
+			opp-hz = /bits/ 64 <1700000000>;
+			opp-microvolt = <1212500>;
+			clock-latency-ns = <140000>;
+		};
+		opp-1600000000 {
+			opp-hz = /bits/ 64 <1600000000>;
+			opp-microvolt = <1175000>;
+			clock-latency-ns = <140000>;
+		};
+		opp-1500000000 {
+			opp-hz = /bits/ 64 <1500000000>;
+			opp-microvolt = <1137500>;
+			clock-latency-ns = <140000>;
+		};
+		opp-1400000000 {
+			opp-hz = /bits/ 64 <1400000000>;
+			opp-microvolt = <1112500>;
+			clock-latency-ns = <140000>;
+		};
+		opp-1300000000 {
+			opp-hz = /bits/ 64 <1300000000>;
+			opp-microvolt = <1062500>;
+			clock-latency-ns = <140000>;
+		};
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <1037500>;
+			clock-latency-ns = <140000>;
+		};
+		opp-1100000000 {
+			opp-hz = /bits/ 64 <1100000000>;
+			opp-microvolt = <1012500>;
+			clock-latency-ns = <140000>;
+		};
+		opp-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-microvolt = < 987500>;
+			clock-latency-ns = <140000>;
+		};
+		opp-900000000 {
+			opp-hz = /bits/ 64 <900000000>;
+			opp-microvolt = < 962500>;
+			clock-latency-ns = <140000>;
+		};
+		opp-800000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = < 937500>;
+			clock-latency-ns = <140000>;
+		};
+		opp-700000000 {
+			opp-hz = /bits/ 64 <700000000>;
+			opp-microvolt = < 912500>;
+			clock-latency-ns = <140000>;
 		};
+	};
 
-		cluster_a7_opp_table: opp_table1 {
-			compatible = "operating-points-v2";
-			opp-shared;
-			opp-1300000000 {
-				opp-hz = /bits/ 64 <1300000000>;
-				opp-microvolt = <1275000>;
-				clock-latency-ns = <140000>;
-			};
-			opp-1200000000 {
-				opp-hz = /bits/ 64 <1200000000>;
-				opp-microvolt = <1212500>;
-				clock-latency-ns = <140000>;
-			};
-			opp-1100000000 {
-				opp-hz = /bits/ 64 <1100000000>;
-				opp-microvolt = <1162500>;
-				clock-latency-ns = <140000>;
-			};
-			opp-1000000000 {
-				opp-hz = /bits/ 64 <1000000000>;
-				opp-microvolt = <1112500>;
-				clock-latency-ns = <140000>;
-			};
-			opp-900000000 {
-				opp-hz = /bits/ 64 <900000000>;
-				opp-microvolt = <1062500>;
-				clock-latency-ns = <140000>;
-			};
-			opp-800000000 {
-				opp-hz = /bits/ 64 <800000000>;
-				opp-microvolt = <1025000>;
-				clock-latency-ns = <140000>;
-			};
-			opp-700000000 {
-				opp-hz = /bits/ 64 <700000000>;
-				opp-microvolt = <975000>;
-				clock-latency-ns = <140000>;
-			};
-			opp-600000000 {
-				opp-hz = /bits/ 64 <600000000>;
-				opp-microvolt = <937500>;
-				clock-latency-ns = <140000>;
-			};
+	cluster_a7_opp_table: opp_table1 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-1300000000 {
+			opp-hz = /bits/ 64 <1300000000>;
+			opp-microvolt = <1275000>;
+			clock-latency-ns = <140000>;
+		};
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <1212500>;
+			clock-latency-ns = <140000>;
+		};
+		opp-1100000000 {
+			opp-hz = /bits/ 64 <1100000000>;
+			opp-microvolt = <1162500>;
+			clock-latency-ns = <140000>;
+		};
+		opp-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-microvolt = <1112500>;
+			clock-latency-ns = <140000>;
+		};
+		opp-900000000 {
+			opp-hz = /bits/ 64 <900000000>;
+			opp-microvolt = <1062500>;
+			clock-latency-ns = <140000>;
+		};
+		opp-800000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <1025000>;
+			clock-latency-ns = <140000>;
+		};
+		opp-700000000 {
+			opp-hz = /bits/ 64 <700000000>;
+			opp-microvolt = <975000>;
+			clock-latency-ns = <140000>;
+		};
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <937500>;
+			clock-latency-ns = <140000>;
 		};
+	};
 
+	soc: soc {
 		cci: cci@10d20000 {
 			compatible = "arm,cci-400";
 			#address-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
