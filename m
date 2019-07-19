Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E35D6E7C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 17:07:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RaKRXWKWZ4KSaisVmwmCFm6kgJccSmjAz1CRib6Leeo=; b=Q//u/TUtHoZVHS
	8t309SRhQsuIJbpTdzminKIihggUyWp1QP+NJt7NNINkbygHcLUArpMKCctjS211TdxVLnmNuteOV
	1Q7V/Iqg7RPcg4y/T0n+Nd1FyIhzRDfz/7ioOIQLNW2zHTA5WVfhNSG9iVjW8TLioY75UReYhRd+p
	9Y7ZghaqaeffFoLgRLfzmhUaqM91dqHr7Zt7m0ky4P5A4/GgryGnRiqTgm+YlAumpXxw933ag5uAP
	ySY82zzbB5pgbT0YIVL0KQzg+GmlKQ0t4q9VgG+K1MDwlYDdLdRh0wI9vXAegWhD8WfpHWnmYQkMo
	PhSqzZLpuHxFUxBGn4ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoUTy-0003oR-Ia; Fri, 19 Jul 2019 15:07:38 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoUSO-0002gv-V5
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 15:06:04 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190719150557euoutp02739ccd8be59864db3099a50eb25722b3~y10_nA6qH1346313463euoutp02P
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 15:05:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190719150557euoutp02739ccd8be59864db3099a50eb25722b3~y10_nA6qH1346313463euoutp02P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563548757;
 bh=MPIjTyHieD2gGpsaXd2KwE9jDzTxd4a6XuBnBOBEIew=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iphJQAkL6ShbtQFQn2ls3kUUos3F3CCkMLPtaqThIz/LVPafW+AOn83MldnbLymDl
 5twXjXVI+sTalc6ValX/5NNtUoD5rCEBqjZo5KXdjz0hjpUTHpXz5xRlxvlJYU/Q6Z
 mIDzeCTVhdRqAxUS0mJGSrTPhSb4/jy9LVJIfV9M=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190719150556eucas1p1e9ac7c8814f4e8b69d91e1cf0ce617d5~y109477zB3032530325eucas1p1y;
 Fri, 19 Jul 2019 15:05:56 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 49.73.04325.45CD13D5; Fri, 19
 Jul 2019 16:05:56 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190719150556eucas1p291b9e533a80d77e2f58452f0e1fe8b35~y109Ba8iK0285302853eucas1p2Q;
 Fri, 19 Jul 2019 15:05:56 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190719150555eusmtrp2983997a2c991a32f3a605aec877cb344~y108zTXP53114831148eusmtrp2B;
 Fri, 19 Jul 2019 15:05:55 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-6a-5d31dc54f48e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 70.07.04140.35CD13D5; Fri, 19
 Jul 2019 16:05:55 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190719150555eusmtip17fe0becde43c7ac63852dbdd51c5d713~y108EeL4R2871228712eusmtip16;
 Fri, 19 Jul 2019 15:05:54 +0000 (GMT)
From: k.konieczny@partner.samsung.com
To: k.konieczny@partner.samsung.com
Subject: [PATCH v3 4/5] ARM: dts: exynos: add initial data for coupled
 regulators for Exynos5422/5800
Date: Fri, 19 Jul 2019 17:05:34 +0200
Message-Id: <20190719150535.15501-5-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190719150535.15501-1-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrLKsWRmVeSWpSXmKPExsWy7djPc7ohdwxjDU7fVLXYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB7FZZOSmpNZllqkb5fAlXHivW/BCZuKOQvesDcw3tDrYuTkkBAw
 kfh19AprFyMXh5DACkaJswuPM0E4Xxgllj28zg7hfGaUeNd4DCjDAdYyryECpFtIYDmjxLSp
 CA337+9nAkmwCahKbJnxkh3EFhFQlph8bzozSBGzwE8WidO7mllBEsIC6RI/Wr+zgNgsQA0v
 Zk8Aa+AVcJFouvyIDeI+eYnOHbvBajgFXCW+HHwPVSMocXLmE7A4M1BN89bZYAskBD6yS3x6
 2c0K0ewicbSvmQXCFpZ4dXwLO4QtI/F/53wmCLtc4unCPnaI5hZGiQftH6EarCUOH7/ICvIy
 s4CmxPpd+hBhR4m+H1+gIcEnceOtIMQNfBKTtoE8CRLmlehoE4Ko1pWY9/8M1DXSEl3/10HZ
 HhLrT/xgnsCoOAvJN7OQfDMLYe8CRuZVjOKppcW56anFxnmp5XrFibnFpXnpesn5uZsYgYnu
 9L/jX3cw7vuTdIhRgINRiYf3wy3DWCHWxLLiytxDjBIczEoivLdf6scK8aYkVlalFuXHF5Xm
 pBYfYpTmYFES561meBAtJJCeWJKanZpakFoEk2Xi4JRqYMxWPtFQcn+bSpzlasWAhqU/m1WS
 2RLT56nlPbR9N3+B8UuetQePCzxuNnXQt888Znf+y8Ofd6fZqfw8sPiLUnVW2EXr71c7Xq37
 LzZJ2jxhS75WllOAsfKfoul7JdTnTXopOJmxK/Lay0IvW8Yox+tz11y/q+O05c6bgwvyXbof
 M2munVf1u1iJpTgj0VCLuag4EQB0yvpxcAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrNIsWRmVeSWpSXmKPExsVy+t/xu7rBdwxjDTqW6FlsnLGe1eL6l+es
 FvOPnGO16Nv3n9Gi//FrZovz5zewW5xtesNusenxNVaLy7vmsFl87j3CaDHj/D4mi7VH7rJb
 LL1+kcniduMKNos3P84yWbTuPcJu8e/aRhaLzQ+OsTkIeayZt4bRY9OqTjaPzUvqPQ6+28Pk
 0bdlFaPH8RvbmTw+b5ILYI/SsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIyVdK3
 s0lJzcksSy3St0vQyzjx3rfghE3FnAVv2BsYb+h1MXJwSAiYSMxriOhi5OQQEljKKLG1oxrE
 lhCQlmg8vZoJwhaW+HOti62LkQuo5hOjxKRtdxlBEmwCqhJbZrxkB7FFBJQlJt+bzgxSxCzQ
 ySqxZNJfsISwQKrEoQ9TwCaxADW8mD0BLM4r4CLRdPkRG8QGeYnOHbtZQGxOAVeJLwffs0Nc
 5CKxY+U8Zoh6QYmTM5+A1TAD1Tdvnc08gVFgFpLULCSpBYxMqxhFUkuLc9Nzi430ihNzi0vz
 0vWS83M3MQIjctuxn1t2MHa9Cz7EKMDBqMTD++GWYawQa2JZcWXuIUYJDmYlEd7bL/VjhXhT
 EiurUovy44tKc1KLDzGaAj0xkVlKNDkfmCzySuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeW
 pGanphakFsH0MXFwSjUwur8yLDRu/5gxeefdv1etFk6VTH3peFeqae8JFo83D/m89oQbsa+T
 9XqfeVE3Lizk7oyG2qwQ9e0W9/y62g/uNVFOul6/RW+niXThlBW5lwRcsh9vP/qPOynp5nHX
 r908HN+zf6fKCn5svFcSfldgBmfy3g9sd0rWH/30dNd579edPUo1B5fMV2Ipzkg01GIuKk4E
 AJrt68zeAgAA
X-CMS-MailID: 20190719150556eucas1p291b9e533a80d77e2f58452f0e1fe8b35
X-Msg-Generator: CA
X-RootMTR: 20190719150556eucas1p291b9e533a80d77e2f58452f0e1fe8b35
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190719150556eucas1p291b9e533a80d77e2f58452f0e1fe8b35
References: <20190719150535.15501-1-k.konieczny@partner.samsung.com>
 <CGME20190719150556eucas1p291b9e533a80d77e2f58452f0e1fe8b35@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_080601_141435_6C96C58F 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
[k.konieczny: add missing patch description]
Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>
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
