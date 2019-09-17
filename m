Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEA0B4854
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 09:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WgBXonCDdKgirT1F1rFBDkMY/BfguAllWzjKuGXIqGg=; b=pAE
	0qVRcEwMnqhFHk8Ady6SXzvQ7LWHWTrWeDFOdWbjQ+YXCqQXgU4pAIK1Q6x/2kvTQbUF7I1Xe320C
	4wuCmlMg0QXtjuwqHhbW3zw4oWL4rUUCOXuBmFnurXDIkRHNMgAzR1UK8Hp7Thx1ub6o55mappBFz
	jJKN/g2M6tqZYEznX3h5hWwEVUFksn6NxE7Xj5AgwXkM9NFuOebke7yj3l1UnJrSzUXfHoeE/qEE3
	hmz5gh6vGm+TlpWQHyr7bq6+Vo9u2pxedx58Mo/Ay5HUl7HGASh8UmeoX6dQTVh3yhTcqFqV464fq
	7BkEZ3YGX0il1q5542xDY7TEiUyjiWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA7yf-00089q-Ef; Tue, 17 Sep 2019 07:32:45 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA7yR-00089X-8i
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 07:32:33 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 74BF8200676;
 Tue, 17 Sep 2019 09:32:29 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 05C9A200672;
 Tue, 17 Sep 2019 09:32:25 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 830C2402E6;
 Tue, 17 Sep 2019 15:32:19 +0800 (SGT)
From: Ran Wang <ran.wang_1@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] arm64: dts: lx2160a: Correct CPU core idle state name
Date: Tue, 17 Sep 2019 15:33:56 +0800
Message-Id: <20190917073357.5895-1-ran.wang_1@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_003231_586020_2EC1387D 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Ran Wang <ran.wang_1@nxp.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

lx2160a support PW15 but not PW20, correct name to avoid confusing.

Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 36 +++++++++++++-------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
index 408e0ec..b032f38 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
@@ -33,7 +33,7 @@
 			i-cache-line-size = <64>;
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster0_l2>;
-			cpu-idle-states = <&cpu_pw20>;
+			cpu-idle-states = <&cpu_pw15>;
 		};
 
 		cpu@1 {
@@ -49,7 +49,7 @@
 			i-cache-line-size = <64>;
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster0_l2>;
-			cpu-idle-states = <&cpu_pw20>;
+			cpu-idle-states = <&cpu_pw15>;
 		};
 
 		cpu@100 {
@@ -65,7 +65,7 @@
 			i-cache-line-size = <64>;
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster1_l2>;
-			cpu-idle-states = <&cpu_pw20>;
+			cpu-idle-states = <&cpu_pw15>;
 		};
 
 		cpu@101 {
@@ -81,7 +81,7 @@
 			i-cache-line-size = <64>;
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster1_l2>;
-			cpu-idle-states = <&cpu_pw20>;
+			cpu-idle-states = <&cpu_pw15>;
 		};
 
 		cpu@200 {
@@ -97,7 +97,7 @@
 			i-cache-line-size = <64>;
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster2_l2>;
-			cpu-idle-states = <&cpu_pw20>;
+			cpu-idle-states = <&cpu_pw15>;
 		};
 
 		cpu@201 {
@@ -113,7 +113,7 @@
 			i-cache-line-size = <64>;
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster2_l2>;
-			cpu-idle-states = <&cpu_pw20>;
+			cpu-idle-states = <&cpu_pw15>;
 		};
 
 		cpu@300 {
@@ -129,7 +129,7 @@
 			i-cache-line-size = <64>;
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster3_l2>;
-			cpu-idle-states = <&cpu_pw20>;
+			cpu-idle-states = <&cpu_pw15>;
 		};
 
 		cpu@301 {
@@ -145,7 +145,7 @@
 			i-cache-line-size = <64>;
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster3_l2>;
-			cpu-idle-states = <&cpu_pw20>;
+			cpu-idle-states = <&cpu_pw15>;
 		};
 
 		cpu@400 {
@@ -161,7 +161,7 @@
 			i-cache-line-size = <64>;
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster4_l2>;
-			cpu-idle-states = <&cpu_pw20>;
+			cpu-idle-states = <&cpu_pw15>;
 		};
 
 		cpu@401 {
@@ -177,7 +177,7 @@
 			i-cache-line-size = <64>;
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster4_l2>;
-			cpu-idle-states = <&cpu_pw20>;
+			cpu-idle-states = <&cpu_pw15>;
 		};
 
 		cpu@500 {
@@ -193,7 +193,7 @@
 			i-cache-line-size = <64>;
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster5_l2>;
-			cpu-idle-states = <&cpu_pw20>;
+			cpu-idle-states = <&cpu_pw15>;
 		};
 
 		cpu@501 {
@@ -209,7 +209,7 @@
 			i-cache-line-size = <64>;
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster5_l2>;
-			cpu-idle-states = <&cpu_pw20>;
+			cpu-idle-states = <&cpu_pw15>;
 		};
 
 		cpu@600 {
@@ -225,7 +225,7 @@
 			i-cache-line-size = <64>;
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster6_l2>;
-			cpu-idle-states = <&cpu_pw20>;
+			cpu-idle-states = <&cpu_pw15>;
 		};
 
 		cpu@601 {
@@ -241,7 +241,7 @@
 			i-cache-line-size = <64>;
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster6_l2>;
-			cpu-idle-states = <&cpu_pw20>;
+			cpu-idle-states = <&cpu_pw15>;
 		};
 
 		cpu@700 {
@@ -257,7 +257,7 @@
 			i-cache-line-size = <64>;
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster7_l2>;
-			cpu-idle-states = <&cpu_pw20>;
+			cpu-idle-states = <&cpu_pw15>;
 		};
 
 		cpu@701 {
@@ -273,7 +273,7 @@
 			i-cache-line-size = <64>;
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster7_l2>;
-			cpu-idle-states = <&cpu_pw20>;
+			cpu-idle-states = <&cpu_pw15>;
 		};
 
 		cluster0_l2: l2-cache0 {
@@ -340,9 +340,9 @@
 			cache-level = <2>;
 		};
 
-		cpu_pw20: cpu-pw20 {
+		cpu_pw15: cpu-pw15 {
 			compatible = "arm,idle-state";
-			idle-state-name = "PW20";
+			idle-state-name = "PW15";
 			arm,psci-suspend-param = <0x0>;
 			entry-latency-us = <2000>;
 			exit-latency-us = <2000>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
