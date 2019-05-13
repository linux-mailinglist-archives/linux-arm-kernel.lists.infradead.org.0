Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47ECA1BDDF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 21:26:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2ah3CS5VSHddnGF+7kzkaGD/xnPjrOaa0UMck1fx+sA=; b=o1cUwkGf3Igtgq1rll+FC7H6+3
	shG7ns0J4I3ACDPp+efgnYXBvt4KzufQ4EagtsgY65uTaSyNEIysyFmHuqyUy44IrpGAgR41l0Q5L
	DFMy3qjUIpA5hIBATRahtKB4/gRLQ0ZvFJtk2+13hHDuYtVmDO9feOZLT6CYADuR37w6VJlP+o649
	XX8cSh/5mfDFaDuPnW+6gpDfslttrFLzTdbvumimBc/JZ8CkMRd6wi57APG8g0b+t0CrfCBjWmEh/
	wUn8FcS1IRhB2luPoiNa18Q0uby5/ck8EKojW63Md9k1BieJkTwjrNeK+cA3tHb4BrswbOMYX0pQA
	IBsCL7eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQGaY-0005tu-Rw; Mon, 13 May 2019 19:26:18 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQGYC-0001jr-G3
 for linux-arm-kernel@bombadil.infradead.org; Mon, 13 May 2019 19:23:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7AxPd/WiAkEtzi6eC4zcfxrPuKGzl2d+dQ6Z4/Ng9yA=; b=MTrbaEznbgf+H98qWLvM7EzEI
 6RQxReJ8+oGQR6XekYwEd+my2aSbzIwxtUyUeKAx2m8DF1VUgOASB9Q36diBB8b8+iRTHIqWMJWyo
 4dEEIsvKKZOuO0f6rKQYdKSWpbijj6N6//ZBEsXvwPO0W5+5ufs3PxTA6vbLq+AVmocn9X9ZiUGfS
 jnKLFCfoquqLKpM6bm/9U1D/mu6h+mKYmbCHBmXji5n3g+ECPVlVVpzP6KG/VjGRla9Uq1Df5y4FM
 k6mjQWdVKK7Vn99hQfcoXtau2geWjcw+AimjiVBlXCJamlsHZw/DhNTYTVDwSqB26zUeHyxznmvDb
 5DXwuGV3A==;
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQGY8-00010b-Sk
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 19:23:50 +0000
Received: by mail-lj1-x243.google.com with SMTP id m20so316428lji.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 12:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7AxPd/WiAkEtzi6eC4zcfxrPuKGzl2d+dQ6Z4/Ng9yA=;
 b=iguEcn8d2UHmA1BdPS+ybI3lkwBDS3Ab7tjgLTOWKG6wZ7qEdUTtbHKOqgM2Pnvm4B
 Xofw8r8SJPdY+sJxTtVFiOGqhI6kONaT2HlWPLlUPTFxNHUtX5OLL4bifccr+S/yXa3L
 1874f/2ZGLG1PlPpnMLUejT0OAYu+L+O/+Tjquwfhc9n4SfDn/aZgcGK8cGVd1V0uzUf
 PPof97i8Xu9/kDaXfsu5Hm2b0l3KZKU/pEG+zdRjUSm4VqyLizf/dMOcOLG7wEsnVQ0t
 p+FWaZl+/zA11ABliZ+oXMfD7J1aEnNIpgO0Q9nWUTv9CRs6+XpZ0/jLRxkxzf+u27O2
 FmAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7AxPd/WiAkEtzi6eC4zcfxrPuKGzl2d+dQ6Z4/Ng9yA=;
 b=JCYv9nbmxTo0snKnFPza9FviWbQTxU/Lxe4MiiFJk/nB+m/lRBa7AGuThBqBLEIdiz
 x8zYVoCXOpmrd2DJ3VfmugXx/p/Bnz+sdea7SGkcfj4zMTji57/AfAyvfVI4ob9OIcF5
 QGnPIw3zNbQQYZqTW79aQCmCItEGWt5qSSG2Pwgcn66w+XZsz8hsuKDB6vR1k3Q/TpzY
 VeOzSc3PmVR2zD/M3aE48EJF4F8KB+EpIpLQzYZtTdxC0qqABqrs5OkvjOhOjpkWNOfU
 X19Y/gRPtwG7hgKfCTRvZxfoUCVFJEce7SeET/m3UMqiEIJORNy+0hLe2gvGYVTS+n22
 zTcQ==
X-Gm-Message-State: APjAAAVKT7SRdE5y/HqEEbe1C9Xz7tgsEVO+aCXL+YAdD4AAfAWz5Wcc
 XLVGsj2J6+SjG7pVs/eIAeP9OA==
X-Google-Smtp-Source: APXvYqwxMWB7/4WyFA59ijUF+6dp1ja8lpTuNpIG+hVBnaOO/pbLdkkOZsUgbqrpPxXYczj1YuOnIA==
X-Received: by 2002:a2e:309:: with SMTP id 9mr15762950ljd.114.1557775419346;
 Mon, 13 May 2019 12:23:39 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id q21sm3449365lfa.84.2019.05.13.12.23.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 12:23:38 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 18/18] arm64: dts: hikey: Convert to the hierarchical CPU
 topology layout
Date: Mon, 13 May 2019 21:23:00 +0200
Message-Id: <20190513192300.653-19-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513192300.653-1-ulf.hansson@linaro.org>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_152348_942937_D9E08B7D 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 Lina Iyer <ilina@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>, Wei Xu <xuwei5@hisilicon.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To enable the OS to manage last-man standing activities for a CPU, while an
idle state for a group of CPUs is selected, let's convert the Hikey
platform into using the hierarchical CPU topology layout.

Cc: Wei Xu <xuwei5@hisilicon.com>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes:
	- None.

---
 arch/arm64/boot/dts/hisilicon/hi6220.dtsi | 87 ++++++++++++++++++++---
 1 file changed, 76 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
index 108e2a4227f6..36ff460f428f 100644
--- a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
@@ -20,6 +20,64 @@
 	psci {
 		compatible = "arm,psci-0.2";
 		method = "smc";
+
+		CPU_PD0: cpu-pd0 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD0>;
+			domain-idle-states = <&CPU_SLEEP>;
+		};
+
+		CPU_PD1: cpu-pd1 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD0>;
+			domain-idle-states = <&CPU_SLEEP>;
+		};
+
+		CPU_PD2: cpu-pd2 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD0>;
+			domain-idle-states = <&CPU_SLEEP>;
+		};
+
+		CPU_PD3: cpu-pd3 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD0>;
+			domain-idle-states = <&CPU_SLEEP>;
+		};
+
+		CPU_PD4: cpu-pd4 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD1>;
+			domain-idle-states = <&CPU_SLEEP>;
+		};
+
+		CPU_PD5: cpu-pd5 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD1>;
+			domain-idle-states = <&CPU_SLEEP>;
+		};
+
+		CPU_PD6: cpu-pd6 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD1>;
+			domain-idle-states = <&CPU_SLEEP>;
+		};
+
+		CPU_PD7: cpu-pd7 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD1>;
+			domain-idle-states = <&CPU_SLEEP>;
+		};
+
+		CLUSTER_PD0: cluster-pd0 {
+			#power-domain-cells = <0>;
+			domain-idle-states = <&CLUSTER_SLEEP>;
+		};
+
+		CLUSTER_PD1: cluster-pd1 {
+			#power-domain-cells = <0>;
+			domain-idle-states = <&CLUSTER_SLEEP>;
+		};
 	};
 
 	cpus {
@@ -70,9 +128,8 @@
 			};
 
 			CLUSTER_SLEEP: cluster-sleep {
-				compatible = "arm,idle-state";
-				local-timer-stop;
-				arm,psci-suspend-param = <0x1010000>;
+				compatible = "domain-idle-state";
+				arm,psci-suspend-param = <0x1000000>;
 				entry-latency-us = <1000>;
 				exit-latency-us = <700>;
 				min-residency-us = <2700>;
@@ -88,9 +145,10 @@
 			next-level-cache = <&CLUSTER0_L2>;
 			clocks = <&stub_clock 0>;
 			operating-points-v2 = <&cpu_opp_table>;
-			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <311>;
+			power-domains = <&CPU_PD0>;
+			power-domain-names = "psci";
 		};
 
 		cpu1: cpu@1 {
@@ -101,9 +159,10 @@
 			next-level-cache = <&CLUSTER0_L2>;
 			clocks = <&stub_clock 0>;
 			operating-points-v2 = <&cpu_opp_table>;
-			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <311>;
+			power-domains = <&CPU_PD1>;
+			power-domain-names = "psci";
 		};
 
 		cpu2: cpu@2 {
@@ -114,9 +173,10 @@
 			next-level-cache = <&CLUSTER0_L2>;
 			clocks = <&stub_clock 0>;
 			operating-points-v2 = <&cpu_opp_table>;
-			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <311>;
+			power-domains = <&CPU_PD2>;
+			power-domain-names = "psci";
 		};
 
 		cpu3: cpu@3 {
@@ -127,9 +187,10 @@
 			next-level-cache = <&CLUSTER0_L2>;
 			clocks = <&stub_clock 0>;
 			operating-points-v2 = <&cpu_opp_table>;
-			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <311>;
+			power-domains = <&CPU_PD3>;
+			power-domain-names = "psci";
 		};
 
 		cpu4: cpu@100 {
@@ -140,9 +201,10 @@
 			next-level-cache = <&CLUSTER1_L2>;
 			clocks = <&stub_clock 0>;
 			operating-points-v2 = <&cpu_opp_table>;
-			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <311>;
+			power-domains = <&CPU_PD4>;
+			power-domain-names = "psci";
 		};
 
 		cpu5: cpu@101 {
@@ -153,9 +215,10 @@
 			next-level-cache = <&CLUSTER1_L2>;
 			clocks = <&stub_clock 0>;
 			operating-points-v2 = <&cpu_opp_table>;
-			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <311>;
+			power-domains = <&CPU_PD5>;
+			power-domain-names = "psci";
 		};
 
 		cpu6: cpu@102 {
@@ -166,9 +229,10 @@
 			next-level-cache = <&CLUSTER1_L2>;
 			clocks = <&stub_clock 0>;
 			operating-points-v2 = <&cpu_opp_table>;
-			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <311>;
+			power-domains = <&CPU_PD6>;
+			power-domain-names = "psci";
 		};
 
 		cpu7: cpu@103 {
@@ -179,9 +243,10 @@
 			next-level-cache = <&CLUSTER1_L2>;
 			clocks = <&stub_clock 0>;
 			operating-points-v2 = <&cpu_opp_table>;
-			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <311>;
+			power-domains = <&CPU_PD7>;
+			power-domain-names = "psci";
 		};
 
 		CLUSTER0_L2: l2-cache0 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
