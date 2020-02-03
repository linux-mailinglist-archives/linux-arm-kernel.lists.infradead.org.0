Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B8A150785
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 14:39:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jFm5c+bMdKgXGCR6FJNUIOLY0WyZ1x3JXEaXSLT6N/Y=; b=IBi4aNB2bRhlfD1aumKkklAoxY
	o96J5VH2Kqr0DZ/I9TSw6ImHIvYy60ZJ7cEJHm61pi7DwkZYqqathyYm5OxruQFsRo4NgtJSd3bI+
	M5xc71oSlkZV8JKOoeiSqsAVu4DpFj7H11tWMnG0AyvhTwqgkdgvLq98rsVSpw3I4d2ynQ5EbIZ1s
	pxgz7I/uben2AP2FX6C9QjC4oAd06Vf2UREBkmGlWCDAQ3gwJTvFfTAfnGVvgStqmCs5UFJ8Sa52f
	WXuJl1/1PSAcm/CueTa+n2WTub8CQe/Pqw4yz0qzz0ahqjhZDF8fHHfgMxHpBi7h93t0V98o2VIyI
	4+Efp1dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iybwE-0005s6-Kq; Mon, 03 Feb 2020 13:38:54 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iybvE-0004QY-78
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 13:37:55 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580737072; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=YMTlRIPexu0skLVCLXIuseHdossx493lOSgptmPXffc=;
 b=Ahs57Uc+l7/wacBMmyy1s8h+HPxDue5CoaFw2iSin44v14Fb7KZE9yy4Dxslmjj9haEu5ojn
 JO3nxGem+z+q2QhmvAheBCkvbreFklAXJXASoEgzUPiFASnCmmRsmJdc6qyDUdViR/LgvLM+
 OPLcIZVtQGcVHvUkNueWeS8KAYI=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e38222e.7fd1b19975e0-smtp-out-n02;
 Mon, 03 Feb 2020 13:37:50 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 8A00CC447A3; Mon,  3 Feb 2020 13:37:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mkshah-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: mkshah)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6696DC447B6;
 Mon,  3 Feb 2020 13:37:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6696DC447B6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=mkshah@codeaurora.org
From: Maulik Shah <mkshah@codeaurora.org>
To: swboyd@chromium.org, agross@kernel.org, david.brown@linaro.org,
 sudeep.holla@arm.com, Lorenzo.Pieralisi@arm.com
Subject: [PATCH v3 7/7] arm64: dts: qcom: sc7180: Convert to the hierarchical
 CPU topology layout
Date: Mon,  3 Feb 2020 19:05:40 +0530
Message-Id: <1580736940-6985-8-git-send-email-mkshah@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580736940-6985-1-git-send-email-mkshah@codeaurora.org>
References: <1580736940-6985-1-git-send-email-mkshah@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_053752_341844_508A883B 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maulik Shah <mkshah@codeaurora.org>, lsrao@codeaurora.org,
 dianders@chromium.org, rnayak@codeaurora.org, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 evgreen@chromium.org, bjorn.andersson@linaro.org, ilina@codeaurora.org,
 ulf.hansson@linaro.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To enable the OS to manage last-man standing activities for a CPU, while
an idle state for a group of CPUs is selected, let's convert the sc7180
platform into using the hierarchical CPU topology layout.

Signed-off-by: Maulik Shah <mkshah@codeaurora.org>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 105 ++++++++++++++++++++++++++---------
 1 file changed, 80 insertions(+), 25 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 0aa0ced..c366d10 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -86,9 +86,8 @@
 			compatible = "arm,armv8";
 			reg = <0x0 0x0>;
 			enable-method = "psci";
-			cpu-idle-states = <&LITTLE_CPU_SLEEP_0
-					   &LITTLE_CPU_SLEEP_1
-					   &CLUSTER_SLEEP_0>;
+			power-domains = <&CPU_PD0>;
+			power-domain-names = "psci";
 			next-level-cache = <&L2_0>;
 			#cooling-cells = <2>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
@@ -106,9 +105,8 @@
 			compatible = "arm,armv8";
 			reg = <0x0 0x100>;
 			enable-method = "psci";
-			cpu-idle-states = <&LITTLE_CPU_SLEEP_0
-					   &LITTLE_CPU_SLEEP_1
-					   &CLUSTER_SLEEP_0>;
+			power-domains = <&CPU_PD1>;
+			power-domain-names = "psci";
 			next-level-cache = <&L2_100>;
 			#cooling-cells = <2>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
@@ -123,9 +121,8 @@
 			compatible = "arm,armv8";
 			reg = <0x0 0x200>;
 			enable-method = "psci";
-			cpu-idle-states = <&LITTLE_CPU_SLEEP_0
-					   &LITTLE_CPU_SLEEP_1
-					   &CLUSTER_SLEEP_0>;
+			power-domains = <&CPU_PD2>;
+			power-domain-names = "psci";
 			next-level-cache = <&L2_200>;
 			#cooling-cells = <2>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
@@ -140,9 +137,8 @@
 			compatible = "arm,armv8";
 			reg = <0x0 0x300>;
 			enable-method = "psci";
-			cpu-idle-states = <&LITTLE_CPU_SLEEP_0
-					   &LITTLE_CPU_SLEEP_1
-					   &CLUSTER_SLEEP_0>;
+			power-domains = <&CPU_PD3>;
+			power-domain-names = "psci";
 			next-level-cache = <&L2_300>;
 			#cooling-cells = <2>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
@@ -157,9 +153,8 @@
 			compatible = "arm,armv8";
 			reg = <0x0 0x400>;
 			enable-method = "psci";
-			cpu-idle-states = <&LITTLE_CPU_SLEEP_0
-					   &LITTLE_CPU_SLEEP_1
-					   &CLUSTER_SLEEP_0>;
+			power-domains = <&CPU_PD4>;
+			power-domain-names = "psci";
 			next-level-cache = <&L2_400>;
 			#cooling-cells = <2>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
@@ -174,9 +169,8 @@
 			compatible = "arm,armv8";
 			reg = <0x0 0x500>;
 			enable-method = "psci";
-			cpu-idle-states = <&LITTLE_CPU_SLEEP_0
-					   &LITTLE_CPU_SLEEP_1
-					   &CLUSTER_SLEEP_0>;
+			power-domains = <&CPU_PD5>;
+			power-domain-names = "psci";
 			next-level-cache = <&L2_500>;
 			#cooling-cells = <2>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
@@ -191,9 +185,8 @@
 			compatible = "arm,armv8";
 			reg = <0x0 0x600>;
 			enable-method = "psci";
-			cpu-idle-states = <&BIG_CPU_SLEEP_0
-					   &BIG_CPU_SLEEP_1
-					   &CLUSTER_SLEEP_0>;
+			power-domains = <&CPU_PD6>;
+			power-domain-names = "psci";
 			next-level-cache = <&L2_600>;
 			#cooling-cells = <2>;
 			qcom,freq-domain = <&cpufreq_hw 1>;
@@ -208,9 +201,8 @@
 			compatible = "arm,armv8";
 			reg = <0x0 0x700>;
 			enable-method = "psci";
-			cpu-idle-states = <&BIG_CPU_SLEEP_0
-					   &BIG_CPU_SLEEP_1
-					   &CLUSTER_SLEEP_0>;
+			power-domains = <&CPU_PD7>;
+			power-domain-names = "psci";
 			next-level-cache = <&L2_700>;
 			#cooling-cells = <2>;
 			qcom,freq-domain = <&cpufreq_hw 1>;
@@ -264,7 +256,7 @@
 			};
 
 			CLUSTER_SLEEP_0: cluster-sleep-0 {
-				compatible = "arm,idle-state";
+				compatible = "domain-idle-state";
 				idle-state-name = "cluster-power-down";
 				arm,psci-suspend-param = <0x40003444>;
 				entry-latency-us = <3263>;
@@ -375,6 +367,68 @@
 	psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
+
+		CPU_PD0: cpu-pd0 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&LITTLE_CPU_SLEEP_0>,
+					     <&LITTLE_CPU_SLEEP_1>;
+		};
+
+		CPU_PD1: cpu-pd1 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&LITTLE_CPU_SLEEP_0>,
+					     <&LITTLE_CPU_SLEEP_1>;
+		};
+
+		CPU_PD2: cpu-pd2 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&LITTLE_CPU_SLEEP_0>,
+					     <&LITTLE_CPU_SLEEP_1>;
+		};
+
+		CPU_PD3: cpu-pd3 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&LITTLE_CPU_SLEEP_0>,
+					     <&LITTLE_CPU_SLEEP_1>;
+		};
+
+		CPU_PD4: cpu-pd4 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&LITTLE_CPU_SLEEP_0>,
+					     <&LITTLE_CPU_SLEEP_1>;
+		};
+
+		CPU_PD5: cpu-pd5 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&LITTLE_CPU_SLEEP_0>,
+					     <&LITTLE_CPU_SLEEP_1>;
+		};
+
+		CPU_PD6: cpu-pd6 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&BIG_CPU_SLEEP_0>,
+					     <&BIG_CPU_SLEEP_1>;
+		};
+
+		CPU_PD7: cpu-pd7 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&BIG_CPU_SLEEP_0>,
+					     <&BIG_CPU_SLEEP_1>;
+		};
+
+		CLUSTER_PD: cluster-pd {
+			#power-domain-cells = <0>;
+			power-domains = <&apps_rsc>;
+			domain-idle-states = <&CLUSTER_SLEEP_0>;
+		};
 	};
 
 	soc: soc {
@@ -1495,6 +1549,7 @@
 					  <SLEEP_TCS   3>,
 					  <WAKE_TCS    3>,
 					  <CONTROL_TCS 1>;
+			#power-domain-cells = <0>;
 
 			rpmhcc: clock-controller {
 				compatible = "qcom,sc7180-rpmh-clk";
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
