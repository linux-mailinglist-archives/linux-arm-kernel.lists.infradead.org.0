Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6598F83A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 02:59:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lKfb1uuiZQ8j1aLeH39N3qFYNEBB69VeKfCEAQOhzJw=; b=fCaBQgMwIS+0CttvGn6wRqkhqK
	MJxGtVzpEsXJ52nuiYpI/dyGZy5AAR6O4JeDWmrpRCV7oAGGcSA/TxO+H7x8wt9wFsgAnEIvfz9r3
	ykZwkJuSATyC7mtlEmxliSImRN5G37MvGy4VdAf8Rt7ppEIYyui6Y6jbjqpcPdOG1gftvxqt5xCxU
	MOpuO7nRTQ8NtSm9+zXGL4iforeOuhS3ugg9r52pF5oE1gvdpr1dyiBUSqZVUvxRrW1OlQE1TYpo1
	Ay/qEKak1XDsFlV17fxy8T0rWWAYVpjkjgmiuDyKE9ofErL6NQjACvrgljW0i48AQ8vokUANojyr9
	aOifs0Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyQZz-0008N1-SR; Fri, 16 Aug 2019 00:58:55 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyQYY-0007hS-1M
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 00:57:27 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id BCB231A0056;
 Fri, 16 Aug 2019 02:57:24 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 42A321A00B8;
 Fri, 16 Aug 2019 02:57:15 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 92E9A40305;
 Fri, 16 Aug 2019 08:57:03 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 daniel.lezcano@linaro.org, tglx@linutronix.de, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, ping.bai@nxp.com, jun.li@nxp.com,
 l.stach@pengutronix.de, abel.vesa@nxp.com, ccaione@baylibre.com,
 andrew.smirnov@gmail.com, angus@akkea.ca, agx@sigxcpu.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V6 4/4] arm64: dts: imx8mm: Enable cpu-idle driver
Date: Thu, 15 Aug 2019 20:38:45 -0400
Message-Id: <1565915925-21009-4-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565915925-21009-1-git-send-email-Anson.Huang@nxp.com>
References: <1565915925-21009-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_175726_645297_18E3B132 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable i.MX8MM cpu-idle using generic ARM cpu-idle driver, 2 states
are supported, details as below:

root@imx8mmevk:~# cat /sys/devices/system/cpu/cpu0/cpuidle/state0/name
WFI
root@imx8mmevk:~# cat /sys/devices/system/cpu/cpu0/cpuidle/state0/usage
3973
root@imx8mmevk:~# cat /sys/devices/system/cpu/cpu0/cpuidle/state1/name
cpu-pd-wait
root@imx8mmevk:~# cat /sys/devices/system/cpu/cpu0/cpuidle/state1/usage
6647

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V5:
	- improve state1 idle name to better match PSCI doc;
	- remove wakeup-latency-us property as it is NOT necessary when entry-latency-us/exit-latency-us
	  exist.
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 94433c53..9b2dc12 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -44,6 +44,19 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		idle-states {
+			entry-method = "psci";
+
+			cpu_pd_wait: cpu-pd-wait {
+				compatible = "arm,idle-state";
+				arm,psci-suspend-param = <0x0010033>;
+				local-timer-stop;
+				entry-latency-us = <1000>;
+				exit-latency-us = <700>;
+				min-residency-us = <2700>;
+			};
+		};
+
 		A53_0: cpu@0 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a53";
@@ -56,6 +69,7 @@
 			nvmem-cells = <&cpu_speed_grade>;
 			nvmem-cell-names = "speed_grade";
 			#cooling-cells = <2>;
+			cpu-idle-states = <&cpu_pd_wait>;
 		};
 
 		A53_1: cpu@1 {
@@ -68,6 +82,7 @@
 			next-level-cache = <&A53_L2>;
 			operating-points-v2 = <&a53_opp_table>;
 			#cooling-cells = <2>;
+			cpu-idle-states = <&cpu_pd_wait>;
 		};
 
 		A53_2: cpu@2 {
@@ -80,6 +95,7 @@
 			next-level-cache = <&A53_L2>;
 			operating-points-v2 = <&a53_opp_table>;
 			#cooling-cells = <2>;
+			cpu-idle-states = <&cpu_pd_wait>;
 		};
 
 		A53_3: cpu@3 {
@@ -92,6 +108,7 @@
 			next-level-cache = <&A53_L2>;
 			operating-points-v2 = <&a53_opp_table>;
 			#cooling-cells = <2>;
+			cpu-idle-states = <&cpu_pd_wait>;
 		};
 
 		A53_L2: l2-cache0 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
