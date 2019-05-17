Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DF521349
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 06:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4QczUKbPBXy4t7OsQ8tuMvlNBu9CiUgqftBKQEKowB8=; b=Xd+
	ysmVhcRQmwsSAY74HIDBj3BaQfllzJKUzmxVnmfu3420svsSjK8mJOm76roivPQu10JX+U4mezy0I
	hpTyg6rxC6m/rNDNXFuxpBl3sGe+joDgneF5eMj+tMPgswvZ6dWyf9jba7mbSfbbQ2cYwl0nQantv
	ejnvWk7WJEpiOH9i7/C6iBDNgyeSYeMZotOj54FXRB4Us7g6vJWrY9QBB+Bw41uqoBkRfitIqs/O1
	+W8wRxE2oRXG+Waze6vZUvPkkl0t+tbmqsyMhyxJJLXI5TSXBSfEMlWRbwd1YLR0vHcDpXxGvwxlT
	qEOeGkUvPo+EK/CObWGE2ziy/sCF09g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRUuy-0005SF-6o; Fri, 17 May 2019 04:56:28 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRUuo-0005Qs-LL
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 04:56:22 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1FE9C200015;
 Fri, 17 May 2019 06:56:14 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 61AA9200005;
 Fri, 17 May 2019 06:56:10 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 7596E40250;
 Fri, 17 May 2019 12:56:05 +0800 (SGT)
From: Ran Wang <ran.wang_1@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2] arm64: dts: ls1028a: Fix CPU idle fail.
Date: Fri, 17 May 2019 12:57:53 +0800
Message-Id: <20190517045753.3709-1-ran.wang_1@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_215618_837539_1BC0116B 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Ran Wang <ran.wang_1@nxp.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PSCI spec define 1st parameter's bit 16 of function CPU_SUSPEND to
indicate CPU State Type: 0 for standby, 1 for power down. In this
case, we want to select standby for CPU idle feature. But current
setting wrongly select power down and cause CPU SUSPEND fail every
time. Need this fix.

Fixes: 8897f3255c9c ("arm64: dts: Add support for NXP LS1028A SoC")
Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi |   18 +++++++++---------
 1 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index b045812..bf7f845 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -28,7 +28,7 @@
 			enable-method = "psci";
 			clocks = <&clockgen 1 0>;
 			next-level-cache = <&l2>;
-			cpu-idle-states = <&CPU_PH20>;
+			cpu-idle-states = <&CPU_PW20>;
 		};
 
 		cpu1: cpu@1 {
@@ -38,7 +38,7 @@
 			enable-method = "psci";
 			clocks = <&clockgen 1 0>;
 			next-level-cache = <&l2>;
-			cpu-idle-states = <&CPU_PH20>;
+			cpu-idle-states = <&CPU_PW20>;
 		};
 
 		l2: l2-cache {
@@ -53,13 +53,13 @@
 		 */
 		entry-method = "arm,psci";
 
-		CPU_PH20: cpu-ph20 {
-			compatible = "arm,idle-state";
-			idle-state-name = "PH20";
-			arm,psci-suspend-param = <0x00010000>;
-			entry-latency-us = <1000>;
-			exit-latency-us = <1000>;
-			min-residency-us = <3000>;
+		CPU_PW20: cpu-pw20 {
+			  compatible = "arm,idle-state";
+			  idle-state-name = "PW20";
+			  arm,psci-suspend-param = <0x0>;
+			  entry-latency-us = <2000>;
+			  exit-latency-us = <2000>;
+			  min-residency-us = <6000>;
 		};
 	};
 
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
