Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3288E8D3E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 17:49:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ya6T2Mlkwugo7KD+qtateje53ktR/OsTBXdi02m+T7E=; b=bQ2Y2+6LwLJ2Gl4VBcstCVuB+o
	lcJENZT9Yw1gzcRd+2cmicgZM2Th6uqg7QXUD4wGRVuqG6mf67Sku4uvTD5fPeWTMIThbehdWRwdD
	IjpJgPHFOGqCbOVupNkMaHtlEh48PfeRS6noOZywjDz2EW46hLCBeW2CJF8fy9R34arJbVurTS92e
	wx1MI753ZVnuwiEcdlVEDMaen9ScdZEisVnl2/ishNJjnjxairNjUy7Sy27ezpzBVi+A+T7akI1d8
	+kEyKlN3bDxsrxNm1ymwE2IUnL+E/ssh+LZjgqVP7qTRuZIGd71zhS8JZtsOY0GHoZUwNCOXuxu2q
	aQ4nFEdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUgC-0007Th-2M; Tue, 29 Oct 2019 16:49:12 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUcE-0003FZ-Ke
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:45:12 +0000
Received: by mail-lf1-x144.google.com with SMTP id j14so6106463lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 09:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vwZc8kmFy7PANbXlKQ6pebxa/rQt81fGNlatlAwVkyY=;
 b=fOtx+sxl1X6dXEMgiZzjAp5+wekh0iKtzO7J+xgzDvSNTad4qHfvVwMUAKQhAIQ8jf
 Ekd2ueLYicVs3TL/Su+e0oV8sGSqrcqChCs+kglR/KfEM8yNm5XCIJiZElqvYXJLlNRu
 rsbE4lCNknRG6peGNSu3DERrS+Wd1oPFG6FWPvHOZxQGapfN/6lVMrJq1WfG+hZDld6V
 WgFy5gf+RRh6SEierUrRfKLj2smidEY2EgDnCKGsg23iaz6hPer8iczkGSDYb6iHsze0
 8DyoQtspp0iZSrYX7pWVw1f0BJVkeTCFWfp9XhfTmL2YRdedbE3ZE50LbhvOtAYT3CJB
 7fwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vwZc8kmFy7PANbXlKQ6pebxa/rQt81fGNlatlAwVkyY=;
 b=Ho8MSxF/6VHYqhU9h4f7leV4HkJIX1gzPdRf02nDharAsdjTtCz7aKuFf44bsOTgux
 efjDCcbQockwkTiHN8jBL0jbx8fasl0zytgyd+xXJFbA/6HgH8hl/+FjnArxYnuFO+ym
 22IrUnAlOFPMhUl/yF1988KUB8OyjO9tPJ6yB6nbUU6t6kRgSFYyiscE9+Yz2BDFGOjt
 yCzTtiTEIAEKyVgLaNyvtW90m6PvYH6bnNZ1P201JfeULBZp6iQXedRSbgiyDZtcCOIp
 7FE7pjmpkz0jdE5P54zBbkEL42k7XCYqKxb7dPhcRFA7wIjw9NrDTFXrKyWJfh8ryqJz
 GxTw==
X-Gm-Message-State: APjAAAUdpikPro0yDdaOhUcc2c3hH8/6q4iigdZwRaGyKOsr5c3Noxg+
 ZO+Tf8qIZo4tkS6OuXpSuE4KVQ==
X-Google-Smtp-Source: APXvYqzM3lnQ7Juqkap735jfK5Im438rtYjMAQLaGTdKg6f8+RrokngHQ+4cn+wEcm+cJHs45nW/6g==
X-Received: by 2002:a19:7511:: with SMTP id y17mr3184754lfe.19.1572367504558; 
 Tue, 29 Oct 2019 09:45:04 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id f28sm2048161lfh.35.2019.10.29.09.45.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 09:45:03 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH v2 13/13] arm64: dts: Convert to the hierarchical CPU topology
 layout for MSM8916
Date: Tue, 29 Oct 2019 17:44:38 +0100
Message-Id: <20191029164438.17012-14-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029164438.17012-1-ulf.hansson@linaro.org>
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_094506_897757_7DC04CE1 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Lina Iyer <lina.iyer@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To enable the OS to better support PSCI OS initiated CPU suspend mode,
let's convert from the flattened layout to the hierarchical layout.

In the hierarchical layout, let's create a power domain provider per CPU
and describe the idle states for each CPU inside the power domain provider
node. To group the CPUs into a cluster, let's add another power domain
provider and make it act as the master domain. Note that, the CPU's idle
states remains compatible with "arm,idle-state", while the cluster's idle
state becomes compatible with "domain-idle-state".

Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v2:
	- Dropped CC of Andy, due to wrong email anyway. Instead include him for
	the series.

---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 57 +++++++++++++++++++++++++--
 1 file changed, 53 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 5ea9fb8f2f87..1ece0c763592 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -102,10 +102,11 @@
 			reg = <0x0>;
 			next-level-cache = <&L2_0>;
 			enable-method = "psci";
-			cpu-idle-states = <&CPU_SLEEP_0>;
 			clocks = <&apcs>;
 			operating-points-v2 = <&cpu_opp_table>;
 			#cooling-cells = <2>;
+			power-domains = <&CPU_PD0>;
+			power-domain-names = "psci";
 		};
 
 		CPU1: cpu@1 {
@@ -114,10 +115,11 @@
 			reg = <0x1>;
 			next-level-cache = <&L2_0>;
 			enable-method = "psci";
-			cpu-idle-states = <&CPU_SLEEP_0>;
 			clocks = <&apcs>;
 			operating-points-v2 = <&cpu_opp_table>;
 			#cooling-cells = <2>;
+			power-domains = <&CPU_PD1>;
+			power-domain-names = "psci";
 		};
 
 		CPU2: cpu@2 {
@@ -126,10 +128,11 @@
 			reg = <0x2>;
 			next-level-cache = <&L2_0>;
 			enable-method = "psci";
-			cpu-idle-states = <&CPU_SLEEP_0>;
 			clocks = <&apcs>;
 			operating-points-v2 = <&cpu_opp_table>;
 			#cooling-cells = <2>;
+			power-domains = <&CPU_PD2>;
+			power-domain-names = "psci";
 		};
 
 		CPU3: cpu@3 {
@@ -138,10 +141,11 @@
 			reg = <0x3>;
 			next-level-cache = <&L2_0>;
 			enable-method = "psci";
-			cpu-idle-states = <&CPU_SLEEP_0>;
 			clocks = <&apcs>;
 			operating-points-v2 = <&cpu_opp_table>;
 			#cooling-cells = <2>;
+			power-domains = <&CPU_PD3>;
+			power-domain-names = "psci";
 		};
 
 		L2_0: l2-cache {
@@ -161,12 +165,57 @@
 				min-residency-us = <2000>;
 				local-timer-stop;
 			};
+
+			CLUSTER_RET: cluster-retention {
+				compatible = "domain-idle-state";
+				arm,psci-suspend-param = <0x41000012>;
+				entry-latency-us = <500>;
+				exit-latency-us = <500>;
+				min-residency-us = <2000>;
+			};
+
+			CLUSTER_PWRDN: cluster-gdhs {
+				compatible = "domain-idle-state";
+				arm,psci-suspend-param = <0x41000032>;
+				entry-latency-us = <2000>;
+				exit-latency-us = <2000>;
+				min-residency-us = <6000>;
+			};
 		};
 	};
 
 	psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
+
+		CPU_PD0: cpu-pd0 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&CPU_SLEEP_0>;
+		};
+
+		CPU_PD1: cpu-pd1 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&CPU_SLEEP_0>;
+		};
+
+		CPU_PD2: cpu-pd2 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&CPU_SLEEP_0>;
+		};
+
+		CPU_PD3: cpu-pd3 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&CPU_SLEEP_0>;
+		};
+
+		CLUSTER_PD: cluster-pd {
+			#power-domain-cells = <0>;
+			domain-idle-states = <&CLUSTER_RET>, <&CLUSTER_PWRDN>;
+		};
 	};
 
 	pmu {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
