Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE057519B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:44:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RaKRXWKWZ4KSaisVmwmCFm6kgJccSmjAz1CRib6Leeo=; b=sED7Ou8AgsXM9G
	yXikmCmHIi2dzRznCnba7729Kv3mM5o0uOxRwh31LAsHUQwkm0MQ0bGcqXPsAN4Tev5jXa/2pld+w
	TPAOHlaiPjHO0XzJ+h3cAwp0qyq+4vJ8KLG/xcD2cqfyozvemU/U8ba8JaYClSZTInQC2kFfREuCt
	ZLBk7wa+j7spDyF6tKMxNEs7QcmDiev9fvGvwMUcGTn+g3EHzJdfo9ljzZEqhzBKsQiW9TKdIgbqx
	E+BPS3j99jxW48kwB3Wj/2c5hMu01Tk6PYIkHm0dhVI5qGk6C/gCrG29OmSRCS32hRmTOPWmNpdFA
	if7R04LJHYjxFFZbHTww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqeyV-0003w7-OH; Thu, 25 Jul 2019 14:44:08 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqext-0003hU-Hq
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 14:43:31 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190725144328euoutp02e64dd42bc05836567194bc58b744be6d~0rZDbu1qN1279912799euoutp02B
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 14:43:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190725144328euoutp02e64dd42bc05836567194bc58b744be6d~0rZDbu1qN1279912799euoutp02B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1564065808;
 bh=MPIjTyHieD2gGpsaXd2KwE9jDzTxd4a6XuBnBOBEIew=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ooBgOqOnzO7EXVg1IC3xJvaP1B3fCvzS7dDu63DAXZoS52Beukh1ScubKI1A2Q+Rg
 G0ijxxAeHizFm8u/Xmj1Fp6/9yJZr0P4kay+L/7MuSnnaLiwS4JQzu17TSkOpnI2tU
 cChS4Z9XhCmU/tNTBVaNccx/0XL2vYYyoGdBPG1Y=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190725144327eucas1p1d776dde6d9dc22f91efe2178e1c7b333~0rZCp0O-71363913639eucas1p1l;
 Thu, 25 Jul 2019 14:43:27 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id DC.CA.04377.F00C93D5; Thu, 25
 Jul 2019 15:43:27 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190725144326eucas1p29087ad57d52c5978525bcfb050d1a0e6~0rZB68VJ41681816818eucas1p2R;
 Thu, 25 Jul 2019 14:43:26 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190725144326eusmtrp1536e6e2424dba4f504625bd025c44389~0rZBs13CY0724307243eusmtrp1D;
 Thu, 25 Jul 2019 14:43:26 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-96-5d39c00f8ecf
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 8F.2E.04146.E00C93D5; Thu, 25
 Jul 2019 15:43:26 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190725144325eusmtip1e67b1c878f367b113fca353930459434~0rZA8xHa30248702487eusmtip1E;
 Thu, 25 Jul 2019 14:43:25 +0000 (GMT)
From: k.konieczny@partner.samsung.com
To: k.konieczny@partner.samsung.com
Subject: [PATCH v4 3/5] ARM: dts: exynos: add initial data for coupled
 regulators for Exynos5422/5800
Date: Thu, 25 Jul 2019 16:42:58 +0200
Message-Id: <20190725144300.25014-4-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190725144300.25014-1-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0gTcRzvd7fbnavZOYX90tCahBaoGVm/SKTIYEVBQYFUUkvPKeqUnY+y
 P/KxnFmppOEjsYdJY/jIV8pMSV1uYW6KotIoDLWHzSx8oFiubafUf5/7fl6/DxyFiyyEJxWn
 SGGUClmChC/gvexbMQVsfX0ocm9hOR81ljUQaGzhC4Ee6U0EKuiyAVQ4+R1HZvMLEg1kW0nU
 NDlKoGFdJR/N39MDVGbuwlCd/gOJasaGMGTJ0vCRdXkAQ7c69SRaG23koeaJPv4RkbS2qhZI
 m7S3+dLmZzel3T9eYdKCFi2QGsbbMOl8k/cZ8oIgNJpJiEtjlEFhVwSxxrnTycbQa5WPrWQm
 GA/MBy4UpPdDjfEJcGARrQFw2XqJwwsAFmk25wOBHc8D+MaSS24YjMslPE70HMBKM8uJ7Ab1
 ohpzEHx6F2wp++Y0eNC+sPhjKe4Q4fQKD/brcggH4U7L4XuLyVnNsxss6hmnQUiHw+aSRYxr
 84G32zucbS70cfgnqw5wGjf4tnzKecftmpzWh84CSM+ScDLbaA+i7B/hcKTUk8txhzOGlvUF
 22F/8V0eh9Ph9JMCkvOqAJxQ/1onDsNewxDhyMHp3bBBF8Sdj8IVXSHg4l3h+Kwb9wRXeP+l
 Y6PjLIR5uSJOHQCrbO8IDnvBfFv9OpbCtvkasgjsrPhvTMV/Yyr+9T4GuBaImVQ2Uc6w+xRM
 eiArS2RTFfLAqKTEJmD/5frXDAvtQPf7ag+gKSDZIvTXHooUEbI09npiD4AULvEQtrbbT8Jo
 2fUMRpl0WZmawLA9wIviScTCG5smLopouSyFiWeYZEa5wWKUi2cmiPksiw/3p2u1rsW7DGJc
 4fcAGxE3o59zPtXV2yhlUWwYvhThPWWtS11KqbfNrQb3nt6WhWLFORk1W6jzwydOVu+YSfA7
 FvI05kOl6o7Cfcx8avWc3K87IqTzq++EZnp2VJU3GX/wU0eXyd33wMjdqLO7I6JUB60xz9Vx
 g4MZ+yU8NlYWvAdXsrK/GhdGv24DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLIsWRmVeSWpSXmKPExsVy+t/xu7p8ByxjDb78E7HYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB6lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRv
 Z5OSmpNZllqkb5egl3HivW/BCZuKOQvesDcw3tDrYuTkkBAwkTjxYwpLFyMXh5DAUkaJP5ff
 MEIkpCUaT69mgrCFJf5c62KDKPrEKHG7eTszSIJNQFViy4yX7CC2iICyxOR705lBipgFOlkl
 lkz6C5YQFkiVODtrExuIzQLUcLv9FVicV8BFYvOUr1Ab5CU6d+xmAbE5BVwl/jauBbtCCKim
 sf8YI0S9oMTJmU/AapiB6pu3zmaewCgwC0lqFpLUAkamVYwiqaXFuem5xYZ6xYm5xaV56XrJ
 +bmbGIFRue3Yz807GC9tDD7EKMDBqMTDe2G5ZawQa2JZcWXuIUYJDmYlEd6tO4BCvCmJlVWp
 RfnxRaU5qcWHGE2BnpjILCWanA9MGHkl8YamhuYWlobmxubGZhZK4rwdAgdjhATSE0tSs1NT
 C1KLYPqYODilGhhnaAYYRbPVPE2um95aysIZqDVp8TG5pOxHByzyJNvin0hJL3r8bHf0oefb
 Z3pk9OjwzLyodNl7VsYebtP5D0MmWR+w2BtoNHVb1VFVtaaiU9u5ba0YN+hL5oZHhxiYiHH9
 Oyn5LLk8rcQsS6xnyvEzfKfnfis6IpI0K/HQtYVangsvdb76dEyJpTgj0VCLuag4EQBUdjvH
 4AIAAA==
X-CMS-MailID: 20190725144326eucas1p29087ad57d52c5978525bcfb050d1a0e6
X-Msg-Generator: CA
X-RootMTR: 20190725144326eucas1p29087ad57d52c5978525bcfb050d1a0e6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190725144326eucas1p29087ad57d52c5978525bcfb050d1a0e6
References: <20190725144300.25014-1-k.konieczny@partner.samsung.com>
 <CGME20190725144326eucas1p29087ad57d52c5978525bcfb050d1a0e6@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_074329_720445_E631CCB7 
X-CRM114-Status: GOOD (  15.22  )
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
