Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8117629817
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 14:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rflyfb2hUWwts1CCqMoRlnTcrQFDH98yrKSqLhBIlao=; b=drZ3NhHhCsz8qH
	gU3E7/lK8Hr3RAaehofACOu5zWt/25bdmKdha9+efJg2bmTVY6Y7qeQJpY6h7/XPxVu133u1NmxYa
	5RrC6eJXfdZwNJkhWpG6NQxtItVWY9xSf0FYKvOWusgDSPkdZ0OboXmG4DKLjM4dDjp1hvTIDPv2g
	/LTif31bdiMazxD59LJzfE4ODvfsUTf6xyeCz/mZ9pKQcJOoMLRm6wkXlJOL02ppQmtgKChE3JyH9
	RHo8NVLj7mwpbI9bAfHLMKFvzr4tqM/TWQZykJCY4//iuFwLOcE5nR2lzScop59OcriGE1nlUS94l
	lB291Dxy0lnpEYT6/EPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU9Mt-0002hQ-3o; Fri, 24 May 2019 12:32:15 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU9Ml-0002h2-VF
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 12:32:09 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 9D5C4213EC;
 Fri, 24 May 2019 14:32:06 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 817B4213CE;
 Fri, 24 May 2019 14:32:06 +0200 (CEST)
Subject: [PATCH v4] arm64: dts: qcom: msm8998: Add PSCI cpuidle low power
 states
To: Niklas Cassel <niklas.cassel@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Amit Kucheria <amit.kucheria@linaro.org>
References: <346cd9f0-583d-f467-83d0-e73768bf5aac@free.fr>
 <20190523214619.GB25133@centauri>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <f9aa108f-cb0a-2cee-7fce-e2803dcadb24@free.fr>
Date: Fri, 24 May 2019 14:32:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190523214619.GB25133@centauri>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Fri May 24 14:32:06 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_053208_300342_00565F74 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jeffrey Hugo <jhugo@codeaurora.org>, MSM <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Andy Gross <agross@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Amit Kucheria <amit.kucheria@linaro.org>

Add device bindings for cpuidle states for cpu devices.

[marc: rebase, fix arm,psci-suspend-param, fix entry-latency-us]
Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
---
Changes from v3:
- Fixup all 4 entry-latency-us (Niklas)
Changes from v2:
- Rebase
- Fixup arm,psci-suspend-param for power-collapse states (otherwise: reboot)
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 50 +++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 412195b9794c..ac6bd32c0e7d 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -78,6 +78,7 @@
 			compatible = "arm,armv8";
 			reg = <0x0 0x0>;
 			enable-method = "psci";
+			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
 			next-level-cache = <&L2_0>;
 			L2_0: l2-cache {
 				compatible = "arm,arch-cache";
@@ -96,6 +97,7 @@
 			compatible = "arm,armv8";
 			reg = <0x0 0x1>;
 			enable-method = "psci";
+			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
 			next-level-cache = <&L2_0>;
 			L1_I_1: l1-icache {
 				compatible = "arm,arch-cache";
@@ -110,6 +112,7 @@
 			compatible = "arm,armv8";
 			reg = <0x0 0x2>;
 			enable-method = "psci";
+			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
 			next-level-cache = <&L2_0>;
 			L1_I_2: l1-icache {
 				compatible = "arm,arch-cache";
@@ -124,6 +127,7 @@
 			compatible = "arm,armv8";
 			reg = <0x0 0x3>;
 			enable-method = "psci";
+			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
 			next-level-cache = <&L2_0>;
 			L1_I_3: l1-icache {
 				compatible = "arm,arch-cache";
@@ -138,6 +142,7 @@
 			compatible = "arm,armv8";
 			reg = <0x0 0x100>;
 			enable-method = "psci";
+			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
 			next-level-cache = <&L2_1>;
 			L2_1: l2-cache {
 				compatible = "arm,arch-cache";
@@ -156,6 +161,7 @@
 			compatible = "arm,armv8";
 			reg = <0x0 0x101>;
 			enable-method = "psci";
+			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
 			next-level-cache = <&L2_1>;
 			L1_I_101: l1-icache {
 				compatible = "arm,arch-cache";
@@ -170,6 +176,7 @@
 			compatible = "arm,armv8";
 			reg = <0x0 0x102>;
 			enable-method = "psci";
+			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
 			next-level-cache = <&L2_1>;
 			L1_I_102: l1-icache {
 				compatible = "arm,arch-cache";
@@ -184,6 +191,7 @@
 			compatible = "arm,armv8";
 			reg = <0x0 0x103>;
 			enable-method = "psci";
+			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
 			next-level-cache = <&L2_1>;
 			L1_I_103: l1-icache {
 				compatible = "arm,arch-cache";
@@ -230,6 +238,48 @@
 				};
 			};
 		};
+
+		idle-states {
+			entry-method = "psci";
+
+			LITTLE_CPU_SLEEP_0: cpu-sleep-0-0 {
+				compatible = "arm,idle-state";
+				idle-state-name = "little-retention";
+				arm,psci-suspend-param = <0x00000002>;
+				entry-latency-us = <81>;
+				exit-latency-us = <86>;
+				min-residency-us = <200>;
+			};
+
+			LITTLE_CPU_SLEEP_1: cpu-sleep-0-1 {
+				compatible = "arm,idle-state";
+				idle-state-name = "little-power-collapse";
+				arm,psci-suspend-param = <0x40000003>;
+				entry-latency-us = <273>;
+				exit-latency-us = <612>;
+				min-residency-us = <1000>;
+				local-timer-stop;
+			};
+
+			BIG_CPU_SLEEP_0: cpu-sleep-1-0 {
+				compatible = "arm,idle-state";
+				idle-state-name = "big-retention";
+				arm,psci-suspend-param = <0x00000002>;
+				entry-latency-us = <79>;
+				exit-latency-us = <82>;
+				min-residency-us = <200>;
+			};
+
+			BIG_CPU_SLEEP_1: cpu-sleep-1-1 {
+				compatible = "arm,idle-state";
+				idle-state-name = "big-power-collapse";
+				arm,psci-suspend-param = <0x40000003>;
+				entry-latency-us = <336>;
+				exit-latency-us = <525>;
+				min-residency-us = <1000>;
+				local-timer-stop;
+			};
+		};
 	};
 
 	firmware {
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
