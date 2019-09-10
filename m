Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6FDAE28D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 05:27:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Yz9bx97/Q9unJdlsCGZjTEAYCi9y803SFCoqDWk+1kg=; b=rXmG826vwZcLI072XCnnty05e0
	MeiU6umnyS/eRkrkqarkWKrRRZmlAAISw/mSC1jhFe0kNr0+U5fzgQMdHz1ZicwJWh23pt6EMLzhq
	xdS2vIxHfUOh6XTSzK5sCv3W6f3DdU4jykmI+2jffuSgQfyA+eEth1vK+X0Vto8QcPImi44ITX7sR
	ugpiJ9eUbGJwacPeGLzLvFKR/UUXG0SrK17m/abg1XrPxpcjvpGTwP//aTp1hUwlXPdsMZASgdAK+
	jZ/+QdT4/LcPaVozyXZtXSRUfeq5oUFCVTz6el+eHxjxKOK8my93HQGTJgoisWn06RAxFCjxbezlQ
	t1BfkV7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Wo6-0008Rm-36; Tue, 10 Sep 2019 03:27:06 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Wnf-0008In-Cd
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 03:26:40 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A15AF1A0869;
 Tue, 10 Sep 2019 05:26:35 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 46C9E1A0454;
 Tue, 10 Sep 2019 05:26:30 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 71BA5402BF;
 Tue, 10 Sep 2019 11:26:23 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 leonard.crestez@nxp.com, daniel.baluta@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: imx8mn: Enable cpu-idle driver
Date: Tue, 10 Sep 2019 11:25:18 -0400
Message-Id: <1568129118-31114-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568129118-31114-1-git-send-email-Anson.Huang@nxp.com>
References: <1568129118-31114-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_202639_574385_6A0C9535 
X-CRM114-Status: UNSURE (   6.87  )
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
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
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

Enable i.MX8MN cpu-idle using generic ARM cpu-idle driver, 2 states
are supported, details as below:

root@imx8mnevk:~# cat /sys/devices/system/cpu/cpu0/cpuidle/state0/name
WFI
root@imx8mnevk:~# cat /sys/devices/system/cpu/cpu0/cpuidle/state0/usage
3098
root@imx8mnevk:~# cat /sys/devices/system/cpu/cpu0/cpuidle/state1/name
cpu-pd-wait
root@imx8mnevk:~# cat /sys/devices/system/cpu/cpu0/cpuidle/state1/usage
3078

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 0166f8c..e4efe8d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -43,6 +43,19 @@
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
@@ -54,6 +67,7 @@
 			operating-points-v2 = <&a53_opp_table>;
 			nvmem-cells = <&cpu_speed_grade>;
 			nvmem-cell-names = "speed_grade";
+			cpu-idle-states = <&cpu_pd_wait>;
 		};
 
 		A53_1: cpu@1 {
@@ -65,6 +79,7 @@
 			enable-method = "psci";
 			next-level-cache = <&A53_L2>;
 			operating-points-v2 = <&a53_opp_table>;
+			cpu-idle-states = <&cpu_pd_wait>;
 		};
 
 		A53_2: cpu@2 {
@@ -76,6 +91,7 @@
 			enable-method = "psci";
 			next-level-cache = <&A53_L2>;
 			operating-points-v2 = <&a53_opp_table>;
+			cpu-idle-states = <&cpu_pd_wait>;
 		};
 
 		A53_3: cpu@3 {
@@ -87,6 +103,7 @@
 			enable-method = "psci";
 			next-level-cache = <&A53_L2>;
 			operating-points-v2 = <&a53_opp_table>;
+			cpu-idle-states = <&cpu_pd_wait>;
 		};
 
 		A53_L2: l2-cache0 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
