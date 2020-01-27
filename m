Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD0614ABDC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 22:58:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PuB57Hw3OLUjxwbz0Gk80HVE3glpfX8qi3tEzRjtrtY=; b=B4IcLifJXMnHEXBBXVgeJR6Hzk
	1Aa04op5kxwlMgsr6Z0XSAfj1LRWLXfNLmsGHJcRfKTe9/Xl5VJ9KEUmBU4/9do4m/PAs/2iX2B0Q
	dwxynFrGjqQ/kYYr/kT+yxi/xffDp29SRLOfy/B1HhxNmeK2Cb1vVDJ8WBMHEwTfnljV/qRodudxL
	K9jdPvnf4ErT6sORCOIgw8yiO11ySIxdQTKMokz8XRTMLkMoqfflszlbOk9ZVAKL4p5T8C5T5vRGw
	sBbqQWOyuTJC7WYqmIdtZPa8Q6cGsDP0aNym/inKBOmmUcVgXMSJKqkHC/v6kiZiRMngR8eFEuDRp
	WQC5zCXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwCMY-00007P-7m; Mon, 27 Jan 2020 21:56:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwCLy-00089P-9r
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 21:55:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4342131B;
 Mon, 27 Jan 2020 13:55:29 -0800 (PST)
Received: from e123648.arm.com (unknown [10.37.12.150])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 45D5F3F68E;
 Mon, 27 Jan 2020 13:55:25 -0800 (PST)
From: lukasz.luba@arm.com
To: kgene@kernel.org, krzk@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: [PATCH 2/3] ARM: dts: exynos: Add Exynos5422 CPU
 dynamic-power-coefficient information
Date: Mon, 27 Jan 2020 21:54:52 +0000
Message-Id: <20200127215453.15144-3-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200127215453.15144-1-lukasz.luba@arm.com>
References: <20200127215453.15144-1-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_135530_467968_42EF10F9 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, b.zolnierkie@samsung.com, robh+dt@kernel.org,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, myungjoo.ham@samsung.com,
 dietmar.eggemann@arm.com, lukasz.luba@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lukasz Luba <lukasz.luba@arm.com>

Add dynamic power coefficient into CPU nodes which let CPUFreq subsystem
register the Energy Model (EM) for the CPUs.

The 'dynamic-power-coefficient' is used for calculating the dynamic power
according to the equation in documentation [1].  The Energy Model (EM)
framework relies on calculated power and cost for each OPP. The OPP power
values come from CPUFreq driver, which registered required callback
function. The simple implementation of a CPUFREQ driver, like cpufreq-dt,
uses 'dev_pm_opp_of_register_em()' which relay on
'dynamic-power-coefficient' to calculate the power of requested OPP for the
EM [2].

The calculated values might be checked in
/sys/kernel/debug/energy_model/pd*/

$ grep . /sys/kernel/debug/energy_model/pd1/cs*/*
/sys/kernel/debug/energy_model/pd1/cs:1000000/cost:558
/sys/kernel/debug/energy_model/pd1/cs:1000000/frequency:1000000
/sys/kernel/debug/energy_model/pd1/cs:1000000/power:310
/sys/kernel/debug/energy_model/pd1/cs:1100000/cost:558
/sys/kernel/debug/energy_model/pd1/cs:1100000/frequency:1100000
/sys/kernel/debug/energy_model/pd1/cs:1100000/power:341
/sys/kernel/debug/energy_model/pd1/cs:1200000/cost:558
/sys/kernel/debug/energy_model/pd1/cs:1200000/frequency:1200000
/sys/kernel/debug/energy_model/pd1/cs:1200000/power:372
/sys/kernel/debug/energy_model/pd1/cs:1300000/cost:674
/sys/kernel/debug/energy_model/pd1/cs:1300000/frequency:1300000
/sys/kernel/debug/energy_model/pd1/cs:1300000/power:487
/sys/kernel/debug/energy_model/pd1/cs:1400000/cost:675 ...

$ grep . /sys/kernel/debug/energy_model/pd0/cs*/*
/sys/kernel/debug/energy_model/pd0/cs:1000000/cost:200
/sys/kernel/debug/energy_model/pd0/cs:1000000/frequency:1000000
/sys/kernel/debug/energy_model/pd0/cs:1000000/power:154
/sys/kernel/debug/energy_model/pd0/cs:1100000/cost:260
/sys/kernel/debug/energy_model/pd0/cs:1100000/frequency:1100000
/sys/kernel/debug/energy_model/pd0/cs:1100000/power:220
/sys/kernel/debug/energy_model/pd0/cs:1200000/cost:260
/sys/kernel/debug/energy_model/pd0/cs:1200000/frequency:1200000
/sys/kernel/debug/energy_model/pd0/cs:1200000/power:240
/sys/kernel/debug/energy_model/pd0/cs:1300000/cost:260
/sys/kernel/debug/energy_model/pd0/cs:1300000/frequency:1300000
/sys/kernel/debug/energy_model/pd0/cs:1300000/power:260
/sys/kernel/debug/energy_model/pd0/cs:200000/cost:130 ...

To provide a proper value of the 'dynamic-power-coefficient' the real power
can be measured using a dedicated hardware, i.e. INA2xx. The Odroid-XU3
hwmon sensors have been used to capture the power value during a sysbench
test running on single core and at each possible OPP. The measured values
were divided by 2, since the dynamic power is typically half of the
consumed power (the second half is static power). Next, the approximation
was made and the power model derived, showing the 'C' value of routhly X.
Check the example equations in drivers/opp/of.c [2].
Thus, i.e. the power = 1.0Watt at 1GHz => 0.5W dynamic power =>
dynamic-power-coefficient = 400

Using this simple technique we can provide and needed coefficient.  The
approximation does not have to be super precised. The proportion is
important and the difference between power consumed by different CPUs
running at the same frequency, which is then used in Energy Aware Scheduler
algorithms. An example power values on Odroid-XU3:

(LITTLE CPU)
/sys/kernel/debug/energy_model/pd0/cs:1000000/frequency:1000000
/sys/kernel/debug/energy_model/pd0/cs:1000000/power:154
(big CPU)
/sys/kernel/debug/energy_model/pd1/cs:1000000/frequency:1000000
/sys/kernel/debug/energy_model/pd1/cs:1000000/power:310

In Odroid-XU3 case the derived coefficient value for 'big' CPU has:
dynamic-power-coefficient = <310>;
while the 'LITTLE':
dynamic-power-coefficient = <128>;

[1] Documentation/devicetree/bindings/arm/cpus.yaml
[2] https://elixir.bootlin.com/linux/v5.4/source/drivers/opp/of.c#L1044

Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
---
 arch/arm/boot/dts/exynos5422-cpus.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5422-cpus.dtsi b/arch/arm/boot/dts/exynos5422-cpus.dtsi
index 1b8605cf2407..c9a0dc99d2fb 100644
--- a/arch/arm/boot/dts/exynos5422-cpus.dtsi
+++ b/arch/arm/boot/dts/exynos5422-cpus.dtsi
@@ -31,6 +31,7 @@
 			operating-points-v2 = <&cluster_a7_opp_table>;
 			#cooling-cells = <2>; /* min followed by max */
 			capacity-dmips-mhz = <539>;
+			dynamic-power-coefficient = <128>;
 		};
 
 		cpu1: cpu@101 {
@@ -43,6 +44,7 @@
 			operating-points-v2 = <&cluster_a7_opp_table>;
 			#cooling-cells = <2>; /* min followed by max */
 			capacity-dmips-mhz = <539>;
+			dynamic-power-coefficient = <128>;
 		};
 
 		cpu2: cpu@102 {
@@ -55,6 +57,7 @@
 			operating-points-v2 = <&cluster_a7_opp_table>;
 			#cooling-cells = <2>; /* min followed by max */
 			capacity-dmips-mhz = <539>;
+			dynamic-power-coefficient = <128>;
 		};
 
 		cpu3: cpu@103 {
@@ -67,6 +70,7 @@
 			operating-points-v2 = <&cluster_a7_opp_table>;
 			#cooling-cells = <2>; /* min followed by max */
 			capacity-dmips-mhz = <539>;
+			dynamic-power-coefficient = <128>;
 		};
 
 		cpu4: cpu@0 {
@@ -79,6 +83,7 @@
 			operating-points-v2 = <&cluster_a15_opp_table>;
 			#cooling-cells = <2>; /* min followed by max */
 			capacity-dmips-mhz = <1024>;
+			dynamic-power-coefficient = <310>;
 		};
 
 		cpu5: cpu@1 {
@@ -91,6 +96,7 @@
 			operating-points-v2 = <&cluster_a15_opp_table>;
 			#cooling-cells = <2>; /* min followed by max */
 			capacity-dmips-mhz = <1024>;
+			dynamic-power-coefficient = <310>;
 		};
 
 		cpu6: cpu@2 {
@@ -103,6 +109,7 @@
 			operating-points-v2 = <&cluster_a15_opp_table>;
 			#cooling-cells = <2>; /* min followed by max */
 			capacity-dmips-mhz = <1024>;
+			dynamic-power-coefficient = <310>;
 		};
 
 		cpu7: cpu@3 {
@@ -115,6 +122,7 @@
 			operating-points-v2 = <&cluster_a15_opp_table>;
 			#cooling-cells = <2>; /* min followed by max */
 			capacity-dmips-mhz = <1024>;
+			dynamic-power-coefficient = <310>;
 		};
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
