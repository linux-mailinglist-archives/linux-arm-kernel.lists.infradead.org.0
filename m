Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BAE6203A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 16:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7za7fcOv/xxPiX8jb4kSeQso2ZFB3OoJN+uHJ1vYZFg=; b=gZOS/wNoThuxAq
	+ferzkDLAhFzlI3Pf7j1fsoTevQBSc/5zmrW6x09s4t4DGxtWgLre4h7OK6IlC7N22zD2gZz6ER6B
	PLHRI1lU4Yy7N8fj/VF6blWK+eCCRf5rxvYq8WO6QrblSVtHlNHCx5pjWiopZ/w+mPZ+kZyPR46nW
	htrYA138mXxNmsCafr318lo8WnwlmXU7cr7a/zqUnSDjkTJvqWQsU76foW2wOgtGqwidOGwo4CNAg
	3vBwn/FqPMLCO6KL1jNSY4ySWOl5TMTwo7Ul9sRQzE0Fmxtw+J+6ftr7OZdx7iFd6nbTuW41HLrN8
	0ygEFvbU3j1u2nL/0EUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUO9-0001rk-Ns; Mon, 08 Jul 2019 14:13:05 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUNB-0001Hm-MZ
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 14:12:09 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190708141202euoutp02a23a68b65a959ba74b2c9612cd9835bd~vc-wbyrFL2987529875euoutp02B
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  8 Jul 2019 14:12:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190708141202euoutp02a23a68b65a959ba74b2c9612cd9835bd~vc-wbyrFL2987529875euoutp02B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1562595122;
 bh=B65nsgdjRRoW6mPZXWZON3Kf0yDaJF62dOk5OUhqe0A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CQiVP9E8zoxA01it3Gwj2UuGxAE5Sj8O8OI6EQLKPpGMP8MbUnfP4Ou/V2e+biNxH
 YBWd4nNO/B3Nd/tp9wZyy4pNCSwam/C3825pASJE8WjbOVy+7j/3LaVo0CRJL5j0Gl
 IlGjwBJTUyHFsx/LSPLXMWXML7M+O5L9sAEyQcQM=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190708141201eucas1p1818c7d53d00cdb2e45bbc2c6836ee3c8~vc-vo07c31359313593eucas1p11;
 Mon,  8 Jul 2019 14:12:01 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 24.A2.04377.13F432D5; Mon,  8
 Jul 2019 15:12:01 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190708141200eucas1p12bf901a2589efe92b133b357d2cbc57e~vc-u6DWUc1359313593eucas1p10;
 Mon,  8 Jul 2019 14:12:00 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190708141200eusmtrp2b714a81350b295d4a9ee7225fda102d0~vc-u41TbV1954319543eusmtrp2S;
 Mon,  8 Jul 2019 14:12:00 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-51-5d234f314253
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 48.D4.04140.03F432D5; Mon,  8
 Jul 2019 15:12:00 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190708141159eusmtip2e0d6a2676725e01caa593dc60ebc80a3~vc-uL7ltB0438404384eusmtip2e;
 Mon,  8 Jul 2019 14:11:59 +0000 (GMT)
From: k.konieczny@partner.samsung.com
To: k.konieczny@partner.samsung.com
Subject: [PATCH 3/3] ARM: dts: exynos: add initial data for coupled
 regulators for Exynos5422/5800
Date: Mon,  8 Jul 2019 16:11:40 +0200
Message-Id: <20190708141140.24379-4-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190708141140.24379-1-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa1CMYRj1fvfSNl8bekZNxjaMSxfhxzs0hqbYfxnMMExY+lRsl9ntojJD
 RZTpMgxSKmba0aySbiRk1GrHpRtNJWFZKl2Qli6T1u5+ufw7z3nOec9zZl6OlBrohVx4ZIyg
 ilQoZYw9dbtpssXLN8gjeFXa0FxckVtO4y5TP42LdC00zqo3I5xtHCJxa+stFjenDLO40thJ
 45d1Vxg8lqlDOLe1nsBlujcs1nS1E/h1cgmDhyeaCXzqgY7FM50VFK4yNDEbpfLSwlIkr9Sm
 M/Kq4uPyR1/uE/Ksai2S67vvEPKxSvet7G57vxBBGR4nqHw27LcPa+zIZqL71x/NvPOCPoFS
 vDOQHQf8WvjVlIsykD0n5UsQTAymk+JgQtDz8zojDmMIUqby0R/LlKacEhfXEbSVPSH+Wvq0
 D0mriuGXQHXuZ9aK5/EecP7tJdu7JD9JwbO6VNq6cOZDIKdm0oYpi+GC/jtjxRI+AMZ6Mmgx
 bhGk196jrNiODwSdsRCJGid4cvmjjSctmtSafFsA8CMsFCZPs6I5AL6O60gRO8OgvnqWdwPz
 3SJCxPHw6VoWK5pPIjCcHqXExXpo1LdbruAsCcuhvM5HpDfB54s3bDTwjtA94iTe4AjnbltL
 WmkJnEmTimovKDQ/n63iChnmm7NYDo1lpSgHLc77r03ef23y/uVeRaQWuQix6ohQQb06Uoj3
 Visi1LGRod4HoyIqkeXfPZvRm2pR3fSBBsRzSOYg4dxlwVJaEadOiGhAwJGyeZL6LR7BUkmI
 IiFRUEXtU8UqBXUDcuUomYskaY5hj5QPVcQIRwQhWlD92RKc3cITKOide6/R57jSz3xjviFt
 nKnYVDJKmoI0YUtd2zY+/rBsZ6bD7t5XBeGBTqrLm58n/0hSRh/w3HWoYEeFR0fAuvcarWvm
 /b4+494Z8Nx77HD0ts3DpjiWXDNtl6UfGCka3eLgX0v61wxsrdK0j35NPOu5Mmf7VHtc8QK3
 b0aKeOopk1HqMIXvClKlVvwGV/NZpHMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHIsWRmVeSWpSXmKPExsVy+t/xe7oG/sqxBmfPaVhsnLGe1eL6l+es
 FvOPnGO16Nv3n9Gi//FrZovz5zewW5xtesNusenxNVaLy7vmsFl87j3CaDHj/D4mi7VH7rJb
 LL1+kcniduMKNos3P84yWbTuPcJu8e/aRhaLzQ+OsTkIeayZt4bRY9OqTjaPzUvqPQ6+28Pk
 0bdlFaPH8RvbmTw+b5ILYI/SsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIyVdK3
 s0lJzcksSy3St0vQyzh8pZ+t4Ll1Re/2S6wNjE16XYycHBICJhK/lq5n6WLk4hASWMoosWLm
 XTaIhLRE4+nVTBC2sMSfa11sEEWfGCU+7znIDpJgE1CV2DLjJZgtIqAsMfnedGaQImaBTlaJ
 JZP+giWEBZIklt99xQJiswA1TD3+CWwDr4CLxOdbXawQG+QlOnfsBqvhFHCVOPJ4HiOILQRU
 s+7yFCaIekGJkzOfgNUwA9U3b53NPIFRYBaS1CwkqQWMTKsYRVJLi3PTc4uN9IoTc4tL89L1
 kvNzNzEC43LbsZ9bdjB2vQs+xCjAwajEw8shpxQrxJpYVlyZe4hRgoNZSYR3n7tyrBBvSmJl
 VWpRfnxRaU5q8SFGU6AnJjJLiSbnA1NGXkm8oamhuYWlobmxubGZhZI4b4fAwRghgfTEktTs
 1NSC1CKYPiYOTqkGxsQXii8ePtc5KPO/dh+HjYVEB3Ooo/lytgOf3neeXqXDc3Lizok2u9V1
 3VksDa+VtRrnHBaM7D9f6vs4+ofMP9NJjeqvdD4taT+ROr3FtjjsZm+4sMHSu7/Uarb+iH/3
 Z9O11MO2PqozJH6GGZTN2XCZg2tvbuC7YofuvlciX+Z4C62JUWReoMRSnJFoqMVcVJwIABy4
 ZpThAgAA
X-CMS-MailID: 20190708141200eucas1p12bf901a2589efe92b133b357d2cbc57e
X-Msg-Generator: CA
X-RootMTR: 20190708141200eucas1p12bf901a2589efe92b133b357d2cbc57e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190708141200eucas1p12bf901a2589efe92b133b357d2cbc57e
References: <20190708141140.24379-1-k.konieczny@partner.samsung.com>
 <CGME20190708141200eucas1p12bf901a2589efe92b133b357d2cbc57e@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_071206_023986_D7786DEB 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 linux-samsung-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marek Szyprowski <m.szyprowski@samsung.com>

Declare Exynos5422/5800 voltage ranges for opp points for big cpu core and
bus wcore and couple their voltage supllies as vdd_arm and vdd_int should
be in 300mV range.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5420.dtsi             | 34 +++++++++----------
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi |  4 +++
 arch/arm/boot/dts/exynos5800-peach-pi.dts     |  4 +++
 arch/arm/boot/dts/exynos5800.dtsi             | 32 ++++++++---------
 4 files changed, 41 insertions(+), 33 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index 5fb2326875dc..0cbf74750553 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -48,62 +48,62 @@
 			opp-shared;
 			opp-1800000000 {
 				opp-hz = /bits/ 64 <1800000000>;
-				opp-microvolt = <1250000>;
+				opp-microvolt = <1250000 1250000 1500000>;
 				clock-latency-ns = <140000>;
 			};
 			opp-1700000000 {
 				opp-hz = /bits/ 64 <1700000000>;
-				opp-microvolt = <1212500>;
+				opp-microvolt = <1212500 1212500 1500000>;
 				clock-latency-ns = <140000>;
 			};
 			opp-1600000000 {
 				opp-hz = /bits/ 64 <1600000000>;
-				opp-microvolt = <1175000>;
+				opp-microvolt = <1175000 1175000 1500000>;
 				clock-latency-ns = <140000>;
 			};
 			opp-1500000000 {
 				opp-hz = /bits/ 64 <1500000000>;
-				opp-microvolt = <1137500>;
+				opp-microvolt = <1137500 1137500 1500000>;
 				clock-latency-ns = <140000>;
 			};
 			opp-1400000000 {
 				opp-hz = /bits/ 64 <1400000000>;
-				opp-microvolt = <1112500>;
+				opp-microvolt = <1112500 1112500 1500000>;
 				clock-latency-ns = <140000>;
 			};
 			opp-1300000000 {
 				opp-hz = /bits/ 64 <1300000000>;
-				opp-microvolt = <1062500>;
+				opp-microvolt = <1062500 1062500 1500000>;
 				clock-latency-ns = <140000>;
 			};
 			opp-1200000000 {
 				opp-hz = /bits/ 64 <1200000000>;
-				opp-microvolt = <1037500>;
+				opp-microvolt = <1037500 1037500 1500000>;
 				clock-latency-ns = <140000>;
 			};
 			opp-1100000000 {
 				opp-hz = /bits/ 64 <1100000000>;
-				opp-microvolt = <1012500>;
+				opp-microvolt = <1012500 1012500 1500000>;
 				clock-latency-ns = <140000>;
 			};
 			opp-1000000000 {
 				opp-hz = /bits/ 64 <1000000000>;
-				opp-microvolt = < 987500>;
+				opp-microvolt = < 987500 987500 1500000>;
 				clock-latency-ns = <140000>;
 			};
 			opp-900000000 {
 				opp-hz = /bits/ 64 <900000000>;
-				opp-microvolt = < 962500>;
+				opp-microvolt = < 962500 962500 1500000>;
 				clock-latency-ns = <140000>;
 			};
 			opp-800000000 {
 				opp-hz = /bits/ 64 <800000000>;
-				opp-microvolt = < 937500>;
+				opp-microvolt = < 937500 937500 1500000>;
 				clock-latency-ns = <140000>;
 			};
 			opp-700000000 {
 				opp-hz = /bits/ 64 <700000000>;
-				opp-microvolt = < 912500>;
+				opp-microvolt = < 912500 912500 1500000>;
 				clock-latency-ns = <140000>;
 			};
 		};
@@ -1100,23 +1100,23 @@
 
 			opp00 {
 				opp-hz = /bits/ 64 <84000000>;
-				opp-microvolt = <925000>;
+				opp-microvolt = <925000 925000 1400000>;
 			};
 			opp01 {
 				opp-hz = /bits/ 64 <111000000>;
-				opp-microvolt = <950000>;
+				opp-microvolt = <950000 950000 1400000>;
 			};
 			opp02 {
 				opp-hz = /bits/ 64 <222000000>;
-				opp-microvolt = <950000>;
+				opp-microvolt = <950000 950000 1400000>;
 			};
 			opp03 {
 				opp-hz = /bits/ 64 <333000000>;
-				opp-microvolt = <950000>;
+				opp-microvolt = <950000 950000 1400000>;
 			};
 			opp04 {
 				opp-hz = /bits/ 64 <400000000>;
-				opp-microvolt = <987500>;
+				opp-microvolt = <987500 987500 1400000>;
 			};
 		};
 
diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
index 25d95de15c9b..65d094256b54 100644
--- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
@@ -428,6 +428,8 @@
 				regulator-max-microvolt = <1500000>;
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&buck3_reg>;
+				regulator-coupled-max-spread = <300000>;
 			};
 
 			buck3_reg: BUCK3 {
@@ -436,6 +438,8 @@
 				regulator-max-microvolt = <1400000>;
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&buck2_reg>;
+				regulator-coupled-max-spread = <300000>;
 			};
 
 			buck4_reg: BUCK4 {
diff --git a/arch/arm/boot/dts/exynos5800-peach-pi.dts b/arch/arm/boot/dts/exynos5800-peach-pi.dts
index e0f470fe54c8..5c1e965ed7e9 100644
--- a/arch/arm/boot/dts/exynos5800-peach-pi.dts
+++ b/arch/arm/boot/dts/exynos5800-peach-pi.dts
@@ -257,6 +257,8 @@
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-ramp-delay = <12500>;
+				regulator-coupled-with = <&buck3_reg>;
+				regulator-coupled-max-spread = <300000>;
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
@@ -269,6 +271,8 @@
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-ramp-delay = <12500>;
+				regulator-coupled-with = <&buck2_reg>;
+				regulator-coupled-max-spread = <300000>;
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
diff --git a/arch/arm/boot/dts/exynos5800.dtsi b/arch/arm/boot/dts/exynos5800.dtsi
index 57d3b319fd65..2a74735d161c 100644
--- a/arch/arm/boot/dts/exynos5800.dtsi
+++ b/arch/arm/boot/dts/exynos5800.dtsi
@@ -22,61 +22,61 @@
 
 &cluster_a15_opp_table {
 	opp-1700000000 {
-		opp-microvolt = <1250000>;
+		opp-microvolt = <1250000 1250000 1500000>;
 	};
 	opp-1600000000 {
-		opp-microvolt = <1250000>;
+		opp-microvolt = <1250000 1250000 1500000>;
 	};
 	opp-1500000000 {
-		opp-microvolt = <1100000>;
+		opp-microvolt = <1100000 1100000 1500000>;
 	};
 	opp-1400000000 {
-		opp-microvolt = <1100000>;
+		opp-microvolt = <1100000 1100000 1500000>;
 	};
 	opp-1300000000 {
-		opp-microvolt = <1100000>;
+		opp-microvolt = <1100000 1100000 1500000>;
 	};
 	opp-1200000000 {
-		opp-microvolt = <1000000>;
+		opp-microvolt = <1000000 1000000 1500000>;
 	};
 	opp-1100000000 {
-		opp-microvolt = <1000000>;
+		opp-microvolt = <1000000 1000000 1500000>;
 	};
 	opp-1000000000 {
-		opp-microvolt = <1000000>;
+		opp-microvolt = <1000000 1000000 1500000>;
 	};
 	opp-900000000 {
-		opp-microvolt = <1000000>;
+		opp-microvolt = <1000000 1000000 1500000>;
 	};
 	opp-800000000 {
-		opp-microvolt = <900000>;
+		opp-microvolt = <900000 900000 1500000>;
 	};
 	opp-700000000 {
-		opp-microvolt = <900000>;
+		opp-microvolt = <900000 900000 1500000>;
 	};
 	opp-600000000 {
 		opp-hz = /bits/ 64 <600000000>;
-		opp-microvolt = <900000>;
+		opp-microvolt = <900000 900000 1500000>;
 		clock-latency-ns = <140000>;
 	};
 	opp-500000000 {
 		opp-hz = /bits/ 64 <500000000>;
-		opp-microvolt = <900000>;
+		opp-microvolt = <900000 900000 1500000>;
 		clock-latency-ns = <140000>;
 	};
 	opp-400000000 {
 		opp-hz = /bits/ 64 <400000000>;
-		opp-microvolt = <900000>;
+		opp-microvolt = <900000 900000 1500000>;
 		clock-latency-ns = <140000>;
 	};
 	opp-300000000 {
 		opp-hz = /bits/ 64 <300000000>;
-		opp-microvolt = <900000>;
+		opp-microvolt = <900000 900000 1500000>;
 		clock-latency-ns = <140000>;
 	};
 	opp-200000000 {
 		opp-hz = /bits/ 64 <200000000>;
-		opp-microvolt = <900000>;
+		opp-microvolt = <900000 900000 1500000>;
 		clock-latency-ns = <140000>;
 	};
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
