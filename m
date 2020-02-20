Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35019165AA9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 10:57:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9lA90aFidduk6zlLkpF9+dK/0i9m/ucALh89Isit8ks=; b=t6gKwmxd97OxrSlvPg2gFekkf1
	yqowQXp7Tb6VBwpetQVA8L+CSwlNOfCydpaYjz4MhyvKc5Q+ethKvdDdJAmq7/46ERwv0cYocYnC5
	fGx/xgC25snie8XgxkFTgYK/pyGIRDG0FtijJ+UW8ECraWBCo50gGvzndRjmNk4c2/CY5zJzG1ChU
	Z+JV1GqMhTfmwf+c025oJUqzU2CwfQPEYUsNw97JeL4fd/2/uMUfcJM/4UTKhfcOLIVvn/KdQE1Iv
	i7vtJH1872sobkUmbbXUszR1yJ8vykRAJ4jlxOQmVvYQRkfwl1ELw3Xn1sGYZiCWZ42FvBcx4q8x/
	QmC/vCLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4iaC-0001aG-2l; Thu, 20 Feb 2020 09:57:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4iZm-0001Ma-TS
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 09:57:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6C20D30E;
 Thu, 20 Feb 2020 01:56:58 -0800 (PST)
Received: from e123648.arm.com (unknown [10.37.12.146])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3CA033F703;
 Thu, 20 Feb 2020 01:56:55 -0800 (PST)
From: Lukasz Luba <lukasz.luba@arm.com>
To: linux-kernel@vger.kernel.org, kgene@kernel.org, krzk@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: [RESEND PATCH v2 1/2] ARM: dts: exynos: Add dynamic-power-coefficient
 to Exynos5422 CPUs
Date: Thu, 20 Feb 2020 09:56:35 +0000
Message-Id: <20200220095636.29469-2-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200220095636.29469-1-lukasz.luba@arm.com>
References: <20200220095636.29469-1-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_015658_994621_84DCED00 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, b.zolnierkie@samsung.com, robh+dt@kernel.org,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, myungjoo.ham@samsung.com,
 dietmar.eggemann@arm.com, lukasz.luba@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To use Energy Aware Scheduler (EAS) the Energy Model (EM) should be
registered for CPUs. Add dynamic-power-coefficient into CPU nodes which
let CPUFreq subsystem register the EM structures. This will increase
energy efficiency of big.LITTLE platforms.

The 'dynamic-power-coefficient' values have been obtained experimenting
with different workloads. The power measurements taken from big CPU
Cluster and LITTLE CPU Cluster has been compared with official documents
and synthetic workloads estimations. The effective power ratio between
Cortex-A7 and Cortex-A15 CPUs (~3x) is also aligned with documentation.

Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
---
 arch/arm/boot/dts/exynos5422-cpus.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5422-cpus.dtsi b/arch/arm/boot/dts/exynos5422-cpus.dtsi
index 1b8605cf2407..4b641b9b8179 100644
--- a/arch/arm/boot/dts/exynos5422-cpus.dtsi
+++ b/arch/arm/boot/dts/exynos5422-cpus.dtsi
@@ -31,6 +31,7 @@
 			operating-points-v2 = <&cluster_a7_opp_table>;
 			#cooling-cells = <2>; /* min followed by max */
 			capacity-dmips-mhz = <539>;
+			dynamic-power-coefficient = <90>;
 		};
 
 		cpu1: cpu@101 {
@@ -43,6 +44,7 @@
 			operating-points-v2 = <&cluster_a7_opp_table>;
 			#cooling-cells = <2>; /* min followed by max */
 			capacity-dmips-mhz = <539>;
+			dynamic-power-coefficient = <90>;
 		};
 
 		cpu2: cpu@102 {
@@ -55,6 +57,7 @@
 			operating-points-v2 = <&cluster_a7_opp_table>;
 			#cooling-cells = <2>; /* min followed by max */
 			capacity-dmips-mhz = <539>;
+			dynamic-power-coefficient = <90>;
 		};
 
 		cpu3: cpu@103 {
@@ -67,6 +70,7 @@
 			operating-points-v2 = <&cluster_a7_opp_table>;
 			#cooling-cells = <2>; /* min followed by max */
 			capacity-dmips-mhz = <539>;
+			dynamic-power-coefficient = <90>;
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
